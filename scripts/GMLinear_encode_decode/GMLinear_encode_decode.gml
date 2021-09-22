///@func r2_encode_string(v)
///@arg {r2} v The 2D vector to encode.
///@desc Return the string form of 2D vector v.
function r2_encode_string(v) {
	GMLINEAR_INLINE;
	return string_replace_all(string_format(v[0], 15, 14)+","+string_format(v[1], 15, 14), " ", "");
}

///@func r2_decode_string(str, <vout>)
///@arg {string} str The string to decode.
///@arg {r2} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the decoded form of str.
function r2_decode_string(str, vout=[0, 0]) {
	GMLINEAR_INLINE;
	var pos = string_pos(",", str);
	vout[@0] = real(string_copy(str, 1, pos-1));
	vout[@1] = real(string_delete(str, 1, pos));
	return vout;
}
#macro r2_decode_string_to r2_decode_string

///@func r2_encode_base64(v)
///@arg {r2} v The 2D vector to encode.
///@desc Return the base64 form of 2D vector v.
function r2_encode_base64(v) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(16, buffer_fixed, 1);
	buffer_write(buffer, buffer_f64, v[0]);
	buffer_write(buffer, buffer_f64, v[1]);
	var result = buffer_base64_encode(buffer, 0, 16);
	buffer_delete(buffer);
	return result;
}

///@func r2_decode_base64(enc, <vout>)
///@arg {string} enc The string to decode.
///@arg {r2} <vout> (Optional) The output 2D vector to overwrite. If unspecified, return a new vector.
///@desc Return the base64-decoded form of str.
function r2_decode_base64(enc, vout=[0, 0]) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(16, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	vout[@0] = buffer_read(buffer, buffer_f64);
	vout[@1] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return vout;
}
#macro r2_decode_base64_to r2_decode_base64

///@func r3_encode_string(v)
///@arg {r3} v The 3D vector to encode.
///@desc Return the string form of 3D vector v.
function r3_encode_string(v) {
	GMLINEAR_INLINE;
	return string_replace_all(string_format(v[0], 15, 14)+","+string_format(v[1], 15, 14)+","+string_format(v[2], 15, 14), " ", "");
}

///@func r3_decode_string(str, <vout>)
///@arg {string} str The string to decode.
///@arg {r3} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the decoded form of str.
function r3_decode_string(str, vout=[0, 0]) {
	GMLINEAR_INLINE;
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
///@arg {r3} v The 3D vector to encode.
///@desc Return the base64 form of 3D vector v.
function r3_encode_base64(v) {
	GMLINEAR_INLINE;
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
///@arg {r3} <vout> (Optional) The output 3D vector to overwrite. If unspecified, return a new vector.
///@desc Return the base64-decoded form of str.
function r3_decode_base64(enc, vout=[0, 0]) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(24, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	vout[@0] = buffer_read(buffer, buffer_f64);
	vout[@1] = buffer_read(buffer, buffer_f64);
	vout[@2] = buffer_read(buffer, buffer_f64);
	buffer_delete(buffer);
	return vout;
}
#macro r3_decode_base64_to r3_decode_base64

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

///@func rn_encode_string(v)
///@arg {rn} v The n-dimensional vector to encode.
///@desc Return the string form of n-dimensional vector v.
function rn_encode_string(v) {
	GMLINEAR_INLINE;
	var v_dim = array_length(v);
	var result = "";
	for (var i = 0; i < v_dim; i++) {
		if (i != 0) {
			result += ",";
		}
		result += string_format(v[i], 15, 14);
	}
	return string_replace_all(result, " ", "");
}

///@func rn_decode_string(str, <vout>)
///@arg {string} str The string to decode.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return the decoded form of str.
function rn_decode_string(str, vout=[]) {
	GMLINEAR_INLINE;
	var v_dim = string_count(",", str);
	var pos;
	array_resize(vout, v_dim+1);
	for (var i = 0; i < v_dim; i++) {
		pos = string_pos(",", str);
		vout[@i] = real(string_copy(str, 1, pos-1));
		str = string_delete(str, 1, pos);
	}
	vout[@v_dim] = real(str);
	return vout;
}
#macro rn_decode_string_to rn_decode_string

///@func rn_encode_base64(v)
///@arg {rn} v The n-dimensional vector to encode.
///@desc Return the base64 form of n-dimensional vector v.
function rn_encode_base64(v) {
	GMLINEAR_INLINE;
	var v_dim = array_length(v);
	var buffer = buffer_create(8*v_dim, buffer_fixed, 1);
	for (var i = 0; i < v_dim; i++) {
		buffer_write(buffer, buffer_f64, v[i]);
	}
	var result = buffer_base64_encode(buffer, 0, 8*v_dim);
	buffer_delete(buffer);
	return result;
}

///@func rn_decode_base64(enc, n, <vout>)
///@arg {string} enc The string to decode.
///@arg {int} n The dimension of the vector.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return the base64-decoded form of str.
function rn_decode_base64(enc, n, vout=[]) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(8*n, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	array_resize(vout, n);
	for (var i = 0; i < n; i++) {
		vout[@i] = buffer_read(buffer, buffer_f64);
	}
	buffer_delete(buffer);
	return vout;
}
#macro rn_decode_base64_to rn_decode_base64
