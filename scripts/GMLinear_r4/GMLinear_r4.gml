///@func r4(x0, x1)
///@arg {real} x0
///@arg {real} x1
///@arg {real} x2
///@arg {real} x3
///@desc Return a new 4D vector.
function r4(x0, x1, x2, x3) {
	GMLINEAR_INLINE;
	return [x0, x1, x2, x3];
}

///@func r4_zero()
///@desc Return the 4D zero vector.
function r4_zero() {
	GMLINEAR_INLINE;
	return [0, 0, 0, 0];
}

///@func r4_clone(v, <vout>)
///@arg {r4} v The 4D vector to operate on.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return a clone of the given 4D vector.
function r4_clone(v, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	vout[@0] = v[0];
	vout[@1] = v[1];
	vout[@2] = v[2];
	vout[@3] = v[3];
	return vout;
}
#macro r4_clone_to r4_clone

///@func r4_add(v1, v2, <vout>)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1+v2.
function r4_add(v1, v2, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	vout[@0] = v1[0]+v2[0];
	vout[@1] = v1[1]+v2[1];
	vout[@2] = v1[2]+v2[2];
	vout[@3] = v1[3]+v2[3];
	return vout;
}
#macro r4_add_to r4_add

///@func r4_subtract(v1, v2, <vout>)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return v1-v2.
function r4_subtract(v1, v2, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	vout[@0] = v1[0]-v2[0];
	vout[@1] = v1[1]-v2[1];
	vout[@2] = v1[2]-v2[2];
	vout[@3] = v1[3]-v2[3];
	return vout;
}
#macro r4_subtract_to r4_subtract

///@func r4_scale(v, r, <vout>)
///@arg {r4} v The 4D vector to use.
///@arg {real} r The scaling factor.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return rv.
function r4_scale(v, r, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	vout[@0] = r*v[0];
	vout[@1] = r*v[1];
	vout[@2] = r*v[2];
	vout[@3] = r*v[3];
	return vout;
}
#macro r4_scale_to r4_scale

///@func r4_dot(v1, v2)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@desc Return v1.v2.
function r4_dot(v1, v2) {
	GMLINEAR_INLINE;
	return v1[0]*v2[0]+v1[1]*v2[1]+v1[2]*v2[2]+v1[3]*v2[3];
}

///@func r4_norm(v)
///@arg {r4} v The 4D vector to operate on.
///@desc Return the Euclidean norm of the 4D vector.
function r4_norm(v) {
	GMLINEAR_INLINE;
	return sqrt(v[0]*v[0]+v[1]*v[1]+v[2]*v[2]+v[3]*v[3]);
}

///@func r4_dist(v1, v2)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@desc Return the Euclidean distance between v1 and v2.
function r4_dist(v1, v2) {
	GMLINEAR_INLINE;
	var d0 = v2[0]-v1[0];
	var d1 = v2[1]-v1[1];
	var d2 = v2[2]-v1[2];
	var d3 = v2[3]-v1[3];
	return sqrt(d0*d0 + d1*d1 + d2*d2 + d3*d3);
}

///@func r4_1norm(v)
///@arg {r4} v The 4D vector to operate on.
///@desc Return the Manhattan norm of the 4D vector.
function r4_1norm(v) {
	GMLINEAR_INLINE;
	return abs(v[0])+abs(v[1])+abs(v[2])+abs(v[3]);
}

///@func r4_1dist(v1, v2)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@desc Return the Manhattan distance between v1 and v2.
function r4_1dist(v1, v2) {
	GMLINEAR_INLINE;
	return abs(v1[0]-v2[0])+abs(v1[1]-v2[1])+abs(v1[2]-v2[2])+abs(v1[3]-v2[3]);
}

///@func r4_maxnorm(v)
///@arg {r4} v The 4D vector to operate on.
///@desc Return the max norm of the 4D vector.
function r4_maxnorm(v) {
	GMLINEAR_INLINE;
	return max(abs(v[0]), abs(v[1]), abs(v[2]), abs(v[3]));
}

///@func r4_unit(v, <vout>)
///@arg {r4} v The 4D vector to operate on.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return the 4D unit vector in the direction of v.
function r4_unit(v, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	if (v[0] == 0 && v[1] == 0 && v[2] == 0 && v[3] == 0) {
		vout[@0] = 0;
		vout[@1] = 0;
		vout[@2] = 0;
		vout[@3] = 0;
	} else {
		var mag = sqrt(v[0]*v[0]+v[1]*v[1]+v[2]*v[2]+v[3]*v[3]);
		vout[@0] = v[0]/mag;
		vout[@1] = v[1]/mag;
		vout[@2] = v[2]/mag;
		vout[@3] = v[3]/mag;
	}
	return vout;
}
#macro r4_unit_to r4_unit

///@func r4_lerp(v1, v2, amount, <vout>)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@arg {real} amount The interpolation factor. 0=first vector, 1=second vector
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return the linear interpolation between 4D vectors v1 and v2.
function r4_lerp(v1, v2, amount, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	vout[@0] = lerp(v1[0], v2[0], amount);
	vout[@1] = lerp(v1[1], v2[1], amount);
	vout[@2] = lerp(v1[2], v2[2], amount);
	vout[@3] = lerp(v1[3], v2[3], amount);
	return vout;
}
#macro r4_lerp_to r4_lerp

///@func r4_proj(v1, v2, <vout>)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return the projection from v1 onto v2
function r4_proj(v1, v2, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	var b0 = v2[0];
	var b1 = v2[1];
	var b2 = v2[2];
	var b3 = v2[3];
	var factor = (b0*v1[0]+b1*v1[1]+b2*v1[2]+b3*v1[3])/(b0*b0+b1*b1+b2*b2+b3*b3);
	vout[@0] = factor*b0;
	vout[@1] = factor*b1;
	vout[@2] = factor*b2;
	vout[@3] = factor*b3;
	return vout;
}
#macro r4_proj_to r4_proj

///@func r4_rej(v1, v2, <vout>)
///@arg {r4} v1 The first 4D vector.
///@arg {r4} v2 The second 4D vector.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return the rejection from v1 onto v2
function r4_rej(v1, v2, vout=[0, 0, 0, 0]) {
	GMLINEAR_INLINE;
	var b0 = v2[0];
	var b1 = v2[1];
	var b2 = v2[2];
	var b3 = v2[3];
	var factor = (b0*v1[0]+b1*v1[1]+b2*v1[2]+b3*v1[3])/(b0*b0+b1*b1+b2*b2+b3*b3);
	vout[@0] = v1[0]-factor*b0;
	vout[@1] = v1[1]-factor*b1;
	vout[@2] = v1[2]-factor*b2;
	vout[@3] = v1[3]-factor*b3;
	return vout;
}
#macro r4_rej_to r4_rej

///@func r4_encode_string(v)
///@arg {r4} v The 4D vector to encode.
///@desc Return the string form of 4D vector v.
function r4_encode_string(v) {
	GMLINEAR_INLINE;
	return string_replace_all(string_format(v[0], 15, 14)+","+string_format(v[1], 15, 14)+","+string_format(v[2], 15, 14)+","+string_format(v[3], 15, 14), " ", "");
}

///@func r4_decode_string(str, <vout>)
///@arg {string} str The string to decode.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return the decoded form of str.
function r4_decode_string(str, vout=[0, 0]) {
	GMLINEAR_INLINE;
	var _str, pos;
	_str = str;
	pos = string_pos(",", _str);
	vout[@ 0] = real(string_copy(_str, 1, pos-1));
	_str = string_delete(_str, 1, pos);
	pos = string_pos(",", _str);
	vout[@ 1] = real(string_copy(_str, 1, pos-1));
	_str = string_delete(_str, 1, pos);
	pos = string_pos(",", _str);
	vout[@ 2] = real(string_copy(_str, 1, pos-1));
	vout[@ 3] = real(string_delete(_str, 1, pos));
	return vout;
}
#macro r4_decode_string_to r4_decode_string

///@func r4_encode_base64(v)
///@arg {r4} v The 4D vector to encode.
///@desc Return the base64 form of 4D vector v.
function r4_encode_base64(v) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(32, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, v[0]);
	buffer_write(buffer, buffer_f64, v[1]);
	buffer_write(buffer, buffer_f64, v[2]);
	buffer_write(buffer, buffer_f64, v[3]);
	var result = buffer_base64_encode(buffer, 0, 32);
	buffer_delete(buffer);
	return result;
}

///@func r4_decode_base64(enc, <vout>)
///@arg {string} enc The string to decode.
///@arg {r4} <vout> (Optional) The output 4D vector to overwrite. If unspecified, return a new vector.
///@desc Return the base64-decoded form of str.
function r4_decode_base64(enc, vout=[0, 0]) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(32, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	vout[@0] = buffer_read(buffer, buffer_f64);
	vout[@1] = buffer_read(buffer, buffer_f64);
	vout[@2] = buffer_read(buffer, buffer_f64);
	vout[@3] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return vout;
}
#macro r4_decode_base64_to r4_decode_base64
