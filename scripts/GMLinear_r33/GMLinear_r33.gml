///@func r33(x00, x01, x02, x10, x11, x12, x20, x21, x22)
///@arg {real} x00
///@arg {real} x01
///@arg {real} x02
///@arg {real} x10
///@arg {real} x11
///@arg {real} x12
///@arg {real} x20
///@arg {real} x21
///@arg {real} x22
///@desc Return a new 3x3 matrix.
function r33(x00, x01, x02, x10, x11, x12, x20, x21, x22) {
	GMLINEAR_INLINE;
	return [
		[x00, x01, x02],
		[x10, x11, x12],
		[x20, x21, x22],
	];
}

///@func r33_identity()
///@desc Return the 3x3 identity matrix.
function r33_identity() {
	GMLINEAR_INLINE;
	return [
		[1, 0, 0],
		[0, 1, 0],
		[0, 0, 1],
	];
}

///@func r33_zero()
///@desc Return the 3x3 zero matrix.
function r33_zero() {
	GMLINEAR_INLINE;
	return [
		[0, 0, 0],
		[0, 0, 0],
		[0, 0, 0],
	];
}

///@func r33_clone(M, <Mout>)
///@arg {r33} M The original 3x3 matrix
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a clone of M.
function r33_clone(M, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M[0][0];
	Mout[0][@1] = M[0][1];
	Mout[0][@2] = M[0][2];
	Mout[1][@0] = M[1][0];
	Mout[1][@1] = M[1][1];
	Mout[1][@2] = M[1][2];
	Mout[2][@0] = M[2][0];
	Mout[2][@1] = M[2][1];
	Mout[2][@2] = M[2][2];
	return Mout;
}
#macro r33_clone_to r33_clone

///@func r33_add(M1, M2, <Mout>)
///@arg {r33} M1 The first 3x3 matrix.
///@arg {r33} M2 The second 3x3 matrix.
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1+M2.
function r33_add(M1, M2, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M1[0][0]+M2[0][0];
	Mout[0][@1] = M1[0][1]+M2[0][1];
	Mout[0][@2] = M1[0][2]+M2[0][2];
	Mout[1][@0] = M1[1][0]+M2[1][0];
	Mout[1][@1] = M1[1][1]+M2[1][1];
	Mout[1][@2] = M1[1][2]+M2[1][2];
	Mout[2][@0] = M1[2][0]+M2[2][0];
	Mout[2][@1] = M1[2][1]+M2[2][1];
	Mout[2][@2] = M1[2][2]+M2[2][2];
	return Mout;
}
#macro r33_add_to r33_add

///@func r33_subtract(M1, M2, <Mout>)
///@arg {r33} M1 The first 3x3 matrix.
///@arg {r33} M2 The second 3x3 matrix.
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1-M2.
function r33_subtract(M1, M2, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M1[0][0]-M2[0][0];
	Mout[0][@1] = M1[0][1]-M2[0][1];
	Mout[0][@2] = M1[0][2]-M2[0][2];
	Mout[1][@0] = M1[1][0]-M2[1][0];
	Mout[1][@1] = M1[1][1]-M2[1][1];
	Mout[1][@2] = M1[1][2]-M2[1][2];
	Mout[2][@0] = M1[2][0]-M2[2][0];
	Mout[2][@1] = M1[2][1]-M2[2][1];
	Mout[2][@2] = M1[2][2]-M2[2][2];
	return Mout;
}
#macro r33_subtract_to r33_subtract

///@func r33_scale(M, r, <Mout>)
///@arg {r33} M The original 3x3 matrix
///@arg {real} r The scaling factor
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return rM.
function r33_scale(M, r, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = r*M[0][0];
	Mout[0][@1] = r*M[0][1];
	Mout[0][@2] = r*M[0][2];
	Mout[1][@0] = r*M[1][0];
	Mout[1][@1] = r*M[1][1];
	Mout[1][@2] = r*M[1][2];
	Mout[2][@0] = r*M[2][0];
	Mout[2][@1] = r*M[2][1];
	Mout[2][@2] = r*M[2][2];
	return Mout;
}
#macro r33_scale_to r33_scale

///@func r33_transpose(M, <Mout>)
///@arg {r33} M The original 3x3 matrix
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a transpose of M.
function r33_transpose(M, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a02 = M[0][2];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var a12 = M[1][2];
	var a20 = M[2][0];
	var a21 = M[2][1];
	var a22 = M[2][2];
	Mout[0][@0] = a00;
	Mout[0][@1] = a10;
	Mout[0][@2] = a20;
	Mout[1][@0] = a01;
	Mout[1][@1] = a11;
	Mout[1][@2] = a21;
	Mout[2][@0] = a02;
	Mout[2][@1] = a12;
	Mout[2][@2] = a22;
	return Mout;
}
#macro r33_transpose_to r33_transpose

///@func r33_multiply(M1, M2, <Mout>)
///@arg {r33} M1 The first 3x3 matrix.
///@arg {r33} M2 The second 3x3 matrix.
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1*M2.
function r33_multiply(M1, M2, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	var a00 = M1[0][0];
	var a01 = M1[0][1];
	var a02 = M1[0][2];
	var a10 = M1[1][0];
	var a11 = M1[1][1];
	var a12 = M1[1][2];
	var a20 = M1[2][0];
	var a21 = M1[2][1];
	var a22 = M1[2][2];
	var b00 = M2[0][0];
	var b01 = M2[0][1];
	var b02 = M2[0][2];
	var b10 = M2[1][0];
	var b11 = M2[1][1];
	var b12 = M2[1][2];
	var b20 = M2[2][0];
	var b21 = M2[2][1];
	var b22 = M2[2][2];
	Mout[0][@0] = a00*b00 + a01*b10 + a02*b20;
	Mout[0][@1] = a00*b01 + a01*b11 + a02*b21;
	Mout[0][@2] = a00*b02 + a01*b12 + a02*b22;
	Mout[1][@0] = a10*b00 + a11*b10 + a12*b20;
	Mout[1][@1] = a10*b01 + a11*b11 + a12*b21;
	Mout[1][@2] = a10*b02 + a11*b12 + a12*b22;
	Mout[2][@0] = a20*b00 + a21*b10 + a22*b20;
	Mout[2][@1] = a20*b01 + a21*b11 + a22*b21;
	Mout[2][@2] = a20*b02 + a21*b12 + a22*b22;
	return Mout;
}
#macro r33_multiply_to r33_multiply

///@func r33_transform(M, v, <vout>)
///@arg {r33} M The 3x3 matrix.
///@arg {r3} v The 3D vector to transform.
///@arg {r3} <vout> (Optional) The output 3D vector to overwrite. If not specified, a new vector will be created.
///@desc Return Mv.
function r33_transform(M, v, vout=[0, 0, 0]) {
	GMLINEAR_INLINE;
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a02 = M[0][2];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var a12 = M[1][2];
	var a20 = M[2][0];
	var a21 = M[2][1];
	var a22 = M[2][2];
	var b0 = v[0];
	var b1 = v[1];
	var b2 = v[2];
	vout[@0] = a00*b0 + a01*b1 + a02*b2;
	vout[@1] = a10*b0 + a11*b1 + a12*b2;
	vout[@2] = a20*b0 + a21*b1 + a22*b2;
	return vout;
}
#macro r33_transform_to r33_transform

///@func r33_invert(M, <Mout>)
///@arg {r33} M The original 3x3 matrix
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a inverse of M. If singular, return undefined.
function r33_invert(M, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a02 = M[0][2];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var a12 = M[1][2];
	var a20 = M[2][0];
	var a21 = M[2][1];
	var a22 = M[2][2];
	var det = a00*a11*a22+a10*a21*a02+a20*a01*a12
           -a00*a21*a12-a20*a11*a02-a10*a01*a22;
	if (det == 0) {
		return undefined;
	} else {
		Mout[0][@0] = (a11*a22-a12*a21)/det;
		Mout[0][@1] = (a02*a21-a01*a22)/det;
		Mout[0][@2] = (a01*a12-a02*a11)/det;
		Mout[1][@0] = (a12*a20-a10*a22)/det;
		Mout[1][@1] = (a00*a22-a02*a20)/det;
		Mout[1][@2] = (a02*a10-a00*a12)/det;
		Mout[2][@0] = (a10*a21-a11*a20)/det;
		Mout[2][@1] = (a01*a20-a00*a21)/det;
		Mout[2][@2] = (a00*a11-a01*a10)/det;
		return Mout;
	}
}
#macro r33_invert_to r33_invert

///@func r33_det(M)
///@arg {r33} M The original 3x3 matrix
///@func Return the determinant of 3x3 matrix M.
function r33_det(M) {
	GMLINEAR_INLINE;
	return M[0][0]*M[1][1]*M[2][2]+M[1][0]*M[2][1]*M[0][2]+M[2][0]*M[0][1]*M[1][2]
           -M[0][0]*M[2][1]*M[1][2]-M[2][0]*M[1][1]*M[0][2]-M[1][0]*M[0][1]*M[2][2];
}

///@func r33_encode_string(M)
///@arg {r33} M The 3x3 matrix to encode.
///@desc Return the string form of 3x3 matrix M.
function r33_encode_string(M) {
	GMLINEAR_INLINE;
	return string_replace_all(
		string_format(M[0][0], 15, 14)+","+
		string_format(M[0][1], 15, 14)+","+
		string_format(M[0][2], 15, 14)+";"+
		string_format(M[1][0], 15, 14)+","+
		string_format(M[1][1], 15, 14)+","+
		string_format(M[1][2], 15, 14)+";"+
		string_format(M[2][0], 15, 14)+","+
		string_format(M[2][1], 15, 14)+","+
		string_format(M[2][2], 15, 14)
	, " ", "");
}

///@description r33_decode_string(str, <Mout>)
///@arg {string} str The string to decode.
///@arg {r33} <Mout> (Optional) The output 3x3 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the decoded form of str.
function r33_decode_string(_str, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	var pos;
	var str = _str;
	pos = string_pos(",", str);
	Mout[0][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[0][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(";", str);
	Mout[0][@2] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[1][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[1][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(";", str);
	Mout[1][@2] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[2][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[2][@1] = real(string_copy(str, 1, pos-1));
	Mout[2][@2] = real(string_delete(str, 1, pos));
	return Mout;
}
#macro r33_decode_string_to r33_decode_string

///@func r33_encode_base64(M)
///@arg {r33} M The 4x4 matrix to encode.
///@desc Return the base64 form of 3x3 matrix M.
function r33_encode_base64(M) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(72, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, M[0][0]);
	buffer_write(buffer, buffer_f64, M[0][1]);
	buffer_write(buffer, buffer_f64, M[0][2]);
	buffer_write(buffer, buffer_f64, M[1][0]);
	buffer_write(buffer, buffer_f64, M[1][1]);
	buffer_write(buffer, buffer_f64, M[1][2]);
	buffer_write(buffer, buffer_f64, M[2][0]);
	buffer_write(buffer, buffer_f64, M[2][1]);
	buffer_write(buffer, buffer_f64, M[2][2]);
	var result = buffer_base64_encode(buffer, 0, 72);
	buffer_delete(buffer);
	return result;
}

///@func r33_decode_base64(enc, <Mout>)
///@arg {string} enc The string to decode.
///@arg {r33} <Mout> (Optional) The output 4x4 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the base64-decoded form of str.
function r33_decode_base64(enc, Mout=[[0, 0, 0], [0, 0, 0], [0, 0, 0]]) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(72, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	Mout[0][@0] = buffer_read(buffer, buffer_f64);
	Mout[0][@1] = buffer_read(buffer, buffer_f64);
	Mout[0][@2] = buffer_read(buffer, buffer_f64);
	Mout[1][@0] = buffer_read(buffer, buffer_f64);
	Mout[1][@1] = buffer_read(buffer, buffer_f64);
	Mout[1][@2] = buffer_read(buffer, buffer_f64);
	Mout[2][@0] = buffer_read(buffer, buffer_f64);
	Mout[2][@1] = buffer_read(buffer, buffer_f64);
	Mout[2][@2] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return Mout;
}
#macro r33_decode_base64_to r33_decode_base64
