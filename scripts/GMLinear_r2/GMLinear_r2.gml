///@func r2(x0, x1)
///@arg {real} x0
///@arg {real} x1
///@desc Return a new 2D vector.
function r2(x0, x1) {
	GMLINEAR_INLINE
	return [x0, x1];
}

///@func r2_zero()
///@desc Return the 2D zero vector.
function r2_zero() {
	GMLINEAR_INLINE
	return [0, 0];
}

///@func r2_clone(v, <vout>)
///@arg {Array<Real>} v The 2D vector to operate on.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return a clone of the given 2D vector.
function r2_clone(v, vout=[0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = v[0];
	vout[@1] = v[1];
	return vout;
}
#macro r2_clone_to r2_clone

///@func r2_add(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1+v2.
function r2_add(v1, v2, vout=[0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = v1[0]+v2[0];
	vout[@1] = v1[1]+v2[1];
	return vout;
}
#macro r2_add_to r2_add

///@func r2_subtract(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1-v2.
function r2_subtract(v1, v2, vout=[0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = v1[0]-v2[0];
	vout[@1] = v1[1]-v2[1];
	return vout;
}
#macro r2_subtract_to r2_subtract

///@func r2_scale(v, r, <vout>)
///@arg {Array<Real>} v The 2D vector to use.
///@arg {real} r The scaling factor.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return rv.
function r2_scale(v, r, vout=[0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = r*v[0];
	vout[@1] = r*v[1];
	return vout;
}
#macro r2_scale_to r2_scale

///@func r2_dot(v1, v2)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@desc Return v1.v2.
function r2_dot(v1, v2) {
	GMLINEAR_INLINE
	return v1[0]*v2[0]+v1[1]*v2[1];
}

///@func r2_norm(v)
///@arg {Array<Real>} v The 2D vector to operate on.
///@desc Return the Euclidean norm of the 2D vector.
function r2_norm(v) {
	GMLINEAR_INLINE
	return point_distance(0, 0, v[0], v[1]);
}

///@func r2_dist(v1, v2)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@desc Return the Euclidean distance between v1 and v2.
function r2_dist(v1, v2) {
	GMLINEAR_INLINE
	return point_distance(v1[0], v1[1], v2[0], v2[1]);
}

///@func r2_1norm(v)
///@arg {Array<Real>} v The 2D vector to operate on.
///@desc Return the Manhattan norm of the 2D vector.
function r2_1norm(v) {
	GMLINEAR_INLINE
	return abs(v[0])+abs(v[1]);
}

///@func r2_1dist(v1, v2)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@desc Return the Manhattan distance between v1 and v2.
function r2_1dist(v1, v2) {
	GMLINEAR_INLINE
	return abs(v1[0]-v2[0])+abs(v1[1]-v2[1]);
}

///@func r2_maxnorm(v)
///@arg {Array<Real>} v The 2D vector to operate on.
///@desc Return the max norm of the 2D vector.
function r2_maxnorm(v) {
	GMLINEAR_INLINE
	return max(abs(v[0]), abs(v[1]));
}

///@func r2_unit(v, <vout>)
///@arg {Array<Real>} v The 2D vector to operate on.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the 2D unit vector in the direction of v.
function r2_unit(v, vout=[0, 0]) {
	GMLINEAR_INLINE
	if (v[0] == 0 && v[1] == 0) {
		vout[@0] = 0;
		vout[@1] = 0;
	} else {
		var mag = point_distance(0, 0, v[0], v[1]);
		vout[@0] = v[0]/mag;
		vout[@1] = v[1]/mag;
	}
	return vout;
}
#macro r2_unit_to r2_unit

///@func r2_lerp(v1, v2, amount, <vout>)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@arg {real} amount The interpolation factor. 0=first vector, 1=second vector
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the linear interpolation between 2D vectors v1 and v2.
function r2_lerp(v1, v2, amount, vout=[0, 0]) {
	GMLINEAR_INLINE
	vout[@0] = lerp(v1[0], v2[0], amount);
	vout[@1] = lerp(v1[1], v2[1], amount);
	return vout;
}
#macro r2_lerp_to r2_lerp

///@func r2_proj(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the projection from v1 onto v2
function r2_proj(v1, v2, vout=[0, 0]) {
	GMLINEAR_INLINE
	var b0 = v2[0];
	var b1 = v2[1];
	var factor = (b0*v1[0]+b1*v1[1])/(b0*b0+b1*b1);
	vout[@0] = factor*b0;
	vout[@1] = factor*b1;
	return vout;
}
#macro r2_proj_to r2_proj

///@func r2_rej(v1, v2, <vout>)
///@arg {Array<Real>} v1 The first 2D vector.
///@arg {Array<Real>} v2 The second 2D vector.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the rejection from v1 onto v2
function r2_rej(v1, v2, vout=[0, 0]) {
	GMLINEAR_INLINE
	var b0 = v2[0];
	var b1 = v2[1];
	var factor = (b0*v1[0]+b1*v1[1])/(b0*b0+b1*b1);
	vout[@0] = v1[0]-factor*b0;
	vout[@1] = v1[1]-factor*b1;
	return vout;
}
#macro r2_rej_to r2_rej

///@func r2_encode_string(v)
///@arg {Array<Real>} v The 2D vector to encode.
///@desc Return the string form of 2D vector v.
function r2_encode_string(v) {
	GMLINEAR_INLINE
	return string_replace_all(string_format(v[0], 15, 14)+","+string_format(v[1], 15, 14), " ", "");
}

///@func r2_decode_string(str, <vout>)
///@arg {string} str The string to decode.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the decoded form of str.
function r2_decode_string(str, vout=[0, 0]) {
	GMLINEAR_INLINE
	var pos = string_pos(",", str);
	vout[@0] = real(string_copy(str, 1, pos-1));
	vout[@1] = real(string_delete(str, 1, pos));
	return vout;
}
#macro r2_decode_string_to r2_decode_string

///@func r2_encode_base64(v)
///@arg {Array<Real>} v The 2D vector to encode.
///@desc Return the base64 form of 2D vector v.
function r2_encode_base64(v) {
	GMLINEAR_INLINE
	var buffer = buffer_create(16, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, v[0]);
	buffer_write(buffer, buffer_f64, v[1]);
	var result = buffer_base64_encode(buffer, 0, 16);
	buffer_delete(buffer);
	return result;
}

///@func r2_decode_base64(enc, <vout>)
///@arg {string} enc The string to decode.
///@arg {Array<Real>} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the base64-decoded form of str.
function r2_decode_base64(enc, vout=[0, 0]) {
	GMLINEAR_INLINE
	var buffer = buffer_create(16, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	vout[@0] = buffer_read(buffer, buffer_f64);
	vout[@1] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return vout;
}
#macro r2_decode_base64_to r2_decode_base64
