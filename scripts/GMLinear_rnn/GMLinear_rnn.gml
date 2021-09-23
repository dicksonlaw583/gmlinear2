///@func rnn(...)
///@desc Return a new square matrix up to 4 x 4 in size.
function rnn() {
	GMLINEAR_INLINE;
	switch (argument_count) {
		case 1:
			return [[argument[0]]];
		case 4:
			return [
				[argument[0], argument[1]],
				[argument[2], argument[3]],
			];
		case 9:
			return [
				[argument[0], argument[1], argument[2]],
				[argument[3], argument[4], argument[5]],
				[argument[6], argument[7], argument[8]],
			];
		case 16:
			return [
				[argument[0], argument[1], argument[2], argument[3]],
				[argument[4], argument[5], argument[6], argument[7]],
				[argument[8], argument[9], argument[10], argument[11]],
				[argument[12], argument[13], argument[14], argument[15]],
			];
		default:
			show_error("Expected 1, 4, 9 or 16 arguments, got " + string(argument_count) + ".", true);
	}
}

///@func rnn_identity(n)
///@arg {int} n
///@desc Return the nxn identity matrix.
function rnn_identity(n) {
	GMLINEAR_INLINE;
	var M = array_create(n);
	for (var i = n-1; i >= 0; --i) {
		var row = array_create(n, 0);
		row[@i] = 1;
		M[@i] = row;
	}
	return M;
}

///@func rnn_zero(n)
///@arg {int} n
///@desc Return the nxn zero matrix.
function rnn_zero(n) {
	GMLINEAR_INLINE;
	var M = array_create(n);
	for (var i = n-1; i >= 0; --i) {
		M[@i] = array_create(n, 0);
	}
	return M;
}

///@func rnn_clone(M, <Mout>)
///@arg {rnn} M The original nxn matrix
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a clone of M.
function rnn_clone(M, Mout=rnn_zero(array_length(M))) {
	GMLINEAR_INLINE;
	var M_dim = array_length(M);
	for (var i = M_dim-1; i >= 0; --i) {
		array_copy(Mout[i], 0, M[i], 0, M_dim);
	}
	return Mout;
}
#macro rnn_clone_to rnn_clone

///@func rnn_add(M1, M2, <Mout>)
///@arg {rnn} M1 The first nxn matrix.
///@arg {rnn} M2 The second nxn matrix.
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1+M2.
function rnn_add(M1, M2, Mout=rnn_zero(array_length(M1))) {
	GMLINEAR_INLINE;
	var M_dim = array_length(M1);
	for (var i = M_dim-1; i >= 0; --i) {
		for (var j = M_dim-1; j >= 0; --j) {
			Mout[i][@j] = M1[i][j]+M2[i][j];
		}
	}
	return Mout;
}
#macro rnn_add_to rnn_add

///@func rnn_subtract(M1, M2, <Mout>)
///@arg {rnn} M1 The first nxn matrix.
///@arg {rnn} M2 The second nxn matrix.
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1-M2.
function rnn_subtract(M1, M2, Mout=rnn_zero(array_length(M1))) {
	GMLINEAR_INLINE;
	var M_dim = array_length(M1);
	for (var i = M_dim-1; i >= 0; --i) {
		for (var j = M_dim-1; j >= 0; --j) {
			Mout[i][@j] = M1[i][j]-M2[i][j];
		}
	}
	return Mout;
}
#macro rnn_subtract_to rnn_subtract

///@func rnn_scale(M, r, <Mout>)
///@arg {rnn} M The original nxn matrix
///@arg {real} r The scaling factor
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return rM.
function rnn_scale(M, r, Mout=rnn_zero(array_length(M))) {
	GMLINEAR_INLINE;
	var M_dim = array_length(M);
	for (var i = M_dim-1; i >= 0; --i) {
		for (var j = M_dim-1; j >= 0; --j) {
			Mout[i][@j] = r*M[i][j];
		}
	}
	return Mout;
}
#macro rnn_scale_to rnn_scale

///@func rnn_transpose(M, <Mout>)
///@arg {rnn} M The original nxn matrix
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a transpose of M.
function rnn_transpose(M, Mout=rnn_zero(array_length(M))) {
	GMLINEAR_INLINE;
	var M_dim = array_length(M);
	for (var i = 0; i < M_dim; ++i) {
		var M_i = M[i];
		for (var j = 0; j <= i; ++j) {
			var tmp = M_i[j];
			Mout[i][@j] = M[j][i];
			Mout[j][@i] = tmp;
		}
	}
	return Mout;
}
#macro rnn_transpose_to rnn_transpose

///@func rnn_multiply(M1, M2, <Mout>)
///@arg {rnn} M1 The first nxn matrix.
///@arg {rnn} M2 The second nxn matrix.
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1*M2.
function rnn_multiply(M1, M2, Mout=rnn_zero(array_length(M1))) {
	GMLINEAR_INLINE;
	var n = array_length(M1);
	var result = (Mout == M1 || Mout == M2) ? rnn_zero(n) : Mout;
	for (var i = n-1; i >= 0; --i) {
		var result_i = result[i];
		for (var j = n-1; j >= 0; --j) {
			result_i[@j] = 0;
			for (var k = n-1; k >= 0; --k) {
				result_i[@j] += M1[i][k]*M2[k][j];
			}
		}
	}
	if (Mout == M1 || Mout == M2) {
		for (var i = n-1; i >= 0; --i) {
			array_copy(Mout[i], 0, result[i], 0, n);
		}
	}
	return Mout;
}
#macro rnn_multiply_to rnn_multiply

///@func rnn_transform(M, v, <vout>)
///@arg {rnn} M The nxn matrix.
///@arg {rn} v The n-dimensional vector to transform.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If not specified, a new vector will be created.
///@desc Return Mv.
function rnn_transform(M, v, vout=[]) {
	GMLINEAR_INLINE;
	var n = array_length(M);
	var result = (v == vout) ? array_create(n, 0) : vout;
	for (var i = n-1; i >= 0; --i) {
		var M_i = M[i];
		result[@i] = 0;
		for (var j = n-1; j >= 0; --j) {
			result[@i] += M_i[j]*v[j];
		}
	}
	if (v == vout) {
		array_copy(vout, 0, result, 0, n);
	}
	return vout;
}
#macro rnn_transform_to rnn_transform

///@func rnn_invert(M, <Mout>)
///@arg {rnn} M The original nxn matrix
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a inverse of M. If singular, return undefined.
function rnn_invert(M, Mout=rnn_zero(array_length(M))) {
	GMLINEAR_INLINE;
	var n = array_length(M);
	var original = rnn_clone(M);
	var result = rnn_identity(n);
	// For each row
	for (var i = 0; i < n; ++i) {
		//Find highest row among i through n-1 by absolute value of its ith entry
		var highest_row_i = i;
		var highest_row_abs = abs(original[i][i]);
		var current_row_abs;
		for (var ii = i+1; ii < n; ii++) {
			current_row_abs = abs(original[ii][i]);
			if (current_row_abs > highest_row_abs) {
				highest_row_i = ii;
				highest_row_abs = current_row_abs;
			}
		}
		//It is singular if the entire remaining column is 0
		if (highest_row_abs == 0) {
			return undefined;
		}
		//Swap the row on both the original and the result
		if (i != highest_row_i) {
			for (var j = 0; j < n; j++) {
				var tmp;
				tmp = original[i][j];
				original[i][@j] = original[highest_row_i][j];
				original[highest_row_i][@j] = tmp;
				tmp = result[i][j];
				result[i][@j] = result[highest_row_i][j];
				result[highest_row_i][@j] = tmp;
			}
		}
		//Scale down ith row on both the original and the result
		var scale_factor = original[i, i];
		for (var j = i+1; j < n; j++) {
			original[i][@j] /= scale_factor;
		}
		for (var j = 0; j < n; j++) {
			result[i][@j] /= scale_factor;
		}
		original[i][@i] = 1;
		//Do row subtraction on every other row, on the original and the result
		for (var ii = 0; ii < n; ii++) {
			if (ii != i) {
				var factor = original[ii][i];
				for (var j = i+1; j < n; j++) {
					original[ii][@j] -= factor*original[i][j];
				}
				for (var j = 0; j < n; j++) {
					result[ii][@j] -= factor*result[i][j];
				}
				original[ii][@i] = 0;
			}
		}
	}
	rnn_clone(result, Mout);
	return Mout;
}
#macro rnn_invert_to rnn_invert
