///@func r3(x0, x1, x2)
///@arg {real} x0
///@arg {real} x1
///@arg {real} x2
///@desc Return a new 3D vector.
function r3(x0, x1, x2) {
	GMLINEAR_INLINE
	return [x0, x1, x2];
}

///@func r3_zero()
///@desc Return the 3D zero vector.
function r3_zero() {
	GMLINEAR_INLINE
	return [0, 0, 0];
}

///@func r3_clone(v, <vout>)
///@arg {Array<Real>} v The 3D vector to operate on.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return a clone of the given 3D vector.
function r3_clone(v, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = v[0];
	vout[@1] = v[1];
	vout[@2] = v[2];
	return vout;
}
#macro r3_clone_to r3_clone

///@func r3_add(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1+v2.
function r3_add(v1, v2, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = v1[0]+v2[0];
	vout[@1] = v1[1]+v2[1];
	vout[@2] = v1[2]+v2[2];
	return vout;
}
#macro r3_add_to r3_add

///@func r3_subtract(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1-v2.
function r3_subtract(v1, v2, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = v1[0]-v2[0];
	vout[@1] = v1[1]-v2[1];
	vout[@2] = v1[2]-v2[2];
	return vout;
}
#macro r3_subtract_to r3_subtract

///@func r3_scale(v, r, <vout>)
///@arg {Array<Real>} v The 3D vector to use.
///@arg {real} r The scaling factor.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return rv.
function r3_scale(v, r, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = r*v[0];
	vout[@1] = r*v[1];
	vout[@2] = r*v[2];
	return vout;
}
#macro r3_scale_to r3_scale

///@func r3_dot(v1, v2)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@desc Return v1.v2.
function r3_dot(v1, v2) {
	GMLINEAR_INLINE
	return v1[0]*v2[0]+v1[1]*v2[1]+v1[2]*v2[2];
}

///@func r3_cross(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1 x v2.
function r3_cross(v1, v2, vout=[0, 0, 0]) {
	var a0 = v1[0];
	var a1 = v1[1];
	var a2 = v1[2];
	var b0 = v2[0];
	var b1 = v2[1];
	var b2 = v2[2];
	vout[@0] = a1*b2-a2*b1;
	vout[@1] = a2*b0-a0*b2;
	vout[@2] = a0*b1-a1*b0;
	return vout;
}
#macro r3_cross_to r3_cross

///@func r3_norm(v)
///@arg {Array<Real>} v The 3D vector to operate on.
///@desc Return the Euclidean norm of the 3D vector.
function r3_norm(v) {
	GMLINEAR_INLINE
	return point_distance_3d(0, 0, 0, v[0], v[1], v[2]);
}

///@func r3_dist(v1, v2)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@desc Return the Euclidean distance between v1 and v2.
function r3_dist(v1, v2) {
	GMLINEAR_INLINE
	return point_distance_3d(v1[0], v1[1], v1[2], v2[0], v2[1], v2[2]);
}

///@func r3_1norm(v)
///@arg {Array<Real>} v The 3D vector to operate on.
///@desc Return the Manhattan norm of the 3D vector.
function r3_1norm(v) {
	GMLINEAR_INLINE
	return abs(v[0])+abs(v[1])+abs(v[2]);
}

///@func r3_1dist(v1, v2)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@desc Return the Manhattan distance between v1 and v2.
function r3_1dist(v1, v2) {
	GMLINEAR_INLINE
	return abs(v1[0]-v2[0])+abs(v1[1]-v2[1])+abs(v1[2]-v2[2]);
}

///@func r3_maxnorm(v)
///@arg {Array<Real>} v The 3D vector to operate on.
///@desc Return the max norm of the 3D vector.
function r3_maxnorm(v) {
	GMLINEAR_INLINE
	return max(abs(v[0]), abs(v[1]), abs(v[2]));
}

///@func r3_unit(v, <vout>)
///@arg {Array<Real>} v The 3D vector to operate on.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the 3D unit vector in the direction of v.
function r3_unit(v, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	if (v[0] == 0 && v[1] == 0 && v[2] == 0) {
		vout[@0] = 0;
		vout[@1] = 0;
		vout[@2] = 0;
	} else {
		var mag = point_distance_3d(0, 0, 0, v[0], v[1], v[2]);
		vout[@0] = v[0]/mag;
		vout[@1] = v[1]/mag;
		vout[@2] = v[2]/mag;
	}
	return vout;
}
#macro r3_unit_to r3_unit

///@func r3_lerp(v1, v2, amount, <vout>)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@arg {real} amount The interpolation factor. 0=first vector, 1=second vector
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the linear interpolation between 3D vectors v1 and v2.
function r3_lerp(v1, v2, amount, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = lerp(v1[0], v2[0], amount);
	vout[@1] = lerp(v1[1], v2[1], amount);
	vout[@2] = lerp(v1[2], v2[2], amount);
	return vout;
}
#macro r3_lerp_to r3_lerp

///@func r3_proj(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the projection from v1 onto v2
function r3_proj(v1, v2, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	var b0 = v2[0];
	var b1 = v2[1];
	var b2 = v2[2];
	var factor = (b0*v1[0]+b1*v1[1]+b2*v1[2])/(b0*b0+b1*b1+b2*b2);
	vout[@0] = factor*b0;
	vout[@1] = factor*b1;
	vout[@2] = factor*b2;
	return vout;
}
#macro r3_proj_to r3_proj

///@func r3_rej(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 3D vector.
///@arg {Array<Real>} v2 The second 3D vector.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the rejection from v1 onto v2
function r3_rej(v1, v2, vout=[0, 0, 0]) {
	GMLINEAR_INLINE
	var b0 = v2[0];
	var b1 = v2[1];
	var b2 = v2[2];
	var factor = (b0*v1[0]+b1*v1[1]+b2*v1[2])/(b0*b0+b1*b1+b2*b2);
	vout[@0] = v1[0]-factor*b0;
	vout[@1] = v1[1]-factor*b1;
	vout[@2] = v1[2]-factor*b2;
	return vout;
}
#macro r3_rej_to r3_rej

///@func r3_encode_string(v)
///@arg {Array<Real>} v The 3D vector to encode.
///@desc Return the string form of 3D vector v.
function r3_encode_string(v) {
	GMLINEAR_INLINE
	return string_replace_all(string_format(v[0], 15, 14)+","+string_format(v[1], 15, 14)+","+string_format(v[2], 15, 14), " ", "");
}

///@func r3_decode_string(str, <vout>)
///@arg {string} str The string to decode.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the decoded form of str.
function r3_decode_string(str, vout=[0, 0]) {
	GMLINEAR_INLINE
	var _str, pos;
	_str = str;
	pos = string_pos(",", _str);
	vout[@ 0] = real(string_copy(_str, 1, pos-1));
	_str = string_delete(_str, 1, pos);
	pos = string_pos(",", _str);
	vout[@ 1] = real(string_copy(_str, 1, pos-1));
	vout[@ 2] = real(string_delete(_str, 1, pos));
	return vout;
}
#macro r3_decode_string_to r3_decode_string

///@func r3_encode_base64(v)
///@arg {Array<Real>} v The 3D vector to encode.
///@desc Return the base64 form of 3D vector v.
function r3_encode_base64(v) {
	GMLINEAR_INLINE
	var buffer = buffer_create(24, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, v[0]);
	buffer_write(buffer, buffer_f64, v[1]);
	buffer_write(buffer, buffer_f64, v[2]);
	var result = buffer_base64_encode(buffer, 0, 24);
	buffer_delete(buffer);
	return result;
}

///@func r3_decode_base64(enc, <vout>)
///@arg {string} enc The string to decode.
///@arg {Array<Real>} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the base64-decoded form of str.
function r3_decode_base64(enc, vout=[0, 0]) {
	GMLINEAR_INLINE
	var buffer = buffer_create(24, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	vout[@0] = buffer_read(buffer, buffer_f64);
	vout[@1] = buffer_read(buffer, buffer_f64);
	vout[@2] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return vout;
}
#macro r3_decode_base64_to r3_decode_base64
