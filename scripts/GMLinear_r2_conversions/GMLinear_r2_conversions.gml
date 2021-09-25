///@func r2_rec_gmp(vi_xy, <vo_ld>)
///@arg {r2} vi_xy Input 2D vector in rectangular coordinates
///@arg {r2} <vo_ld> (Optional) Output 2D vector in GM polar coordinates to overwrite. If unspecified, return a new vector.
///@desc Return the GM polar equivalent of the 2D rectangular vector.
function r2_rec_gmp(vi_xy, vo_ld=[0, 0]) {
	GMLINEAR_INLINE;
	var xx = vi_xy[0],
	var yy = vi_xy[1];
	vo_ld[@0] = sqrt(xx*xx + yy*yy);
	vo_ld[@1] = darctan2(-yy, xx);
	return vo_ld;
}
#macro r2_rec_gmp_to r2_rec_gmp

///@func r2_gmp_rec(vi_xy, <vo_ld>)
///@arg {r2} vi_ld Input 2D vector in GM polar coordinates
///@arg {r2} <vo_xy> (Optional) Output 2D vector in rectangular coordinates to overwrite. If unspecified, return a new vector.
///@desc Return the rectangular equivalent of the 2D GM polar vector.
function r2_gmp_rec(vi_ld, vo_xy=[0, 0]) {
	GMLINEAR_INLINE;
	var len = vi_ld[0],
	var dir = vi_ld[1];
	vo_xy[@0] = lengthdir_x(len, dir);
	vo_xy[@1] = lengthdir_y(len, dir);
	return vo_xy;
}
#macro r2_gmp_rec_to r2_gmp_rec

///@func r2_rec_pol(vi_xy, <vo_rt>)
///@arg {r2} vi_xy Input 2D vector in rectangular coordinates
///@arg {r2} <vo_rt> (Optional) Output 2D vector in conventional polar coordinates to overwrite. If unspecified, return a new vector.
///@desc Return the conventional polar equivalent of the 2D rectangular vector.
function r2_rec_pol(vi_xy, vo_rt=[0, 0]) {
	GMLINEAR_INLINE;
	var xx = vi_xy[0];
	var yy = vi_xy[1];
	vo_rt[@0] = sqrt(xx*xx + yy*yy);
	vo_rt[@1] = arctan2(yy, xx);
	return vo_rt;
}
#macro r2_rec_pol_to r2_rec_pol

///@func r2_pol_rec(vi_rt, <vo_xy>)
///@arg {r2} vi_rt Input 2D vector in conventional polar coordinates
///@arg {r2} <vo_xy> (Optional) Output 2D vector in rectangular coordinates to overwrite. If unspecified, return a new vector.
///@desc Return the rectangular equivalent of the 2D conventional polar vector.
function r2_pol_rec(vi_rt, vo_xy=[0, 0]) {
	GMLINEAR_INLINE;
	var r = vi_rt[0];
	var theta = vi_rt[1];
	vo_xy[@0] = r*cos(theta);
	vo_xy[@1] = r*sin(theta);
	return vo_xy;
}
#macro r2_pol_rec_to r2_pol_rec

///@func r2_gmp_pol(vi_ld, <vo_rt>)
///@arg {r2} vi_ld Input 2D vector in GM polar coordinates
///@arg {r2} vo_rt (Optional) Output 2D vector in conventional polar coordinates to overwrite. If unspecified, return a new vector.
///@desc Return the conventional polar equivalent of the 2D GM polar vector.
function r2_gmp_pol(vi_ld, vo_rt=[0, 0]) {
	GMLINEAR_INLINE;
	vo_rt[@0] = vi_ld[0];
	vo_rt[@1] = -vi_ld[1]*pi/180;
	return vo_rt;
}
#macro r2_gmp_pol_to r2_gmp_pol

///@func r2_pol_gmp(vi_rt, <vo_ld>)
///@arg vi_rt Input 2D vector in conventional polar coordinates
///@arg <vo_ld> (Optional) Output 2D vector in GM polar coordinates to overwrite. If unspecified, return a new vector.
///@desc Return the GM polar equivalent of the 2D conventional polar vector.
function r2_pol_gmp(vi_rt, vo_ld=[0, 0]) {
	GMLINEAR_INLINE;
	vo_ld[@0] = vi_rt[0];
	vo_ld[@1] = -vi_rt[1]*180/pi;
	return vo_ld;
}
#macro r2_pol_gmp_to r2_pol_gmp
