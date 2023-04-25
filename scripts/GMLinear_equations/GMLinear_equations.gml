///@func rmn_ref(M, [Mout])
///@arg {Array<Array<Real>>} M The original mxn matrix.
///@arg {Array<Array<Real>>} [Mout] (Optional) The target mxn matrix. If not specified, create a new matrix.
///@desc Return M in row-echelon form.
function rmn_ref(M, Mout=rmn_zero(array_length(M), array_length(M[0]))) {
	GMLINEAR_INLINE
	var m = array_length(M);
	var n = array_length(M[0]);
	var temp = array_create(n, 0);
	// Copy M to Mout if not self
	if (M != Mout) {
		rmn_clone(M, Mout);
	}
	// For each row
	var c = 0;
	for (var r = 0; r < m && c < n; ++r) {
		// Pull row with highest column value by absolute value to the top
		var b = r;
		var bv = abs(Mout[r][c]);
		for (var rr = m-1; rr > r; --rr) {
			var aUrrc = abs(Mout[rr][c]);
			if (aUrrc > bv) {
				b = rr;
				bv = aUrrc;
			}
		}
		if (b != r) {
			array_copy(temp, 0, Mout[r], 0, n);
			array_copy(Mout[r], 0, Mout[b], 0, n);
			array_copy(Mout[b], 0, temp, 0, n);
		}
		// Repeat the row and increment just the column if best found is 0
		if (bv == 0) {
			--r;
		}
		// Otherwise, zero out part below using Guass-Jordan row step
		else {
			var Mout_r = Mout[r];
			var Mout_r_c = Mout_r[c];
			for (var rr = m-1; rr > r; --rr) {
				var Mout_rr = Mout[rr];
				var multiplier = Mout_rr[c]/Mout_r_c;
				Mout_rr[@c] = 0;
				if (multiplier != 0) {
					for (var i = c+1; i < n; ++i) {
						Mout_rr[@i] -= multiplier*Mout_r[i];
					}
				}
			}
		}
		// Move to the next column
		++c;
	}
	// Done
	return Mout;
}


///@func rmn_rref(M, [Mout])
///@arg {Array<Array<Real>>} M The original mxn matrix.
///@arg {Array<Array<Real>>} [Mout] (Optional) The target mxn matrix. If not specified, create a new matrix.
///@desc Return M in reduced row-echelon form.
function rmn_rref(M, Mout=rmn_zero(array_length(M), array_length(M[0]))) {
	GMLINEAR_INLINE
	var m = array_length(M);
	var n = array_length(M[0]);
	var temp = array_create(n, 0);
	// Copy M to Mout if not self
	if (M != Mout) {
		rmn_clone(M, Mout);
	}
	// For each row
	var c = 0;
	for (var r = 0; r < m && c < n; ++r) {
		// Pull row with highest column value by absolute value to the top
		var b = r;
		var bv = abs(Mout[r][c]);
		for (var rr = m-1; rr > r; --rr) {
			var aUrrc = abs(Mout[rr][c]);
			if (aUrrc > bv) {
				b = rr;
				bv = aUrrc;
			}
		}
		if (b != r) {
			array_copy(temp, 0, Mout[r], 0, n);
			array_copy(Mout[r], 0, Mout[b], 0, n);
			array_copy(Mout[b], 0, temp, 0, n);
		}
		// Repeat the row and increment just the column if best found is 0
		if (bv == 0) {
			--r;
		}
		// Otherwise, zero out part above and below using Guass-Jordan row step
		// Also scale down the current row to make pivot 1
		else {
			var Mout_r = Mout[r];
			var Mout_r_c = Mout_r[c];
			for (var rr = m-1; rr >= 0; --rr) {
				if (rr == r) continue;
				var Mout_rr = Mout[rr];
				var multiplier = Mout_rr[c]/Mout_r_c;
				Mout_rr[@c] = 0;
				if (multiplier != 0) {
					for (var i = c+1; i < n; ++i) {
						Mout_rr[@i] -= multiplier*Mout_r[i];
					}
				}
			}
			for (var i = n-1; i > c; --i) {
				Mout_r[@i] /= Mout_r_c;
			}
			Mout_r[@c] = 1;
		}
		// Move to the next column
		++c;
	}
	// Done
	return Mout;
}

///@func rmn_solve(M, b, <vout>, <nullspace>)
///@arg {Array<Array<Real>>} M The original mxn matrix.
///@arg {Array<Real>} b The reference m-dimensional vector.
///@arg {Array<Real>} <vout> (Optional) The target n-dimensional vector to solve to. If not specified, create a new vector.
///@arg {array} <nullspace> (Optional) An array to push nullspace basis vectors into.
///@desc Solve Mx = b for x. Return 0 if no solution, 1 if unique solution, 2 if multiple solutions.
///@desc If M is not full-rank and <nullspace> is specified, also push nullspace basis vectors into <nullspace>
function rmn_solve(M, b, vout=array_create(array_length(M[0]), 0), nullspace=undefined) {
	GMLINEAR_INLINE
	var m = array_length(M);
	var n = array_length(M[0]);
	// Make a local copy of M and augment it with b
	var A = rmn_clone(M);
	for (var i = m-1; i >= 0; --i) {
		A[i][@n] = b[i];
	}
	// Reduce it to RREF
	rmn_rref(A, A);
	// Clear vout to zero
	for (var i = n-1; i >= 0; --i) {
		vout[@i] = 0;
	}
	// Solution is location of pivots
	var rowpivot = array_create(m, 0);
	var colpivoted = array_create(n, false);
	var j;
	for (var i = m-1; i >= 0; --i) {
		var A_i = A[i];
		for (j = 0; j < n && A_i[j] == 0; ++j) {}
		// Pivot
		if (j < n) {
			// Value is augmented portion
			vout[@j] = A_i[n];
			rowpivot[@i] = j;
			colpivoted[@j] = true;
		}
		// No pivot
		else {
			// Inconsistent if augmented portion is nonzero
			if (A_i[n] != 0) {
				return 0;
			}
		}
	}
	// If nullspace specified, also push nullspace basis vectors into it
	if (is_array(nullspace)) {
		for (j = 0; j < n; ++j) {
			if (!colpivoted[j]) {
				var nsb = array_create(n, 0);
				for (var i = m-1; i >= 0; --i) {
					nsb[@rowpivot[i]] = -A[i][j];
				}
				nsb[@j] = 1;
				rn_unit(nsb, nsb);
				array_push(nullspace, nsb);
			}
		}
	}
	// Return 1 if all columns are pivoted, 2 otherwise
	for (j = n-1; j >= 0; --j) {
		if (!colpivoted[j]) return 2;
	}
	return 1;
}
