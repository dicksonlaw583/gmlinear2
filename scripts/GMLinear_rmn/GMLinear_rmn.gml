///@func rmn(m, n, ...)
///@arg {int} m Number of rows
///@arg {int} n Number of columns
///@arg ...
///@desc Return a new mxn matrix.
function rmn() {
	GMLINEAR_INLINE;
	var m = argument[0];
	var n = argument[1];
	var mm = 0;
	var nn = 0;
	var M = array_create(m);
	var current_row;
	for (var i = 2; i < argument_count; i++) {
		if (nn == 0) {
			current_row = array_create(n);
			M[@mm] = current_row;
		}
		current_row[@nn] = argument[i];
		if (++nn == n) {
			++mm;
			nn = 0;
		}
	}
	return M;
}

///@func rmn_zero(m, n)
///@arg {int} m
///@arg {int} n
///@desc Return the mxn zero matrix.
function rmn_zero(m, n) {
	GMLINEAR_INLINE;
	var M = array_create(m);
	for (var i = m-1; i >= 0; --i) {
		M[@i] = array_create(n, 0);
	}
	return M;
}

///@func rmn_clone(M, <Mout>)
///@arg {rmn} M The original mxn matrix
///@arg {rmn} <Mout> (Optional) The output mxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a clone of M.
function rmn_clone(M, Mout=rmn_zero(array_length(M), array_length(M[0]))) {
	GMLINEAR_INLINE;
	var M_rows = array_length(M);
	var M_cols = array_length(M[0]);
	for (var i = M_rows-1; i >= 0; --i) {
		array_copy(Mout[i], 0, M[i], 0, M_cols);
	}
	return Mout;
}
#macro rmn_clone_to rmn_clone

///@func rmn_add(M1, M2, <Mout>)
///@arg {rmn} M1 The first mxn matrix.
///@arg {rmn} M2 The second nxp matrix.
///@arg {rmn} <Mout> (Optional) The output mxp matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1+M2.
function rmn_add(M1, M2, Mout=rmn_zero(array_length(M1), array_length(M1[0]))) {
	GMLINEAR_INLINE;
	var M1_rows = array_length(M1);
	var M1_cols = array_length(M1[0]);
	for (var i = M1_rows-1; i >= 0; --i) {
		var M1_i = M1[i];
		var M2_i = M2[i];
		var Mout_i = Mout[i];
		for (var j = M1_cols-1; j >= 0; --j) {
			Mout_i[@j] = M1_i[j]+M2_i[j];
		}
	}
	return Mout;
}
#macro rmn_add_to rmn_add

///@func rmn_subtract(M1, M2, <Mout>)
///@arg {rmn} M1 The first mxn matrix.
///@arg {rmn} M2 The second mxn matrix.
///@arg {rmn} <Mout> (Optional) The output mxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1-M2.
function rmn_subtract(M1, M2, Mout=rmn_zero(array_length(M1), array_length(M1[0]))) {
	GMLINEAR_INLINE;
	var M1_rows = array_length(M1);
	var M1_cols = array_length(M1[0]);
	for (var i = M1_rows-1; i >= 0; --i) {
		var M1_i = M1[i];
		var M2_i = M2[i];
		var Mout_i = Mout[i];
		for (var j = M1_cols-1; j >= 0; --j) {
			Mout_i[@j] = M1_i[j]-M2_i[j];
		}
	}
	return Mout;
}
#macro rmn_subtract_to rmn_subtract

///@func rmn_scale(M, r, <Mout>)
///@arg {rmn} M The original mxn matrix
///@arg {real} r The scaling factor
///@arg {rmn} <Mout> (Optional) The output mxn matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return rM.
function rmn_scale(M, r, Mout=rmn_zero(array_length(M), array_length(M[0]))) {
	GMLINEAR_INLINE;
	var M_rows = array_length(M);
	var M_cols = array_length(M[0]);
	for (var i = M_rows-1; i >= 0; --i) {
		var M_i = M[i];
		var Mout_i = Mout[i];
		for (var j = M_cols-1; j >= 0; --j) {
			Mout_i[@j] = r*M_i[j];
		}
	}
	return Mout;
}
#macro rmn_scale_to rmn_scale

///@func rmn_transpose(M, <Mout>)
///@arg {rmn} M The original mxn matrix
///@arg {rmn} <Mout> (Optional) The output nxm matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a transpose of M.
function rmn_transpose(M, Mout=rmn_zero(array_length(M[0]), array_length(M))) {
	GMLINEAR_INLINE;
	var M_rows = array_length(M);
	var M_cols = array_length(M[0]);
	var result = (M == Mout) ? rmn_zero(M_rows, M_cols) : Mout;
	for (var i = 0; i < M_rows; ++i) {
		var M_i = M[i];
		for (var j = 0; j < M_cols; ++j) {
			result[j][@i] = M_i[j];
		}
	}
	if (M == Mout) {
		rmn_clone(result, Mout);
	}
	return Mout;
}
#macro rmn_transpose_to rmn_transpose

///@func rmn_multiply(M1, M2, <Mout>)
///@arg {rmn} M1 The first mxn matrix.
///@arg {rmn} M2 The second nxp matrix.
///@arg {rmn} <Mout> (Optional) The output mxp matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1*M2.
function rmn_multiply(M1, M2, Mout=rmn_zero(array_length(M1), array_length(M2[0]))) {
	GMLINEAR_INLINE;
	var m = array_length(M1);
	var n = array_length(M2);
	var p = array_length(M2[0]);
	var result = (Mout == M1 || Mout == M2) ? rmn_zero(m, p) : Mout;
	for (var i = m-1; i >= 0; --i) {
		var result_i = result[i];
		var M1_i = M1[i];
		for (var j = p-1; j >= 0; --j) {
			result_i[@j] = 0;
			for (var k = n-1; k >= 0; --k) {
				result_i[@j] += M1_i[k]*M2[k][j];
			}
		}
	}
	if (Mout == M1 || Mout == M2) {
		rmn_clone(result, Mout);
	}
	return Mout;
}
#macro rmn_multiply_to rmn_multiply

///@func rmn_transform(M, v, <vout>)
///@arg {rmn} M The mxn matrix.
///@arg {rn} v The n-dimensional vector to transform.
///@arg {rn} <vout> (Optional) The output m-dimensional vector to overwrite. If not specified, a new vector will be created.
///@desc Return Mv.
function rmn_transform(M, v, vout=array_create(array_length(M))) {
	GMLINEAR_INLINE;
	var m = array_length(M);
	var n = array_length(M[0]);
	var result = (v == vout) ? array_create(m, 0) : vout;
	for (var i = m-1; i >= 0; --i) {
		var M_i = M[i];
		result[@i] = 0;
		for (var j = n-1; j >= 0; --j) {
			result[@i] += M_i[j]*v[j];
		}
	}
	if (v == vout) {
		array_copy(vout, 0, result, 0, m);
	}
	return vout;
}
#macro rmn_transform_to rmn_transform
