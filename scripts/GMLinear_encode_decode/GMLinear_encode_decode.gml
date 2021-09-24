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

///@func r22_encode_string(M)
///@arg {r22} M The 2x2 matrix to encode.
///@desc Return the string form of 2x2 matrix M.
function r22_encode_string(M) {
	GMLINEAR_INLINE;
	return string_replace_all(
		string_format(M[0][0], 15, 14)+","+
		string_format(M[0][1], 15, 14)+";"+
		string_format(M[1][0], 15, 14)+","+
		string_format(M[1][1], 15, 14)
	, " ", "");
}

///@description r22_decode_string(str, <Mout>)
///@arg {string} str The string to decode.
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the decoded form of str.
function r22_decode_string(_str, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
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
///@arg {r22} M The 2x2 matrix to encode.
///@desc Return the base64 form of 2x2 matrix M.
function r22_encode_base64(M) {
	GMLINEAR_INLINE;
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
///@arg {r22} <Mout> (Optional) The output 2x2 matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the base64-decoded form of str.
function r22_decode_base64(enc, Mout=[[0, 0], [0, 0]]) {
	GMLINEAR_INLINE;
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

///@func rmn_encode_string(M)
///@arg {rmn} M The mxn matrix to encode.
///@desc Return the string form of M.
function rmn_encode_string(M) {
	GMLINEAR_INLINE;
	var result = "";
	var m = array_length(M);
	var n = array_length(M[0]);
	for (var i = 0; i < m; ++i) {
		var M_i = M[i];
		for (var j = 0; j < n; ++j) {
			if (j > 0) result += ",";
			result += string_format(M_i[j], 15, 14);
		}
		if (i < m-1) {
			result += ";";
		}
	}
	return string_replace_all(result, " ", "");
}

///@func rmn_decode_string(str)
///@arg {string} str The string to decode.
///@arg {r44} <Mout> (Optional) The output mxn matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the decoded form of str.
function rmn_decode_string(_str, Mout=rmn_zero(string_count(";", _str)+1, string_count(",", string_copy(_str, 1, string_pos(";", _str)))+1)) {
	var str = _str;
	var i_dim = string_count(";", str);
	var cpos, spos, rowstr, j_dim, Mout_i;
	for (var i = 0; i < i_dim; i++) {
		spos = string_pos(";", str);
		rowstr = string_copy(str, 1, spos-1);
		str = string_delete(str, 1, spos);
		j_dim = string_count(",", rowstr);
		Mout_i = Mout[i];
		for (var j = 0; j < j_dim; j++) {
			cpos = string_pos(",", rowstr);
			Mout_i[@j] = real(string_copy(rowstr, 1, cpos-1));
			rowstr = string_delete(rowstr, 1, cpos);
		}
		Mout_i[@j_dim] = real(rowstr);
	}
	Mout_i = Mout[i_dim];
	for (var j = 0; j < j_dim; j++) {
		cpos = string_pos(",", str);
		Mout_i[@j] = real(string_copy(str, 1, cpos-1));
		str = string_delete(str, 1, cpos);
	}
	Mout_i[@j_dim] = real(str);
	return Mout;
}
#macro rmn_decode_string_to rmn_decode_string

///@func rmn_encode_base64(M)
///@arg {rmn} M The mxn matrix to encode.
///@desc Return the base64 form of mxn matrix M.
function rmn_encode_base64(M) {
	GMLINEAR_INLINE;
	var m = array_length(M);
	var n = array_length(M[0]);
	var mn8 = m*n*8;
	var buffer = buffer_create(mn8, buffer_fixed, 1);
	for (var i = 0; i < m; i++) {
		var M_i = M[i];
		for (var j = 0; j < n; j++) {
			buffer_write(buffer, buffer_f64, M_i[j]);
		}
	}
	var result = buffer_base64_encode(buffer, 0, mn8);
	buffer_delete(buffer);
	return result;
}

///@func rmn_decode_base64(enc, m, n, <Mout>)
///@arg {string} enc The string to decode.
///@arg {int} m
///@arg {int} n
///@arg {rmn} <Mout> (Optional) The output mxn matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the base64-decoded form of str.
function rmn_decode_base64(enc, m, n, Mout=rmn_zero(m, n)) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(128, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	for (var i = 0; i < m; i++) {
		var Mout_i = Mout[i];
		for (var j = 0; j < n; j++) {
			Mout_i[@j] = buffer_read(buffer, buffer_f64);
		}
	}
	buffer_delete(buffer);
	return Mout;
}
#macro rmn_decode_base64_to rmn_decode_base64

///@func rnn_encode_string(M)
///@arg {rnn} M The nxn matrix to encode.
///@desc Return the string form of M.
function rnn_encode_string(M) {
	GMLINEAR_INLINE;
	var result = "";
	var n = array_length(M);
	for (var i = 0; i < n; ++i) {
		var M_i = M[i];
		for (var j = 0; j < n; ++j) {
			if (j > 0) result += ",";
			result += string_format(M_i[j], 15, 14);
		}
		if (i < n-1) {
			result += ";";
		}
	}
	return string_replace_all(result, " ", "");
}

///@func rnn_decode_string(str)
///@arg {string} str The string to decode.
///@arg {r44} <Mout> (Optional) The output nxn matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the decoded form of str.
function rnn_decode_string(_str, Mout=rnn_zero(string_count(";", _str)+1)) {
	var str = _str;
	var i_dim = string_count(";", str);
	var cpos, spos, rowstr, j_dim, Mout_i;
	for (var i = 0; i < i_dim; i++) {
		spos = string_pos(";", str);
		rowstr = string_copy(str, 1, spos-1);
		str = string_delete(str, 1, spos);
		j_dim = string_count(",", rowstr);
		Mout_i = Mout[i];
		for (var j = 0; j < j_dim; j++) {
			cpos = string_pos(",", rowstr);
			Mout_i[@j] = real(string_copy(rowstr, 1, cpos-1));
			rowstr = string_delete(rowstr, 1, cpos);
		}
		Mout_i[@j_dim] = real(rowstr);
	}
	Mout_i = Mout[i_dim];
	for (var j = 0; j < j_dim; j++) {
		cpos = string_pos(",", str);
		Mout_i[@j] = real(string_copy(str, 1, cpos-1));
		str = string_delete(str, 1, cpos);
	}
	Mout_i[@j_dim] = real(str);
	return Mout;
}
#macro rnn_decode_string_to rnn_decode_string

///@func rnn_encode_base64(M)
///@arg {rnn} M The nxn matrix to encode.
///@desc Return the base64 form of nxn matrix M.
function rnn_encode_base64(M) {
	GMLINEAR_INLINE;
	var n = array_length(M);
	var nn8 = n*n*8;
	var buffer = buffer_create(nn8, buffer_fixed, 1);
	for (var i = 0; i < n; i++) {
		var M_i = M[i];
		for (var j = 0; j < n; j++) {
			buffer_write(buffer, buffer_f64, M_i[j]);
		}
	}
	var result = buffer_base64_encode(buffer, 0, nn8);
	buffer_delete(buffer);
	return result;
}

///@func rnn_decode_base64(enc, n, <Mout>)
///@arg {string} enc The string to decode.
///@arg {int} n
///@arg {rnn} <Mout> (Optional) The output nxn matrix to overwrite. If unspecified, return a new matrix.
///@desc Return the base64-decoded form of str.
function rnn_decode_base64(enc, n, Mout=rnn_zero(n)) {
	GMLINEAR_INLINE;
	var buffer = buffer_create(128, buffer_fixed, 1);
	buffer_base64_decode_ext(buffer, enc, 0);
	for (var i = 0; i < n; i++) {
		var Mout_i = Mout[i];
		for (var j = 0; j < n; j++) {
			Mout_i[@j] = buffer_read(buffer, buffer_f64);
		}
	}
	buffer_delete(buffer);
	return Mout;
}
#macro rnn_decode_base64_to rnn_decode_base64
