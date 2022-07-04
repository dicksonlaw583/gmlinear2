///@func rmn_qr(M, Q, R)
///@arg {Array<Array<Real>>} M The mxn matrix to decompose
///@arg {Array<Array<Real>>} Q The mxm matrix to store the orthogonal part in
///@arg {Array<Array<Real>>} R The mxn matrix to store the upper-triangular part in
///@desc Perform QR decomposition on an mxn matrix M.
function rmn_qr(M, Q, R) {
	GMLINEAR_INLINE
	var m = array_length(M);
	var n = array_length(M[0]);
	// Reset Q to identity
	for (var i = m-1; i >= 0; --i) {
		var Q_i = Q[i];
		for (var j = m-1; j >= 0; --j) {
			Q_i[@j] = (i == j) ? 1 : 0;
		}
	}
	// Copy M to R
	rmn_clone(M, R);
	// For each column of R
	var Rcol = array_create(m, 0);
	var Qhh = array_create(m);
	for (var i = m-1; i >= 0; --i) {
		Qhh[@i] = array_create(m, 0);
	}
	for (var c = 0; c < n; ++c) {
		// Get column and alpha
		var alpha = 0;
		for (var i = m-1; i >= 0; --i) {
			if (i >= c) {
				var R_i_c = R[i][c];
				alpha += R_i_c*R_i_c;
				Rcol[@i] = R_i_c;
			} else {
				Rcol[@i] = 0;
			}
		}
		
		if (alpha > 0) {
			alpha = sqrt(alpha);
			// Subtract current component by alpha, then turn to unit
			Rcol[@c] -= alpha;
			var beta = 0;
			for (var i = m-1; i >= c; --i) {
				beta += sqr(Rcol[i]);
			}
			if (beta > 0) {
				beta = 1/sqrt(beta);
				for (var i = m-1; i >= c; --i) {
					Rcol[@i] *= beta;
				}
				// Build Householder matrix
				for (var i = m-1; i >= 0; --i) {
					for (var j = i; j >= 0; --j) {
						if (i == j) {
							Qhh[i][@j] = 1-2*sqr(Rcol[i]);
						} else {
							var Qhh_i_j = -2*Rcol[i]*Rcol[j];
							Qhh[i][@j] = Qhh_i_j;
							Qhh[j][@i] = Qhh_i_j;
						}
					}
				}
				// Multiply Householder matrix into R (with special fudge for entries known to be 0)
				rmn_multiply(Qhh, R, R);
				for (var i = m-1; i > c; --i) {
					R[i][@c] = 0;
				}
				// Multiply Q by Householder matrix
				rnn_multiply(Q, Qhh, Q);
			}
		}
	}
}
#macro rnn_qr rmn_qr

///@func rnn_lu(M, L, U)
///@arg {Array<Array<Real>>} M The original nxn matrix
///@arg {Array<Array<Real>>} L The target nxn matrix for lower-triangular component
///@arg {Array<Array<Real>>} U The target nxn matrix for upper-triangular component
///@desc Perform LU decomposition on an nxn matrix M and return whether successful.
function rnn_lu(M, L, U) {
	GMLINEAR_INLINE
	var n = array_length(M);
	
	// Make sure there are no 0s on M's diagonal
	for (var i = n-1; i >= 0; --i) {
		if (M[i][i] == 0) {
			return false;
		}
	}
	
	// Start U as M
	rnn_clone(M, U);
	// Start L as identity
	for (var i = n-1; i >= 0; --i) {
		var L_i = L[i];
		for (var j = n-1; j >= 0; --j) {
			L_i[@j] = (i == j) ? 1 : 0;
		}
	}
	
	// For each column
	for (var c = 0; c < n; ++c) {
		// Zero out part under the diagonal using a Gauss-Jordan row step
		// Record the multiplier in L
		var U_c_c = U[c][c];
		if (U_c_c == 0) {
			return false;
		} else {
			for (var r = c+1; r < n; ++r) {
				var m = U[r][c]/U_c_c;
				U[r][@c] = 0;
				for (var i = c+1; i < n; ++i) {
					U[r][@i] -= m*U[c][i];
				}
				L[r][@c] = m;
			}
		}
	}
	
	// Done successfully
	return true;
}

///@func rnn_palu(M, P, L, U)
///@arg {Array<Array<Real>>} M The original nxn matrix
///@arg {Array<Array<Real>>} P The target nxn matrix for permutation
///@arg {Array<Array<Real>>} L The target nxn matrix for lower-triangular component
///@arg {Array<Array<Real>>} U The target nxn matrix for upper-triangular component
///@desc Perform PA=LU decomposition on an nxn matrix M.
function rnn_palu(M, P, L, U) {
	GMLINEAR_INLINE
	var n = array_length(M);
	var temp = array_create(n);
	
	// Start U as M
	rnn_clone(M, U);
	// Start P and L as identity
	for (var i = n-1; i >= 0; --i) {
		var P_i = P[i];
		var L_i = L[i];
		for (var j = n-1; j >= 0; --j) {
			var P_i_j = (i == j) ? 1 : 0;
			P_i[@j] = P_i_j;
			L_i[@j] = P_i_j;
		}
	}
	
	// For each column
	for (var c = 0; c < n; ++c) {
		// Pull row with highest column value by absolute value to the top
		var b = c;
		var bv = abs(U[c][c]);
		for (var r = n-1; r > c; --r) {
			var aUrc = abs(U[r][c]);
			if (aUrc > bv) {
				b = r;
				bv = aUrc;
			}
		}
		if (b != c) {
			// Swap U rows
			array_copy(temp, 0, U[c], 0, n);
			array_copy(U[c], 0, U[b], 0, n);
			array_copy(U[b], 0, temp, 0, n);
			// Swap P rows
			array_copy(temp, 0, P[c], 0, n);
			array_copy(P[c], 0, P[b], 0, n);
			array_copy(P[b], 0, temp, 0, n);
			// Swap L under the diagonal
			array_copy(temp, 0, L[c], 0, c);
			array_copy(L[c], 0, L[b], 0, c);
			array_copy(L[b], 0, temp, 0, c);
		}
		// Zero out part under the diagonal using a Gauss-Jordan row step
		// Record the multiplier in L and swap elements if applicable
		var U_c_c = U[c][c];
		if (U_c_c == 0) {
			continue;
		} else {
			for (var r = c+1; r < n; ++r) {
				var m = U[r][c]/U_c_c;
				U[r][@c] = 0;
				for (var i = c+1; i < n; ++i) {
					U[r][@i] -= m*U[c][i];
				}
				L[r][@c] = m;
			}
		}
	}
}

///@func rmn_solve_qr(Q, R, b, <vout>)
///@arg {Array<Array<Real>>} Q The mxm matrix from QR decomposition
///@arg {Array<Array<Real>>} R The mxn matrix from QR decomposition
///@arg {Array<Real>} b The m-dimensional vector.
///@arg {Array<Real>} <vout> (Optional) The n-dimensional solution vector to output to. If not given, create the new vector.
///@desc Solve QRx = b for x and return that.
function rmn_solve_qr(Q, R, b, vout=array_create(array_length(R[0]), 0)) {
	GMLINEAR_INLINE
	var m = array_length(R);
	var n = array_length(R[0]);
	// Get (Q^T)b
	var qtb = array_create(m, 0);
	for (var i = m-1; i >= 0; --i) {
		var qtb_i = 0;
		for (var j = m-1; j >= 0; --j) {
			qtb_i += Q[j][i]*b[j];
		}
		qtb[@i] = qtb_i;
	}
	// Clear vout to 0
	for (var i = n-1; i >= 0; --i) {
		vout[@i] = 0;
	}
	// Solve Rx=(Q^T)b
	// For each row counting backwards
	for (var i = m-1; i >= 0; --i) {
		var R_i = R[i];
		// Seek to pivot
		for (var p = 0; p < n && R_i[p] == 0; ++p) {}
		if (p < n) {
			var vout_p = qtb[i];
			for (var j = n-1; j > p; --j) {
				vout_p -= vout[j]*R_i[j];
			}
			vout[@p] = vout_p/R_i[p];
		}
	}
	return vout;
}

///@func rnn_solve_lu(L, U, b, <vout>)
///@arg {Array<Array<Real>>} L The nxn lower-triangular matrix from LU decomposition
///@arg {Array<Array<Real>>} U The nxn upper-triangular matrix from LU decomposition
///@arg {Array<Real>} b The n-dimensional vector.
///@arg {Array<Real>} <vout> (Optional) The n-dimensional solution vector to output to. If not given, create the new vector.
///@desc Solve LUx = b for x and return that.
function rnn_solve_lu(L, U, b, vout=array_create(array_length(b), 0)) {
	GMLINEAR_INLINE
	var n = array_length(U);
	// Solve Ly = b
	var vmid = array_create(n, 0);
	for (var i = 0; i < n; ++i) {
		var L_i = L[i];
		// Seek to pivot
		for (var p = n-1; p >= 0 && L_i[p] == 0; --p) {}
		if (p >= 0) {
			var vmid_p = b[i];
			for (var j = 0; j < p; ++j) {
				vmid_p -= vmid[j]*L_i[j];
			}
			vmid[@p] = vmid_p/L_i[p];
		}
	}
	// Clear vout to 0
	for (var i = n-1; i >= 0; --i) {
		vout[@i] = 0;
	}
	// Solve Ux = y
	for (var i = n-1; i >= 0; --i) {
		var U_i = U[i];
		// Seek to pivot
		for (var p = 0; p < n && U_i[p] == 0; ++p) {}
		if (p < n) {
			var vout_p = vmid[i];
			for (var j = n-1; j > p; --j) {
				vout_p -= vout[j]*U_i[j];
			}
			vout[@p] = vout_p/U_i[p];
		}
	}
	return vout;
}

///@func rnn_solve_palu(P, L, U, b, <vout>)
///@arg {Array<Array<Real>>} P The nxn permutation matrix from PA=LU decomposition
///@arg {Array<Array<Real>>} L The nxn lower-triangular matrix from PA=LU decomposition
///@arg {Array<Array<Real>>} U The nxn upper-triangular matrix from PA=LU decomposition
///@arg {Array<Real>} b The n-dimensional vector.
///@arg {Array<Real>} <vout> (Optional) The n-dimensional solution vector to output to. If not given, create the new vector.
///@desc Solve LUx = Pb for x and return that.
function rnn_solve_palu(P, L, U, b, vout=array_create(array_length(b), 0)) {
	GMLINEAR_INLINE
	var n = array_length(U);
	// Calculate Pb
	var Pb = rnn_transform(P, b);
	// Solve Ly = Pb
	var vmid = array_create(n, 0);
	for (var i = 0; i < n; ++i) {
		var L_i = L[i];
		// Seek to pivot
		for (var p = n-1; p >= 0 && L_i[p] == 0; --p) {}
		if (p >= 0) {
			var vmid_p = Pb[i];
			for (var j = 0; j < p; ++j) {
				vmid_p -= vmid[j]*L_i[j];
			}
			vmid[@p] = vmid_p/L_i[p];
		}
	}
	// Clear vout to 0
	for (var i = n-1; i >= 0; --i) {
		vout[@i] = 0;
	}
	// Solve Ux = y
	for (var i = n-1; i >= 0; --i) {
		var U_i = U[i];
		// Seek to pivot
		for (var p = 0; p < n && U_i[p] == 0; ++p) {}
		if (p < n) {
			var vout_p = vmid[i];
			for (var j = n-1; j > p; --j) {
				vout_p -= vout[j]*U_i[j];
			}
			vout[@p] = vout_p/U_i[p];
		}
	}
	return vout;
}
