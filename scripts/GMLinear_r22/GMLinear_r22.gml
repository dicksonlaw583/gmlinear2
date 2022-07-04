///@func r22(x00, x01, x10, x11)
///@arg {real} x00
///@arg {real} x01
///@arg {real} x10
///@arg {real} x11
///@desc Return a new 2x2 matrix.
function r22(x00, x01, x10, x11) {
	GMLINEAR_INLINE
	return [
		[x00, x01],
		[x10, x11],
	];
}

///@func r22_identity()
///@desc Return the 2x2 identity matrix.
function r22_identity() {
	GMLINEAR_INLINE
	return [
		[1, 0],
		[0, 1],
	];
}

///@func r22_zero()
///@desc Return the 2x2 zero matrix.
function r22_zero() {
	GMLINEAR_INLINE
	return [
		[0, 0],
		[0, 0],
	];
}

///@func r22_clone(M, <Mout>)
///@arg {Array<Array<Real>>} M The original 2x2 matrix
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a clone of M.
function r22_clone(M, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	Mout[0][@0] = M[0][0];
	Mout[0][@1] = M[0][1];
	Mout[1][@0] = M[1][0];
	Mout[1][@1] = M[1][1];
	return Mout;
}
#macro r22_clone_to r22_clone

///@func r22_add(M1, M2, <Mout>)
///@arg {Array<Array<Real>>} M1 The first 2x2 matrix.
///@arg {Array<Array<Real>>} M2 The second 2x2 matrix.
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1+M2.
function r22_add(M1, M2, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	Mout[0][@0] = M1[0][0]+M2[0][0];
	Mout[0][@1] = M1[0][1]+M2[0][1];
	Mout[1][@0] = M1[1][0]+M2[1][0];
	Mout[1][@1] = M1[1][1]+M2[1][1];
	return Mout;
}
#macro r22_add_to r22_add

///@func r22_subtract(M1, M2, <Mout>)
///@arg {Array<Array<Real>>} M1 The first 2x2 matrix.
///@arg {Array<Array<Real>>} M2 The second 2x2 matrix.
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1-M2.
function r22_subtract(M1, M2, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	Mout[0][@0] = M1[0][0]-M2[0][0];
	Mout[0][@1] = M1[0][1]-M2[0][1];
	Mout[1][@0] = M1[1][0]-M2[1][0];
	Mout[1][@1] = M1[1][1]-M2[1][1];
	return Mout;
}
#macro r22_subtract_to r22_subtract

///@func r22_scale(M, r, <Mout>)
///@arg {Array<Array<Real>>} M The original 2x2 matrix
///@arg {real} r The scaling factor
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return rM.
function r22_scale(M, r, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	Mout[0][@0] = r*M[0][0];
	Mout[0][@1] = r*M[0][1];
	Mout[1][@0] = r*M[1][0];
	Mout[1][@1] = r*M[1][1];
	return Mout;
}
#macro r22_scale_to r22_scale

///@func r22_transpose(M, <Mout>)
///@arg {Array<Array<Real>>} M The original 2x2 matrix
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a transpose of M.
function r22_transpose(M, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a10 = M[1][0];
	var a11 = M[1][1];
	Mout[0][@0] = a00;
	Mout[0][@1] = a10;
	Mout[1][@0] = a01;
	Mout[1][@1] = a11;
	return Mout;
}
#macro r22_transpose_to r22_transpose

///@func r22_multiply(M1, M2, <Mout>)
///@arg {Array<Array<Real>>} M1 The first 2x2 matrix.
///@arg {Array<Array<Real>>} M2 The second 2x2 matrix.
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1*M2.
function r22_multiply(M1, M2, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	var a00 = M1[0][0];
	var a01 = M1[0][1];
	var a10 = M1[1][0];
	var a11 = M1[1][1];
	var b00 = M2[0][0];
	var b01 = M2[0][1];
	var b10 = M2[1][0];
	var b11 = M2[1][1];
	Mout[0][@0] = a00*b00 + a01*b10;
	Mout[0][@1] = a00*b01 + a01*b11;
	Mout[1][@0] = a10*b00 + a11*b10;
	Mout[1][@1] = a10*b01 + a11*b11;
	return Mout;
}
#macro r22_multiply_to r22_multiply

///@func r22_transform(M, v, <vout>)
///@arg {Array<Array<Real>>} M The 2x2 matrix.
///@arg {Array<Real>} v The 2D vector to transform.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If not specified, a new vector will be created.
///@desc Return Mv.
function r22_transform(M, v, vout=[0, 0]) {
	GMLINEAR_INLINE
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var b0 = v[0];
	var b1 = v[1];
	vout[@0] = a00*b0 + a01*b1;
	vout[@1] = a10*b0 + a11*b1;
	return vout;
}
#macro r22_transform_to r22_transform

///@func r22_invert(M, <Mout>)
///@arg {Array<Array<Real>>} M The original 2x2 matrix
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a inverse of M. If singular, return undefined.
function r22_invert(M, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var det = a00*a11-a01*a10;
	if (det == 0) {
		return undefined;
	} else {
		Mout[0][@0] = a11/det;
		Mout[0][@1] = -a01/det;
		Mout[1][@0] =-a10/det;
		Mout[1][@1] = a00/det;
		return Mout;
	}
}
#macro r22_invert_to r22_invert

///@func r22_det(M)
///@arg {Array<Array<Real>>} M The original 2x2 matrix
///@func Return the determinant of 2x2 matrix M.
function r22_det(M) {
	GMLINEAR_INLINE
	return M[0][0]*M[1][1]-M[1][0]*M[0][1];
}

///@func r22_tr(M)
///@arg {Array<Array<Real>>} M The original 2x2 matrix
///@func Return the trace of 2x2 matrix M.
function r22_tr(M) {
	GMLINEAR_INLINE
	return M[0][0]+M[1][1];
}

///@func r22_encode_string(M)
///@arg {Array<Array<Real>>} M The 2x2 matrix to encode.
///@desc Return the string form of 2x2 matrix M.
function r22_encode_string(M) {
	GMLINEAR_INLINE
	return string_replace_all(
		string_format(M[0][0], 15, 14)+","+
		string_format(M[0][1], 15, 14)+";"+
		string_format(M[1][0], 15, 14)+","+
		string_format(M[1][1], 15, 14)
	, " ", "");
}

///@description r22_decode_string(str, <Mout>)
///@arg {string} _str The string to decode.
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the decoded form of str.
function r22_decode_string(_str, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	var pos;
	var str = _str;
	pos = string_pos(",", str);
	Mout[0][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(";", str);
	Mout[0][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[1][@0] = real(string_copy(str, 1, pos-1));
	Mout[1][@1] = real(string_delete(str, 1, pos));
	return Mout;
}
#macro r22_decode_string_to r22_decode_string

///@func r22_encode_base64(M)
///@arg {Array<Array<Real>>} M The 2x2 matrix to encode.
///@desc Return the base64 form of 2x2 matrix M.
function r22_encode_base64(M) {
	GMLINEAR_INLINE
	var buffer = buffer_create(32, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, M[0][0]);
	buffer_write(buffer, buffer_f64, M[0][1]);
	buffer_write(buffer, buffer_f64, M[1][0]);
	buffer_write(buffer, buffer_f64, M[1][1]);
	var result = buffer_base64_encode(buffer, 0, 32);
	buffer_delete(buffer);
	return result;
}

///@func r22_decode_base64(enc, <Mout>)
///@arg {string} enc The string to decode.
///@arg {Array<Array<Real>>} <Mout> (Optional) The output 2x2 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the base64-decoded form of str.
function r22_decode_base64(enc, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE
	var buffer = buffer_create(32, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	Mout[0][@0] = buffer_read(buffer, buffer_f64);
	Mout[0][@1] = buffer_read(buffer, buffer_f64);
	Mout[1][@0] = buffer_read(buffer, buffer_f64);
	Mout[1][@1] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return Mout;
}
#macro r22_decode_base64_to r22_decode_base64
