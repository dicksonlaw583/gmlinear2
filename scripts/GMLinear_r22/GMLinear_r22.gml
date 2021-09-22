///@func r22(x00, x01, x10, x11)
///@arg {real} x00
///@arg {real} x01
///@arg {real} x10
///@arg {real} x11
///@desc Return a new 2x2 matrix.
function r22(x00, x01, x10, x11) {
	GMLINEAR_INLINE;
	return [
		[x00, x01],
		[x10, x11],
	];
}

///@func r22_identity()
///@desc Return the 2x2 identity matrix.
function r22_identity() {
	GMLINEAR_INLINE;
	return [
		[1, 0],
		[0, 1],
	];
}

///@func r22_zero()
///@desc Return the 2x2 zero matrix.
function r22_zero() {
	GMLINEAR_INLINE;
	return [
		[0, 0],
		[0, 0],
	];
}

///@func r22_clone(M, <Mout>)
///@arg {r22} M The original 2x2 matrix
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a clone of M.
function r22_clone(M, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M[0][0];
	Mout[0][@1] = M[0][1];
	Mout[1][@0] = M[1][0];
	Mout[1][@1] = M[1][1];
	return Mout;
}
#macro r22_clone_to r22_clone

///@func r22_add(M1, M2, <Mout>)
///@arg {r22} M1 The first 2x2 matrix.
///@arg {r22} M2 The second 2x2 matrix.
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1+M2.
function r22_add(M1, M2, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M1[0][0]+M2[0][0];
	Mout[0][@1] = M1[0][1]+M2[0][1];
	Mout[1][@0] = M1[1][0]+M2[1][0];
	Mout[1][@1] = M1[1][1]+M2[1][1];
	return Mout;
}
#macro r22_add_to r22_add

///@func r22_subtract(M1, M2, <Mout>)
///@arg {r22} M1 The first 2x2 matrix.
///@arg {r22} M2 The second 2x2 matrix.
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1-M2.
function r22_subtract(M1, M2, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = M1[0][0]-M2[0][0];
	Mout[0][@1] = M1[0][1]-M2[0][1];
	Mout[1][@0] = M1[1][0]-M2[1][0];
	Mout[1][@1] = M1[1][1]-M2[1][1];
	return Mout;
}
#macro r22_subtract_to r22_subtract

///@func r22_scale(M, r, <Mout>)
///@arg {r22} M The original 2x2 matrix
///@arg {real} r The scaling factor
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return rM.
function r22_scale(M, r, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
	Mout[0][@0] = r*M[0][0];
	Mout[0][@1] = r*M[0][1];
	Mout[1][@0] = r*M[1][0];
	Mout[1][@1] = r*M[1][1];
	return Mout;
}
#macro r22_scale_to r22_scale

///@func r22_transpose(M, <Mout>)
///@arg {r22} M The original 2x2 matrix
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a transpose of M.
function r22_transpose(M, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
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
///@arg {r22} M1 The first 2x2 matrix.
///@arg {r22} M2 The second 2x2 matrix.
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return M1*M2.
function r22_multiply(M1, M2, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
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
///@arg {r22} M The 2x2 matrix.
///@arg {r2} v The 2D vector to transform.
///@arg {r2} <vout> (Optional) The output 2D vector to overwrite. If not specified, a new vector will be created.
///@desc Return Mv.
function r22_transform(M, v, vout=[0, 0]) {
	GMLINEAR_INLINE;
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
///@arg {r22} M The original 2x2 matrix
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If not specified, a new matrix will be created.
///@desc Return a inverse of M. If singular, return undefined.
function r22_invert(M, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
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
