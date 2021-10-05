///@func r44(x00, x01, x02, x03, x10, x11, x12, x13, x20, x21, x22, x23, x30, x31, x32, x33)
///@arg {real} x00
///@arg {real} x01
///@arg {real} x02
///@arg {real} x03
///@arg {real} x10
///@arg {real} x11
///@arg {real} x12
///@arg {real} x13
///@arg {real} x20
///@arg {real} x21
///@arg {real} x22
///@arg {real} x23
///@arg {real} x30
///@arg {real} x31
///@arg {real} x32
///@arg {real} x33
///@desc Return a new 4x4 matrix.
function r44(x00, x01, x02, x03, x10, x11, x12, x13, x20, x21, x22, x23, x30, x31, x32, x33) {
	GMLINEAR_INLINE;
	return [
		[x00, x01, x02, x03],
		[x10, x11, x12, x13],
		[x20, x21, x22, x23],
		[x30, x31, x32, x33],
	];
}

///@func r44_identity()
///@desc Return the 4x4 identity matrix.
function r44_identity() {
	GMLINEAR_INLINE;
	return [
		[1, 0, 0, 0],
		[0, 1, 0, 0],
		[0, 0, 1, 0],
		[0, 0, 0, 1],
	];
}

///@func r44_zero()
///@desc Return the 4x4 zero matrix.
function r44_zero() {
	GMLINEAR_INLINE;
	return [
		[0, 0, 0, 0],
		[0, 0, 0, 0],
		[0, 0, 0, 0],
		[0, 0, 0, 0],
	];
}

///@func r44_clone(M, <Mout>)
///@arg {r44} M The original 4x4 matrix
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a clone of M.
function r44_clone(M, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M[0][0];
	Mout[0][@1] = M[0][1];
	Mout[0][@2] = M[0][2];
	Mout[0][@3] = M[0][3];
	Mout[1][@0] = M[1][0];
	Mout[1][@1] = M[1][1];
	Mout[1][@2] = M[1][2];
	Mout[1][@3] = M[1][3];
	Mout[2][@0] = M[2][0];
	Mout[2][@1] = M[2][1];
	Mout[2][@2] = M[2][2];
	Mout[2][@3] = M[2][3];
	Mout[3][@0] = M[3][0];
	Mout[3][@1] = M[3][1];
	Mout[3][@2] = M[3][2];
	Mout[3][@3] = M[3][3];
	return Mout;
}
#macro r44_clone_to r44_clone

///@func r44_add(M1, M2, <Mout>)
///@arg {r44} M1 The first 4x4 matrix.
///@arg {r44} M2 The second 4x4 matrix.
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1+M2.
function r44_add(M1, M2, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M1[0][0]+M2[0][0];
	Mout[0][@1] = M1[0][1]+M2[0][1];
	Mout[0][@2] = M1[0][2]+M2[0][2];
	Mout[0][@3] = M1[0][3]+M2[0][3];
	Mout[1][@0] = M1[1][0]+M2[1][0];
	Mout[1][@1] = M1[1][1]+M2[1][1];
	Mout[1][@2] = M1[1][2]+M2[1][2];
	Mout[1][@3] = M1[1][3]+M2[1][3];
	Mout[2][@0] = M1[2][0]+M2[2][0];
	Mout[2][@1] = M1[2][1]+M2[2][1];
	Mout[2][@2] = M1[2][2]+M2[2][2];
	Mout[2][@3] = M1[2][3]+M2[2][3];
	Mout[3][@0] = M1[3][0]+M2[3][0];
	Mout[3][@1] = M1[3][1]+M2[3][1];
	Mout[3][@2] = M1[3][2]+M2[3][2];
	Mout[3][@3] = M1[3][3]+M2[3][3];
	return Mout;
}
#macro r44_add_to r44_add

///@func r44_subtract(M1, M2, <Mout>)
///@arg {r44} M1 The first 4x4 matrix.
///@arg {r44} M2 The second 4x4 matrix.
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1-M2.
function r44_subtract(M1, M2, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M1[0][0]-M2[0][0];
	Mout[0][@1] = M1[0][1]-M2[0][1];
	Mout[0][@2] = M1[0][2]-M2[0][2];
	Mout[0][@3] = M1[0][3]-M2[0][3];
	Mout[1][@0] = M1[1][0]-M2[1][0];
	Mout[1][@1] = M1[1][1]-M2[1][1];
	Mout[1][@2] = M1[1][2]-M2[1][2];
	Mout[1][@3] = M1[1][3]-M2[1][3];
	Mout[2][@0] = M1[2][0]-M2[2][0];
	Mout[2][@1] = M1[2][1]-M2[2][1];
	Mout[2][@2] = M1[2][2]-M2[2][2];
	Mout[2][@3] = M1[2][3]-M2[2][3];
	Mout[3][@0] = M1[3][0]-M2[3][0];
	Mout[3][@1] = M1[3][1]-M2[3][1];
	Mout[3][@2] = M1[3][2]-M2[3][2];
	Mout[3][@3] = M1[3][3]-M2[3][3];
	return Mout;
}
#macro r44_subtract_to r44_subtract

///@func r44_scale(M, r, <Mout>)
///@arg {r44} M The original 4x4 matrix
///@arg {real} r The scaling factor
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return rM.
function r44_scale(M, r, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = r*M[0][0];
	Mout[0][@1] = r*M[0][1];
	Mout[0][@2] = r*M[0][2];
	Mout[0][@3] = r*M[0][3];
	Mout[1][@0] = r*M[1][0];
	Mout[1][@1] = r*M[1][1];
	Mout[1][@2] = r*M[1][2];
	Mout[1][@3] = r*M[1][3];
	Mout[2][@0] = r*M[2][0];
	Mout[2][@1] = r*M[2][1];
	Mout[2][@2] = r*M[2][2];
	Mout[2][@3] = r*M[2][3];
	Mout[3][@0] = r*M[3][0];
	Mout[3][@1] = r*M[3][1];
	Mout[3][@2] = r*M[3][2];
	Mout[3][@3] = r*M[3][3];
	return Mout;
}
#macro r44_scale_to r44_scale

///@func r44_transpose(M, <Mout>)
///@arg {r44} M The original 4x4 matrix
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a transpose of M.
function r44_transpose(M, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a02 = M[0][2];
	var a03 = M[0][3];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var a12 = M[1][2];
	var a13 = M[1][3];
	var a20 = M[2][0];
	var a21 = M[2][1];
	var a22 = M[2][2];
	var a23 = M[2][3];
	var a30 = M[3][0];
	var a31 = M[3][1];
	var a32 = M[3][2];
	var a33 = M[3][3];
	Mout[0][@0] = a00;
	Mout[0][@1] = a10;
	Mout[0][@2] = a20;
	Mout[0][@3] = a30;
	Mout[1][@0] = a01;
	Mout[1][@1] = a11;
	Mout[1][@2] = a21;
	Mout[1][@3] = a31;
	Mout[2][@0] = a02;
	Mout[2][@1] = a12;
	Mout[2][@2] = a22;
	Mout[2][@3] = a32;
	Mout[3][@0] = a03;
	Mout[3][@1] = a13;
	Mout[3][@2] = a23;
	Mout[3][@3] = a33;
	return Mout;
}
#macro r44_transpose_to r44_transpose

///@func r44_multiply(M1, M2, <Mout>)
///@arg {r44} M1 The first 4x4 matrix.
///@arg {r44} M2 The second 4x4 matrix.
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1*M2.
function r44_multiply(M1, M2, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	var a00 = M1[0][0];
	var a01 = M1[0][1];
	var a02 = M1[0][2];
	var a03 = M1[0][3];
	var a10 = M1[1][0];
	var a11 = M1[1][1];
	var a12 = M1[1][2];
	var a13 = M1[1][3];
	var a20 = M1[2][0];
	var a21 = M1[2][1];
	var a22 = M1[2][2];
	var a23 = M1[2][3];
	var a30 = M1[3][0];
	var a31 = M1[3][1];
	var a32 = M1[3][2];
	var a33 = M1[3][3];
	var b00 = M2[0][0];
	var b01 = M2[0][1];
	var b02 = M2[0][2];
	var b03 = M2[0][3];
	var b10 = M2[1][0];
	var b11 = M2[1][1];
	var b12 = M2[1][2];
	var b13 = M2[1][3];
	var b20 = M2[2][0];
	var b21 = M2[2][1];
	var b22 = M2[2][2];
	var b23 = M2[2][3];
	var b30 = M2[3][0];
	var b31 = M2[3][1];
	var b32 = M2[3][2];
	var b33 = M2[3][3];
	Mout[0][@0] = a00*b00 + a01*b10 + a02*b20 + a03*b30;
	Mout[0][@1] = a00*b01 + a01*b11 + a02*b21 + a03*b31;
	Mout[0][@2] = a00*b02 + a01*b12 + a02*b22 + a03*b32;
	Mout[0][@3] = a00*b03 + a01*b13 + a02*b23 + a03*b33;
	Mout[1][@0] = a10*b00 + a11*b10 + a12*b20 + a13*b30;
	Mout[1][@1] = a10*b01 + a11*b11 + a12*b21 + a13*b31;
	Mout[1][@2] = a10*b02 + a11*b12 + a12*b22 + a13*b32;
	Mout[1][@3] = a10*b03 + a11*b13 + a12*b23 + a13*b33;
	Mout[2][@0] = a20*b00 + a21*b10 + a22*b20 + a23*b30;
	Mout[2][@1] = a20*b01 + a21*b11 + a22*b21 + a23*b31;
	Mout[2][@2] = a20*b02 + a21*b12 + a22*b22 + a23*b32;
	Mout[2][@3] = a20*b03 + a21*b13 + a22*b23 + a23*b33;
	Mout[3][@0] = a30*b00 + a31*b10 + a32*b20 + a33*b30;
	Mout[3][@1] = a30*b01 + a31*b11 + a32*b21 + a33*b31;
	Mout[3][@2] = a30*b02 + a31*b12 + a32*b22 + a33*b32;
	Mout[3][@3] = a30*b03 + a31*b13 + a32*b23 + a33*b33;
	return Mout;
}
#macro r44_multiply_to r44_multiply

///@func r44_transform(M, v, <vout>)
///@arg {r44} M The 4x4 matrix.
///@arg {r4} v The 4D vector to transform.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If not specified, a new vector will be created.
///@desc Return Mv.
function r44_transform(M, v, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a02 = M[0][2];
	var a03 = M[0][3];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var a12 = M[1][2];
	var a13 = M[1][3];
	var a20 = M[2][0];
	var a21 = M[2][1];
	var a22 = M[2][2];
	var a23 = M[2][3];
	var a30 = M[3][0];
	var a31 = M[3][1];
	var a32 = M[3][2];
	var a33 = M[3][3];
	var b0 = v[0];
	var b1 = v[1];
	var b2 = v[2];
	var b3 = v[3];
	vout[@0] = a00*b0 + a01*b1 + a02*b2 + a03*b3;
	vout[@1] = a10*b0 + a11*b1 + a12*b2 + a13*b3;
	vout[@2] = a20*b0 + a21*b1 + a22*b2 + a23*b3;
	vout[@3] = a30*b0 + a31*b1 + a32*b2 + a33*b3;
	return vout;
}
#macro r44_transform_to r44_transform

///@func r44_invert(M, <Mout>)
///@arg {r44} M The original 4x4 matrix
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a inverse of M. If singular, return undefined.
function r44_invert(M, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	var a00 = M[0][0];
	var a01 = M[0][1];
	var a02 = M[0][2];
	var a03 = M[0][3];
	var a10 = M[1][0];
	var a11 = M[1][1];
	var a12 = M[1][2];
	var a13 = M[1][3];
	var a20 = M[2][0];
	var a21 = M[2][1];
	var a22 = M[2][2];
	var a23 = M[2][3];
	var a30 = M[3][0];
	var a31 = M[3][1];
	var a32 = M[3][2];
	var a33 = M[3][3];
	var det = a00*a11*a22*a33+a00*a12*a23*a31+a00*a13*a21*a32
           +a01*a10*a23*a32+a01*a12*a20*a33+a01*a13*a22*a30
           +a02*a10*a21*a33+a02*a11*a23*a30+a02*a13*a20*a31
           +a03*a10*a22*a31+a03*a11*a20*a32+a03*a12*a21*a30
           -a00*a11*a23*a32-a00*a12*a21*a33-a00*a13*a22*a31
           -a01*a10*a22*a33-a01*a12*a23*a30-a01*a13*a20*a32
           -a02*a10*a23*a31-a02*a11*a20*a33-a02*a13*a21*a30
           -a03*a10*a21*a32-a03*a11*a22*a30-a03*a12*a20*a31;
	if (det == 0) {
		return undefined;
	} else {
		Mout[0][@0] = (a11*a22*a33+a12*a23*a31+a13*a21*a32-a11*a23*a32-a12*a21*a33-a13*a22*a31)/det;
		Mout[0][@1] = (a01*a23*a32+a02*a21*a33+a03*a22*a31-a01*a22*a33-a02*a23*a31-a03*a21*a32)/det;
		Mout[0][@2] = (a01*a12*a33+a02*a13*a31+a03*a11*a32-a01*a13*a32-a02*a11*a33-a03*a12*a31)/det;
		Mout[0][@3] = (a01*a13*a22+a02*a11*a23+a03*a12*a21-a01*a12*a23-a02*a13*a21-a03*a11*a22)/det;
		Mout[1][@0] = (a10*a23*a32+a12*a20*a33+a13*a22*a30-a10*a22*a33-a12*a23*a30-a13*a20*a32)/det;
		Mout[1][@1] = (a00*a22*a33+a02*a23*a30+a03*a20*a32-a00*a23*a32-a02*a20*a33-a03*a22*a30)/det;
		Mout[1][@2] = (a00*a13*a32+a02*a10*a33+a03*a12*a30-a00*a12*a33-a02*a13*a30-a03*a10*a32)/det;
		Mout[1][@3] = (a00*a12*a23+a02*a13*a20+a03*a10*a22-a00*a13*a22-a02*a10*a23-a03*a12*a20)/det;
		Mout[2][@0] = (a10*a21*a33+a11*a23*a30+a13*a20*a31-a10*a23*a31-a11*a20*a33-a13*a21*a30)/det;
		Mout[2][@1] = (a00*a23*a31+a01*a20*a33+a03*a21*a30-a00*a21*a33-a01*a23*a30-a03*a20*a31)/det;
		Mout[2][@2] = (a00*a11*a33+a01*a13*a30+a03*a10*a31-a00*a13*a31-a01*a10*a33-a03*a11*a30)/det;
		Mout[2][@3] = (a00*a13*a21+a01*a10*a23+a03*a11*a20-a00*a11*a23-a01*a13*a20-a03*a10*a21)/det;
		Mout[3][@0] = (a10*a22*a31+a11*a20*a32+a12*a21*a30-a10*a21*a32-a11*a22*a30-a12*a20*a31)/det;
		Mout[3][@1] = (a00*a21*a32+a01*a22*a30+a02*a20*a31-a00*a22*a31-a01*a20*a32-a02*a21*a30)/det;
		Mout[3][@2] = (a00*a12*a31+a01*a10*a32+a02*a11*a30-a00*a11*a32-a01*a12*a30-a02*a10*a31)/det;
		Mout[3][@3] = (a00*a11*a22+a01*a12*a20+a02*a10*a21-a00*a12*a21-a01*a10*a22-a02*a11*a20)/det;
		return Mout;
	}
}
#macro r44_invert_to r44_invert

///@func r44_det(M)
///@arg {r44} M The original 4x4 matrix
///@func Return the determinant of 4x4 matrix M.
function r44_det(M) {
	GMLINEAR_INLINE;
	return M[0][0]*M[1][1]*M[2][2]*M[3][3]+M[0][0]*M[1][2]*M[2][3]*M[3][1]+M[0][0]*M[1][3]*M[2][1]*M[3][2]
           +M[0][1]*M[1][0]*M[2][3]*M[3][2]+M[0][1]*M[1][2]*M[2][0]*M[3][3]+M[0][1]*M[1][3]*M[2][2]*M[3][0]
           +M[0][2]*M[1][0]*M[2][1]*M[3][3]+M[0][2]*M[1][1]*M[2][3]*M[3][0]+M[0][2]*M[1][3]*M[2][0]*M[3][1]
           +M[0][3]*M[1][0]*M[2][2]*M[3][1]+M[0][3]*M[1][1]*M[2][0]*M[3][2]+M[0][3]*M[1][2]*M[2][1]*M[3][0]
           -M[0][0]*M[1][1]*M[2][3]*M[3][2]-M[0][0]*M[1][2]*M[2][1]*M[3][3]-M[0][0]*M[1][3]*M[2][2]*M[3][1]
           -M[0][1]*M[1][0]*M[2][2]*M[3][3]-M[0][1]*M[1][2]*M[2][3]*M[3][0]-M[0][1]*M[1][3]*M[2][0]*M[3][2]
           -M[0][2]*M[1][0]*M[2][3]*M[3][1]-M[0][2]*M[1][1]*M[2][0]*M[3][3]-M[0][2]*M[1][3]*M[2][1]*M[3][0]
           -M[0][3]*M[1][0]*M[2][1]*M[3][2]-M[0][3]*M[1][1]*M[2][2]*M[3][0]-M[0][3]*M[1][2]*M[2][0]*M[3][1];
}

///@func r44_tr(M)
///@arg {r44} M The original 4x4 matrix
///@func Return the trace of 4x4 matrix M.
function r44_tr(M) {
	GMLINEAR_INLINE;
	return M[0][0]+M[1][1]+M[2][2]+M[3][3];
}

///@func r44_encode_string(M)
///@arg {r44} M The 4x4 matrix to encode.
///@desc Return the string form of 4x4 matrix M.
function r44_encode_string(M) {
	GMLINEAR_INLINE;
	return string_replace_all(
		string_format(M[0][0], 15, 14)+","+
		string_format(M[0][1], 15, 14)+","+
		string_format(M[0][2], 15, 14)+","+
		string_format(M[0][3], 15, 14)+";"+
		string_format(M[1][0], 15, 14)+","+
		string_format(M[1][1], 15, 14)+","+
		string_format(M[1][2], 15, 14)+","+
		string_format(M[1][3], 15, 14)+";"+
		string_format(M[2][0], 15, 14)+","+
		string_format(M[2][1], 15, 14)+","+
		string_format(M[2][2], 15, 14)+","+
		string_format(M[2][3], 15, 14)+";"+
		string_format(M[3][0], 15, 14)+","+
		string_format(M[3][1], 15, 14)+","+
		string_format(M[3][2], 15, 14)+","+
		string_format(M[3][3], 15, 14)
	, " ", "");
}

///@description r44_decode_string(str, <Mout>)
///@arg {string} str The string to decode.
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the decoded form of str.
function r44_decode_string(_str, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	var pos;
	var str = _str;
	pos = string_pos(",", str);
	Mout[0][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[0][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[0][@2] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(";", str);
	Mout[0][@3] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[1][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[1][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[1][@2] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(";", str);
	Mout[1][@3] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[2][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[2][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[2][@2] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(";", str);
	Mout[2][@3] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[3][@0] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[3][@1] = real(string_copy(str, 1, pos-1));
	str = string_delete(str, 1, pos);
	pos = string_pos(",", str);
	Mout[3][@2] = real(string_copy(str, 1, pos-1));
	Mout[3][@3] = real(string_delete(str, 1, pos));
	return Mout;
}
#macro r44_decode_string_to r44_decode_string

///@func r44_encode_base64(M)
///@arg {r44} M The 4x4 matrix to encode.
///@desc Return the base64 form of 4x4 matrix M.
function r44_encode_base64(M) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(128, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, M[0][0]);
	buffer_write(buffer, buffer_f64, M[0][1]);
	buffer_write(buffer, buffer_f64, M[0][2]);
	buffer_write(buffer, buffer_f64, M[0][3]);
	buffer_write(buffer, buffer_f64, M[1][0]);
	buffer_write(buffer, buffer_f64, M[1][1]);
	buffer_write(buffer, buffer_f64, M[1][2]);
	buffer_write(buffer, buffer_f64, M[1][3]);
	buffer_write(buffer, buffer_f64, M[2][0]);
	buffer_write(buffer, buffer_f64, M[2][1]);
	buffer_write(buffer, buffer_f64, M[2][2]);
	buffer_write(buffer, buffer_f64, M[2][3]);
	buffer_write(buffer, buffer_f64, M[3][0]);
	buffer_write(buffer, buffer_f64, M[3][1]);
	buffer_write(buffer, buffer_f64, M[3][2]);
	buffer_write(buffer, buffer_f64, M[3][3]);
	var result = buffer_base64_encode(buffer, 0, 128);
	buffer_delete(buffer);
	return result;
}

///@func r44_decode_base64(enc, <Mout>)
///@arg {string} enc The string to decode.
///@arg {r44} <Mout> (Optional) The output 4x4 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the base64-decoded form of str.
function r44_decode_base64(enc, Mout=[[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(128, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	Mout[0][@0] = buffer_read(buffer, buffer_f64);
	Mout[0][@1] = buffer_read(buffer, buffer_f64);
	Mout[0][@2] = buffer_read(buffer, buffer_f64);
	Mout[0][@3] = buffer_read(buffer, buffer_f64);
	Mout[1][@0] = buffer_read(buffer, buffer_f64);
	Mout[1][@1] = buffer_read(buffer, buffer_f64);
	Mout[1][@2] = buffer_read(buffer, buffer_f64);
	Mout[1][@3] = buffer_read(buffer, buffer_f64);
	Mout[2][@0] = buffer_read(buffer, buffer_f64);
	Mout[2][@1] = buffer_read(buffer, buffer_f64);
	Mout[2][@2] = buffer_read(buffer, buffer_f64);
	Mout[2][@3] = buffer_read(buffer, buffer_f64);
	Mout[3][@0] = buffer_read(buffer, buffer_f64);
	Mout[3][@1] = buffer_read(buffer, buffer_f64);
	Mout[3][@2] = buffer_read(buffer, buffer_f64);
	Mout[3][@3] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return Mout;
}
#macro r44_decode_base64_to r44_decode_base64
