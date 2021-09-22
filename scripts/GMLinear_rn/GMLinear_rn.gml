///@func rn(...)
///@arg ...
///@desc Return a new n-dimensional vector.
function rn() {
	GMLINEAR_INLINE;
	var v = array_create(argument_count);
	for (var i = argument_count-1; i >= 0; --i) {
		v[@i] = argument[i];
	}
	return v;
}

///@func rn_zero(n)
///@arg {int} n The dimension of the vector
///@desc Return the n-dimensional zero vector.
function rn_zero(n) {
	GMLINEAR_INLINE;
	return array_create(n, 0);
}

///@func rn_clone(v, <vout>)
///@arg {rn} v The n-dimensional vector to operate on.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return a clone of the given n-dimensional vector.
function rn_clone(v, vout=[]) {
	GMLINEAR_INLINE;
	array_copy(vout, 0, v, 0, array_length(v));
	return vout;
}
#macro rn_clone_to rn_clone

///@func rn_add(v1, v2, <vout>)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return v1+v2.
function rn_add(v1, v2, vout=[]) {
	GMLINEAR_INLINE;
	for (var i = array_length(v1)-1; i >= 0; --i) {
		vout[@i] = v1[i]+v2[i];
	}
	return vout;
}
#macro rn_add_to rn_add

///@func rn_subtract(v1, v2, <vout>)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return v1-v2.
function rn_subtract(v1, v2, vout=[]) {
	GMLINEAR_INLINE;
	for (var i = array_length(v1)-1; i >= 0; --i) {
		vout[@i] = v1[i]-v2[i];
	}
	return vout;
}
#macro rn_subtract_to rn_subtract

///@func rn_scale(v, r, <vout>)
///@arg {rn} v The n-dimensional vector to use.
///@arg {real} r The scaling factor.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return rv.
function rn_scale(v, r, vout=[]) {
	GMLINEAR_INLINE;
	for (var i = array_length(v)-1; i >= 0; --i) {
		vout[@i] = r*v[i];
	}
	return vout;
}
#macro rn_scale_to rn_scale

///@func rn_dot(v1, v2)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@desc Return v1.v2.
function rn_dot(v1, v2) {
	GMLINEAR_INLINE;
	var result = 0;
	for (var i = array_length(v1)-1; i >= 0; --i) {
		result += v1[i]*v2[i];
	}
	return result;
}

///@func rn_norm(v)
///@arg {rn} v The n-dimensional vector to operate on.
///@desc Return the Euclidean norm of the n-dimensional vector.
function rn_norm(v) {
	GMLINEAR_INLINE;
	var result = 0;
	for (var i = array_length(v)-1; i >= 0; --i) {
		result += v[i]*v[i];
	}
	return sqrt(result);
}

///@func rn_dist(v1, v2)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@desc Return the Euclidean distance between v1 and v2.
function rn_dist(v1, v2) {
	GMLINEAR_INLINE;
	var result = 0;
	for (var i = array_length(v1)-1; i >= 0; --i) {
		var diff = v1[i]-v2[i];
		result += diff*diff;
	}
	return sqrt(result);
}

///@func rn_1norm(v)
///@arg {rn} v The n-dimensional vector to operate on.
///@desc Return the Manhattan norm of the n-dimensional vector.
function rn_1norm(v) {
	GMLINEAR_INLINE;
	var result = 0;
	for (var i = array_length(v)-1; i >= 0; --i) {
		result += abs(v[i]);
	}
	return result;
}

///@func rn_1dist(v1, v2)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@desc Return the Manhattan distance between v1 and v2.
function rn_1dist(v1, v2) {
	GMLINEAR_INLINE;
	var result = 0;
	for (var i = array_length(v1)-1; i >= 0; --i) {
		result += abs(v1[i]-v2[i]);
	}
	return result;
}

///@func rn_maxnorm(v)
///@arg {rn} v The n-dimensional vector to operate on.
///@desc Return the max norm of the n-dimensional vector.
function rn_maxnorm(v) {
	GMLINEAR_INLINE;
	var result = 0;
	for (var i = array_length(v)-1; i >= 0; --i) {
		var val = abs(v[i]);
		if (val > result) {
			result = val;
		}
	}
	return result;
}

///@func rn_unit(v, <vout>)
///@arg {rn} v The n-dimensional vector to operate on.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return the n-dimensional unit vector in the direction of v.
function rn_unit(v, vout=[]) {
	GMLINEAR_INLINE;
	var factor = 0;
	var v_dim = array_length(v);
	for (var i = v_dim-1; i >= 0; --i) {
		var vi = v[i];
		factor += vi*vi;
	}
	if (factor > 0) {
		factor = 1/sqrt(factor);
		for (var i = v_dim-1; i >= 0; --i) {
			vout[@i] = v[i]*factor;
		}
	} else {
		for (var i = v_dim-1; i >= 0; --i) {
			vout[@i] = 0;
		}
	}
	return vout;
}
#macro rn_unit_to rn_unit

///@func rn_lerp(v1, v2, amount, <vout>)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@arg {real} amount The interpolation factor. 0=first vector, 1=second vector
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return the linear interpolation between n-dimensional vectors v1 and v2.
function rn_lerp(v1, v2, amount, vout=[]) {
	GMLINEAR_INLINE;
	for (var i = array_length(v1)-1; i >= 0; --i) {
		vout[@i] = lerp(v1[i], v2[i], amount);
	}
	return vout;
}
#macro rn_lerp_to rn_lerp

///@func rn_proj(v1, v2, <vout>)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return the projection from v1 onto v2
function rn_proj(v1, v2, vout=[]) {
	GMLINEAR_INLINE;
	var v_dim = array_length(v1);
	var aa = 0;
	var bb = 0;
	for (var i = v_dim-1; i >= 0; --i) {
		var v2i = v2[i];
		aa += v1[i]*v2i;
		bb += v2i*v2i;
	}
	var factor = aa/bb;
	for (var i = v_dim-1; i >= 0; --i) {
		vout[@i] = factor*v2[i];
	}
	return vout;
}
#macro rn_proj_to rn_proj

///@func rn_rej(v1, v2, <vout>)
///@arg {rn} v1 The first n-dimensional vector.
///@arg {rn} v2 The second n-dimensional vector.
///@arg {rn} <vout> (Optional) The output n-dimensional vector to overwrite. If unspecified, return a new vector.
///@desc Return the rejection from v1 onto v2
function rn_rej(v1, v2, vout=[]) {
	GMLINEAR_INLINE;
	var v_dim = array_length(v1);
	var aa = 0;
	var bb = 0;
	for (var i = v_dim-1; i >= 0; --i) {
		var v2i = v2[i];
		aa += v1[i]*v2i;
		bb += v2i*v2i;
	}
	var factor = aa/bb;
	for (var i = v_dim-1; i >= 0; --i) {
		vout[@i] = v1[i]-factor*v2[i];
	}
	return vout;
}
#macro rn_rej_to rn_rej
