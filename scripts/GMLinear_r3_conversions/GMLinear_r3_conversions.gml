///@func r3_rec_cyl_to(vi_xyz, [vo_rpz])
///@arg {Array<Real>} vi_xyz Input 3D vector in rectangular coordinates
///@arg {Array<Real>} [vo_rpz] (Optional) Output 3D vector in cylindrical coordinates. If unspecified, return a new vector.
///@desc Return the cylindrical equivalent of the 3D rectangular vector.
function r3_rec_cyl(vi_xyz, vo_rpz=[0, 0, 0]) {
	GMLINEAR_INLINE
	var xx = vi_xyz[0];
	var yy = vi_xyz[1];
	vo_rpz[@0] = sqrt(xx*xx + yy*yy);
	if (vo_rpz[0] == 0) {
		vo_rpz[@1] = 0;
	}
	else {
		vo_rpz[@1] = arctan2(yy, xx);
	}
	vo_rpz[@2] = vi_xyz[2];
	return vo_rpz;
}
#macro r3_rec_cyl_to r3_rec_cyl

///@func r3_cyl_rec(vi_rpz, [vo_xyz])
///@arg {Array<Real>} vi_rpz Input 3D vector in cylindrical coordinates
///@arg {Array<Real>} [vo_xyz] (Optional) Output 3D vector in rectangular coordinates. If unspecified, return a new vector.
///@desc Return the rectangular equivalent of the 3D cylindrical vector.
function r3_cyl_rec(vi_rpz, vo_xyz=[0, 0, 0]){
	GMLINEAR_INLINE
	var rho = vi_rpz[0];
	var azi = vi_rpz[1];
	vo_xyz[@0] = rho*cos(azi);
	vo_xyz[@1] = rho*sin(azi);
	vo_xyz[@2] = vi_rpz[2];
	return vo_xyz;
}
#macro r3_cyl_rec_to r3_cyl_rec

///@func r3_rec_sph(vi_xyz, [vo_rpt])
///@arg {Array<Real>} vi_xyz Input 3D vector in rectangular coordinates
///@arg {Array<Real>} [vo_rpt] (Optional) Output 3D vector in spherical coordinates. If unspecified, return a new vector.
///@desc Return the spherical equivalent of the 3D rectangular vector.
function r3_rec_sph(vi_xyz, vo_rpt=[0, 0, 0]){
	GMLINEAR_INLINE
	var xx = vi_xyz[0];
	var yy = vi_xyz[1];
	var zz = vi_xyz[2];
	vo_rpt[@0] = sqrt(xx*xx + yy*yy + zz*zz);
	if (vo_rpt[0] == 0) {
		vo_rpt[@1] = 0;
		vo_rpt[@2] = 0;
	}
	else {
		vo_rpt[@1] = arctan2(yy, xx);
		vo_rpt[@2] = arccos(zz/vo_rpt[0]);
	}
	return vo_rpt;
}
#macro r3_rec_sph_to r3_rec_sph

///@func r3_sph_rec(vi_rpt, [vo_xyz])
///@arg {Array<Real>} vi_rpt Input 3D vector in spherical coordinates
///@arg {Array<Real>} [vo_xyz] (Optional) Output 3D vector in rectangular coordinates. If unspecified, return a new vector.
///@desc Return the rectangular equivalent of the 3D spherical vector.
function r3_sph_rec(vi_rpt, vo_xyz=[0, 0, 0]) {
	GMLINEAR_INLINE
	var rho = vi_rpt[0];
	var azi = vi_rpt[1];
	var zen = vi_rpt[2];
	vo_xyz[@0] = rho*cos(azi)*sin(zen);
	vo_xyz[@1] = rho*sin(azi)*sin(zen);
	vo_xyz[@2] = rho*cos(zen);
	return vo_xyz;
}
#macro r3_sph_rec_to r3_sph_rec

///@func r3_cyl_sph(vi_rpz, [vo_rpt])
///@arg {Array<Real>} vi_rpz Input 3D vector in cylindrical coordinates
///@arg {Array<Real>} [vo_rpt] (Optional) Output 3D vector in spherical coordinates. If unspecified, return a new vector.
///@desc Return the spherical equivalent of the 3D cylindrical vector.
function r3_cyl_sph(vi_rpz, vo_rpt=[0, 0, 0]) {
	GMLINEAR_INLINE
	var rho = vi_rpz[0];
	var zzz = vi_rpz[2];
	vo_rpt[@0] = sqrt(rho*rho+zzz*zzz);
	vo_rpt[@1] = vi_rpz[1];
	vo_rpt[@2] = arccos(zzz/vo_rpt[0]);
	return vo_rpt;
}
#macro r3_cyl_sph_to r3_cyl_sph

///@func r3_sph_cyl_to(vi_rpt, [vo_rpz])
///@arg {Array<Real>} vi_rpt Input 3D vector in spherical coordinates
///@arg {Array<Real>} [vo_rpz] (Optional) Output 3D vector in cylindrical coordinates. If unspecified, return a new vector.
///@desc Return the cylindrical equivalent of the 3D spherical vector.
function r3_sph_cyl_to(vi_rpt, vo_rpz=[0, 0, 0]) {
	GMLINEAR_INLINE
	var rho = vi_rpt[0];
	var zen = vi_rpt[2];
	vo_rpz[@0] = rho*sin(zen);
	vo_rpz[@1] = vi_rpt[1];
	vo_rpz[@2] = rho*cos(zen);
	return vo_rpz;
}
#macro r3_sph_cyl_to r3_sph_cyl
