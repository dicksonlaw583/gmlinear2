// feather disable all
function __gmlin_test_vector_operations__() {
	{
	  //r2_clone(v)
	  var test_r2_original = r2(3, 2);
	  assert_isnt(r2_clone(test_r2_original), test_r2_original, "r2() clone isn't cloning!");
	  assert_equal(r2_clone(test_r2_original), test_r2_original, "r2() clone is different!");
	  //r3_clone(v)
	  var test_r3_original = r3(52, 2, 57);
	  assert_isnt(r3_clone(test_r3_original), test_r3_original, "r3() clone isn't cloning!");
	  assert_equal(r3_clone(test_r3_original), test_r3_original, "r3() clone is different!");
	  //r4_clone(v)
	  var test_r4_original = r4(23, 7, 52, 53);
	  assert_isnt(r4_clone(test_r4_original), test_r4_original, "r4() clone isn't cloning!");
	  assert_equal(r4_clone(test_r4_original), test_r4_original, "r4() clone is different!");
	  //rn_clone(v)
	  var test_rn_original = rn(23, 7, 52, 22, 52, 2, 57);
	  assert_isnt(rn_clone(test_rn_original), test_rn_original, "rn() clone isn't cloning!");
	  assert_equal(rn_clone(test_rn_original), test_rn_original, "rn() clone is different!");
  
	  //r2_clone_to(v, vout)
	  var test_r2_cloneto_v = r2(22, 35),
	      test_r2_cloneto_vout = r2_zero();
	  assert_is(r2_clone_to(test_r2_cloneto_v, test_r2_cloneto_vout), test_r2_cloneto_vout, "r2() clone-to isn't cloning!");
	  assert_equal(test_r2_cloneto_vout, test_r2_cloneto_v, "r2() clone-to isn't equal!");
	  assert_isnt(test_r2_cloneto_vout, test_r2_cloneto_v, "r2() clone-to is just a mirror!");
	  //r3_clone_to(v, vout)
	  var test_r3_cloneto_v = r3(17, 29, 51),
	      test_r3_cloneto_vout = r3_zero();
	  assert_is(r3_clone_to(test_r3_cloneto_v, test_r3_cloneto_vout), test_r3_cloneto_vout, "r3() clone-to isn't cloning!");
	  assert_equal(test_r3_cloneto_vout, test_r3_cloneto_v, "r3() clone-to isn't equal!");
	  assert_isnt(test_r3_cloneto_vout, test_r3_cloneto_v, "r3() clone-to is just a mirror!");
	  //r4_clone_to(v, vout)
	  var test_r4_cloneto_v = r4(2, 3, 5, 7),
	      test_r4_cloneto_vout = r4_zero();
	  assert_is(r4_clone_to(test_r4_cloneto_v, test_r4_cloneto_vout), test_r4_cloneto_vout, "r4() clone-to isn't cloning!");
	  assert_equal(test_r4_cloneto_vout, test_r4_cloneto_v, "r4() clone-to isn't equal!");
	  assert_isnt(test_r4_cloneto_vout, test_r4_cloneto_v, "r4() clone-to is just a mirror!");
	  //rn_clone_to(v, vout)
	  var test_rn_cloneto_v = rn(100, 93, 86, 79, 72, 65, 58),
	      test_rn_cloneto_vout = rn_zero(7);
	  assert_is(rn_clone_to(test_rn_cloneto_v, test_rn_cloneto_vout), test_rn_cloneto_vout, "rn() clone-to isn't cloning!");
	  assert_equal(test_rn_cloneto_vout, test_rn_cloneto_v, "rn() clone-to isn't equal!");
	  assert_isnt(test_rn_cloneto_vout, test_rn_cloneto_v, "rn() clone-to is just a mirror!");
  
  
	  //r2_add(v1, v2)
	  var test_r2_add_v1 = r2(7, 2),
	      test_r2_add_v2 = r2(5, 9);
	  assert_equal(r2_add(test_r2_add_v1, test_r2_add_v2), r2(12, 11), "r2_add() failed!");
	  //r3_add(v1, v2)
	  var test_r3_add_v1 = r3(27, 15, 30),
	      test_r3_add_v2 = r3(12, 33, 21);
	  assert_equal(r3_add(test_r3_add_v1, test_r3_add_v2), r3(39, 48, 51), "r3_add() failed!");
	  //r4_add(v1, v2)
	  var test_r4_add_v1 = r4(1, 2, 3, 4),
	      test_r4_add_v2 = r4(9, 18, 27, 36);
	  assert_equal(r4_add(test_r4_add_v1, test_r4_add_v2), r4(10, 20, 30, 40), "r4_add() failed!");
	  //rn_add(v1, v2)
	  assert_equal(rn_add(test_r2_add_v1, test_r2_add_v2), r2(12, 11), "rn_add() isn't compatible with 2D vectors!");
	  assert_equal(rn_add(test_r3_add_v1, test_r3_add_v2), r3(39, 48, 51), "rn_add() isn't compatible with 3D vectors!");
	  assert_equal(rn_add(test_r4_add_v1, test_r4_add_v2), r4(10, 20, 30, 40), "rn_add() isn't compatible with 4D vectors!");
	  var test_rn_add_v1 = rn(2, 4, 6, 8, 10, 12, 14),
	      test_rn_add_v2 = rn(100, 99, 98, 97, 96, 95, 94);
	  assert_equal(rn_add(test_rn_add_v1, test_rn_add_v2), rn(102, 103, 104, 105, 106, 107, 108), "rn_add() failed!");
  
	  //r2_add_to(v1, v2, vout)
	  var test_r2_addto_v1 = r2(3, 5),
	      test_r2_addto_v2 = r2(-4, 6),
	      test_r2_addto_vout = r2_zero(),
	      test_r2_addto_result = r2_add_to(test_r2_addto_v1, test_r2_addto_v2, test_r2_addto_vout);
	  assert_is(test_r2_addto_result, test_r2_addto_vout, "r2_add_to() didn't return vout!");
	  assert_equal(test_r2_addto_result, r2(-1, 11), "r2_add_to() failed!");
	  test_r2_addto_result = r2_add_to(test_r2_addto_v1, test_r2_addto_v2, test_r2_addto_v1);
	  assert_is(test_r2_addto_result, test_r2_addto_v1, "r2_add_to() didn't return vout if it is v1!");
	  assert_equal(test_r2_addto_v1, r2(-1, 11), "r2_add_to() failed if vout is v1!");
	  test_r2_addto_v1 = r2(3, 5);
	  test_r2_addto_result = r2_add_to(test_r2_addto_v1, test_r2_addto_v2, test_r2_addto_v2);
	  assert_is(test_r2_addto_result, test_r2_addto_v2, "r2_add_to() didn't return vout if it is v2!");
	  assert_equal(test_r2_addto_v2, r2(-1, 11), "r2_add_to() failed if vout is v2!");
	  test_r2_addto_v2 = r2(-4, 6);
	  //r3_add_to(v1, v2, vout)
	  var test_r3_addto_v1 = r3(3, 5, 7),
	      test_r3_addto_v2 = r3(-4, 6, -10),
	      test_r3_addto_vout = r3_zero(),
	      test_r3_addto_result = r3_add_to(test_r3_addto_v1, test_r3_addto_v2, test_r3_addto_vout);
	  assert_is(test_r3_addto_result, test_r3_addto_vout, "r3_add_to() didn't return vout!");
	  assert_equal(test_r3_addto_result, r3(-1, 11, -3), "r3_add_to() failed!");
	  test_r3_addto_result = r3_add_to(test_r3_addto_v1, test_r3_addto_v2, test_r3_addto_v1);
	  assert_is(test_r3_addto_result, test_r3_addto_v1, "r3_add_to() didn't return vout if it is v1!");
	  assert_equal(test_r3_addto_v1, r3(-1, 11, -3), "r3_add_to() failed if vout is v1!");
	  test_r3_addto_v1 = r3(3, 5, 7);
	  test_r3_addto_result = r3_add_to(test_r3_addto_v1, test_r3_addto_v2, test_r3_addto_v2);
	  assert_is(test_r3_addto_result, test_r3_addto_v2, "r3_add_to() didn't return vout if it is v2!");
	  assert_equal(test_r3_addto_v2, r3(-1, 11, -3), "r3_add_to() failed if vout is v2!");
	  test_r3_addto_v2 = r3(-4, 6, -10);
	  //r4_add_to(v1, v2, vout)
	  var test_r4_addto_v1 = r4(3, 5, 7, 9),
	      test_r4_addto_v2 = r4(-4, 6, -10, 14),
	      test_r4_addto_vout = r4_zero(),
	      test_r4_addto_result = r4_add_to(test_r4_addto_v1, test_r4_addto_v2, test_r4_addto_vout);
	  assert_is(test_r4_addto_result, test_r4_addto_vout, "r4_add_to() didn't return vout!");
	  assert_equal(test_r4_addto_result, r4(-1, 11, -3, 23), "r4_add_to() failed!");
	  test_r4_addto_result = r4_add_to(test_r4_addto_v1, test_r4_addto_v2, test_r4_addto_v1);
	  assert_is(test_r4_addto_result, test_r4_addto_v1, "r4_add_to() didn't return vout if it is v1!");
	  assert_equal(test_r4_addto_v1, r4(-1, 11, -3, 23), "r4_add_to() failed if vout is v1!");
	  test_r4_addto_v1 = r4(3, 5, 7, 9);
	  test_r4_addto_result = r4_add_to(test_r4_addto_v1, test_r4_addto_v2, test_r4_addto_v2);
	  assert_is(test_r4_addto_result, test_r4_addto_v2, "r4_add_to() didn't return vout if it is v2!");
	  assert_equal(test_r4_addto_v2, r4(-1, 11, -3, 23), "r4_add_to() failed if vout is v2!");
	  test_r4_addto_v2 = r4(-4, 6, -10, 14);
	  //rn_add_to(v1, v2, vout)
	  var test_rn_addto_v1 = rn(3, 5, 7, 9, 11, 13),
	      test_rn_addto_v2 = rn(-4, 6, -10, 14, -16, 20),
	      test_rn_addto_vout = rn_zero(6),
	      test_rn_addto_result = rn_add_to(test_rn_addto_v1, test_rn_addto_v2, test_rn_addto_vout);
	  assert_is(test_rn_addto_result, test_rn_addto_vout, "rn_add_to() didn't return vout!");
	  assert_equal(test_rn_addto_result, rn(-1, 11, -3, 23, -5, 33), "rn_add_to() failed!");
	  test_rn_addto_result = rn_add_to(test_rn_addto_v1, test_rn_addto_v2, test_rn_addto_v1);
	  assert_is(test_rn_addto_result, test_rn_addto_v1, "rn_add_to() didn't return vout if it is v1!");
	  assert_equal(test_rn_addto_v1, rn(-1, 11, -3, 23, -5, 33), "rn_add_to() failed if vout is v1!");
	  test_rn_addto_v1 = rn(3, 5, 7, 9, 11, 13);
	  test_rn_addto_result = rn_add_to(test_rn_addto_v1, test_rn_addto_v2, test_rn_addto_v2);
	  assert_is(test_rn_addto_result, test_rn_addto_v2, "rn_add_to() didn't return vout if it is v2!");
	  assert_equal(test_rn_addto_v2, rn(-1, 11, -3, 23, -5, 33), "rn_add_to() failed if vout is v2!");
	  test_rn_addto_v2 = rn(-4, 6, -10, 14, -16, 20);
  
  
	  //r2_subtract(v1, v2)
	  var test_r2_subtract_v1 = r2(7, 2),
	      test_r2_subtract_v2 = r2(5, 9);
	  assert_equal(r2_subtract(test_r2_subtract_v1, test_r2_subtract_v2), r2(2, -7), "r2_subtract() failed!");
	  //r3_subtract(v1, v2)
	  var test_r3_subtract_v1 = r3(27, 15, 30),
	      test_r3_subtract_v2 = r3(12, 33, 21);
	  assert_equal(r3_subtract(test_r3_subtract_v1, test_r3_subtract_v2), r3(15, -18, 9), "r3_subtract() failed!");
	  //r4_subtract(v1, v2)
	  var test_r4_subtract_v1 = r4(1, 2, 3, 4),
	      test_r4_subtract_v2 = r4(9, 18, 27, 36);
	  assert_equal(r4_subtract(test_r4_subtract_v1, test_r4_subtract_v2), r4(-8, -16, -24, -32), "r4_subtract() failed!");
	  //rn_subtract(v1, v2)
	  assert_equal(rn_subtract(test_r2_subtract_v1, test_r2_subtract_v2), r2(2, -7), "rn_subtract() isn't compatible with 2D vectors!");
	  assert_equal(rn_subtract(test_r3_subtract_v1, test_r3_subtract_v2), r3(15, -18, 9), "rn_subtract() isn't compatible with 3D vectors!");
	  assert_equal(rn_subtract(test_r4_subtract_v1, test_r4_subtract_v2), r4(-8, -16, -24, -32), "rn_subtract() isn't compatible with 4D vectors!");
	  var test_rn_subtract_v1 = rn(2, 4, 6, 8, 10, 12, 14),
	      test_rn_subtract_v2 = rn(100, 99, 98, 97, 96, 95, 94);
	  assert_equal(rn_subtract(test_rn_subtract_v1, test_rn_subtract_v2), rn(-98, -95, -92, -89, -86, -83, -80), "rn_subtract() failed!");
  
	  //r2_subtract_to(v1, v2, vout)
	  var test_r2_subtractto_v1 = r2(3, 5),
	      test_r2_subtractto_v2 = r2(-4, 6),
	      test_r2_subtractto_vout = r2_zero(),
	      test_r2_subtractto_result = r2_subtract_to(test_r2_subtractto_v1, test_r2_subtractto_v2, test_r2_subtractto_vout);
	  assert_is(test_r2_subtractto_result, test_r2_subtractto_vout, "r2_subtract_to() didn't return vout!");
	  assert_equal(test_r2_subtractto_result, r2(7, -1), "r2_subtract_to() failed!");
	  test_r2_subtractto_result = r2_subtract_to(test_r2_subtractto_v1, test_r2_subtractto_v2, test_r2_subtractto_v1);
	  assert_is(test_r2_subtractto_result, test_r2_subtractto_v1, "r2_subtract_to() didn't return vout if it is v1!");
	  assert_equal(test_r2_subtractto_v1, r2(7, -1), "r2_subtract_to() failed if vout is v1!");
	  test_r2_subtractto_v1 = r2(3, 5);
	  test_r2_subtractto_result = r2_subtract_to(test_r2_subtractto_v1, test_r2_subtractto_v2, test_r2_subtractto_v2);
	  assert_is(test_r2_subtractto_result, test_r2_subtractto_v2, "r2_subtract_to() didn't return vout if it is v2!");
	  assert_equal(test_r2_subtractto_v2, r2(7, -1), "r2_subtract_to() failed if vout is v2!");
	  test_r2_subtractto_v2 = r2(-4, 6);
	  //r3_subtract_to(v1, v2, vout)
	  var test_r3_subtractto_v1 = r3(3, 5, 7),
	      test_r3_subtractto_v2 = r3(-4, 6, -10),
	      test_r3_subtractto_vout = r3_zero(),
	      test_r3_subtractto_result = r3_subtract_to(test_r3_subtractto_v1, test_r3_subtractto_v2, test_r3_subtractto_vout);
	  assert_is(test_r3_subtractto_result, test_r3_subtractto_vout, "r3_subtract_to() didn't return vout!");
	  assert_equal(test_r3_subtractto_result, r3(7, -1, 17), "r3_subtract_to() failed!");
	  test_r3_subtractto_result = r3_subtract_to(test_r3_subtractto_v1, test_r3_subtractto_v2, test_r3_subtractto_v1);
	  assert_is(test_r3_subtractto_result, test_r3_subtractto_v1, "r3_subtract_to() didn't return vout if it is v1!");
	  assert_equal(test_r3_subtractto_v1, r3(7, -1, 17), "r3_subtract_to() failed if vout is v1!");
	  test_r3_subtractto_v1 = r3(3, 5, 7);
	  test_r3_subtractto_result = r3_subtract_to(test_r3_subtractto_v1, test_r3_subtractto_v2, test_r3_subtractto_v2);
	  assert_is(test_r3_subtractto_result, test_r3_subtractto_v2, "r3_subtract_to() didn't return vout if it is v2!");
	  assert_equal(test_r3_subtractto_v2, r3(7, -1, 17), "r3_subtract_to() failed if vout is v2!");
	  test_r3_subtractto_v2 = r3(-4, 6, -10);
	  //r4_subtract_to(v1, v2, vout)
	  var test_r4_subtractto_v1 = r4(3, 5, 7, 9),
	      test_r4_subtractto_v2 = r4(-4, 6, -10, 14),
	      test_r4_subtractto_vout = r4_zero(),
	      test_r4_subtractto_result = r4_subtract_to(test_r4_subtractto_v1, test_r4_subtractto_v2, test_r4_subtractto_vout);
	  assert_is(test_r4_subtractto_result, test_r4_subtractto_vout, "r4_subtract_to() didn't return vout!");
	  assert_equal(test_r4_subtractto_result, r4(7, -1, 17, -5), "r4_subtract_to() failed!");
	  test_r4_subtractto_result = r4_subtract_to(test_r4_subtractto_v1, test_r4_subtractto_v2, test_r4_subtractto_v1);
	  assert_is(test_r4_subtractto_result, test_r4_subtractto_v1, "r4_subtract_to() didn't return vout if it is v1!");
	  assert_equal(test_r4_subtractto_v1, r4(7, -1, 17, -5), "r4_subtract_to() failed if vout is v1!");
	  test_r4_subtractto_v1 = r4(3, 5, 7, 9);
	  test_r4_subtractto_result = r4_subtract_to(test_r4_subtractto_v1, test_r4_subtractto_v2, test_r4_subtractto_v2);
	  assert_is(test_r4_subtractto_result, test_r4_subtractto_v2, "r4_subtract_to() didn't return vout if it is v2!");
	  assert_equal(test_r4_subtractto_v2, r4(7, -1, 17, -5), "r4_subtract_to() failed if vout is v2!");
	  test_r4_subtractto_v2 = r4(-4, 6, -10, 14);
	  //rn_subtract_to(v1, v2, vout)
	  var test_rn_subtractto_v1 = rn(3, 5, 7, 9, 11, 13),
	      test_rn_subtractto_v2 = rn(-4, 6, -10, 14, -16, 20),
	      test_rn_subtractto_vout = rn_zero(6),
	      test_rn_subtractto_result = rn_subtract_to(test_rn_subtractto_v1, test_rn_subtractto_v2, test_rn_subtractto_vout);
	  assert_is(test_rn_subtractto_result, test_rn_subtractto_vout, "rn_subtract_to() didn't return vout!");
	  assert_equal(test_rn_subtractto_result, rn(7, -1, 17, -5, 27, -7), "rn_subtract_to() failed!");
	  test_rn_subtractto_result = rn_subtract_to(test_rn_subtractto_v1, test_rn_subtractto_v2, test_rn_subtractto_v1);
	  assert_is(test_rn_subtractto_result, test_rn_subtractto_v1, "rn_subtract_to() didn't return vout if it is v1!");
	  assert_equal(test_rn_subtractto_v1, rn(7, -1, 17, -5, 27, -7), "rn_subtract_to() failed if vout is v1!");
	  test_rn_subtractto_v1 = rn(3, 5, 7, 9, 11, 13);
	  test_rn_subtractto_result = rn_subtract_to(test_rn_subtractto_v1, test_rn_subtractto_v2, test_rn_subtractto_v2);
	  assert_is(test_rn_subtractto_result, test_rn_subtractto_v2, "rn_subtract_to() didn't return vout if it is v2!");
	  assert_equal(test_rn_subtractto_v2, rn(7, -1, 17, -5, 27, -7), "rn_subtract_to() failed if vout is v2!");
	  test_rn_subtractto_v2 = rn(-4, 6, -10, 14, -16, 20);
  
  
	  //r2_dot(v1, v2)
	  var test_r2_dot_v1 = r2(9, -2),
	      test_r2_dot_v2 = r2(1, 7);
	  assert_equal(r2_dot(test_r2_dot_v1, test_r2_dot_v2), -5, "r2_dot() failed!");
	  //r3_dot(v1, v2)
	  var test_r3_dot_v1 = r3(4, -2, 5),
	      test_r3_dot_v2 = r3(1, 2, 3);
	  assert_equal(r3_dot(test_r3_dot_v1, test_r3_dot_v2), 15, "r3_dot() failed!");
	  //r4_dot(v1, v2)
	  var test_r4_dot_v1 = r4(17, 2, 2, 7),
	      test_r4_dot_v2 = r4(1, -3, -2, -2);
	  assert_equal(r4_dot(test_r4_dot_v1, test_r4_dot_v2), -7, "r4_dot() failed!");
	  //rn_dot(v1, v2)
	  assert_equal(rn_dot(test_r2_dot_v1, test_r2_dot_v2), -5, "rn_dot() isn't compatible with 2D vector!");
	  assert_equal(rn_dot(test_r3_dot_v1, test_r3_dot_v2), 15, "rn_dot() isn't compatible with 3D vector!");
	  assert_equal(rn_dot(test_r4_dot_v1, test_r4_dot_v2), -7, "rn_dot() isn't compatible with 4D vector!");
	  var test_rn_dot_v1 = rn(9, -2, 4, -2, 5, 17, 2, 2, 7),
	      test_rn_dot_v2 = rn(1, 7, 1, 2, 3, 1, -3, -2, -2);
	  assert_equal(rn_dot(test_rn_dot_v1, test_rn_dot_v2), 3, "rn_dot() failed!");
  
  
	  //r3_cross(v1, v2)
	  var test_r3_cross_v1 = r3(7, -3, 6),
	      test_r3_cross_v2 = r3(-2, 6, 4);
	  assert_equal(r3_cross(test_r3_cross_v1, test_r3_cross_v2), r3(-48, -40, 36), "r3_cross() failed!");
  
	  //r3_cross_to(v1, v2, vout)
	  var test_r3_crossto_v1 = r3(7, -3, 6),
	      test_r3_crossto_v2 = r3(-2, 6, 4),
	      test_r3_crossto_vout = r3_zero(),
	      test_r3_crossto_result = r3_cross_to(test_r3_crossto_v1, test_r3_crossto_v2, test_r3_crossto_vout);
	  assert_is(test_r3_crossto_result, test_r3_crossto_vout, "r3_cross_to() didn't return vout!");
	  assert_equal(test_r3_crossto_result, r3(-48, -40, 36), "r3_cross_to() failed!");
	  test_r3_crossto_result = r3_cross_to(test_r3_crossto_v1, test_r3_crossto_v2, test_r3_crossto_v1);
	  assert_is(test_r3_crossto_result, test_r3_crossto_v1, "r3_cross_to() didn't return vout if it is v1!");
	  assert_equal(test_r3_crossto_v1, r3(-48, -40, 36), "r3_cross_to() failed if vout is v1!");
	  test_r3_crossto_v1 = r3(7, -3, 6);
	  test_r3_crossto_result = r3_cross_to(test_r3_crossto_v1, test_r3_crossto_v2, test_r3_crossto_v2);
	  assert_is(test_r3_crossto_result, test_r3_crossto_v2, "r3_cross_to() didn't return vout if it is v2!");
	  assert_equal(test_r3_crossto_v2, r3(-48, -40, 36), "r3_cross_to() failed if vout is v2!");
	  test_r3_crossto_v2 = r3(-2, 6, 4);
  
  
	  //r2_scale(v, r)
	  var test_r2_scale_v = r2(1, 3);
	  assert_equal(r2_scale(test_r2_scale_v, 5), r2(5, 15), "r2_scale() failed!");
	  //r3_scale(v, r)
	  var test_r3_scale_v = r3(2, 4, 6);
	  assert_equal(r3_scale(test_r3_scale_v, 7), r3(14, 28, 42), "r3_scale() failed!");
	  //r4_scale(v, r)
	  var test_r4_scale_v = r4(3, 6, 9, 12);
	  assert_equal(r4_scale(test_r4_scale_v, 9), r4(27, 54, 81, 108), "r4_scale() failed!");
	  //rn_scale(v, r)
	  assert_equal(rn_scale(test_r2_scale_v, 5), r2(5, 15), "rn_scale() not compatible with 2D vector!");
	  assert_equal(rn_scale(test_r3_scale_v, 7), r3(14, 28, 42), "rn_scale() not compatible with 3D vector!");
	  assert_equal(rn_scale(test_r4_scale_v, 9), r4(27, 54, 81, 108), "rn_scale() not compatible with 4D vector!");
	  var test_rn_scale_v = rn(0, 5, 10, 15, 20, 25);
	  assert_equal(rn_scale(test_rn_scale_v, 11), rn(0, 55, 110, 165, 220, 275), "rn_scale() failed!");
  
	  //r2_scale_to(v, r, vout)
	  var test_r2_scaleto_v = r2(1, 3),
	      test_r2_scaleto_vout = r2_zero();
	  assert_is(r2_scale_to(test_r2_scaleto_v, 5, test_r2_scaleto_vout), test_r2_scaleto_vout, "r2_scale_to() didn't return vout!");
	  assert_equal(test_r2_scaleto_vout, r2(5, 15), "r2_scale_to() failed!");
	  assert_is(r2_scale_to(test_r2_scaleto_v, 5, test_r2_scaleto_v), test_r2_scaleto_v, "r2_scale_to() didn't return vout if it is v!");
	  assert_equal(test_r2_scaleto_v, r2(5, 15), "r2_scale_to() failed when vout is v!");
	  test_r2_scaleto_v = r2(1, 3);
	  test_r2_scaleto_vout = r2_zero();
	  //r3_scale_to(v, r, vout)
	  var test_r3_scaleto_v = r3(2, 4, 6),
	      test_r3_scaleto_vout = r3_zero();
	  assert_is(r3_scale_to(test_r3_scaleto_v, 7, test_r3_scaleto_vout), test_r3_scaleto_vout, "r3_scale_to() didn't return vout!");
	  assert_equal(test_r3_scaleto_vout, r3(14, 28, 42), "r3_scale_to() failed!");
	  assert_is(r3_scale_to(test_r3_scaleto_v, 7, test_r3_scaleto_v), test_r3_scaleto_v, "r3_scale_to() didn't return vout if it is v!");
	  assert_equal(test_r3_scaleto_v, r3(14, 28, 42), "r3_scale_to() failed when vout is v!");
	  test_r3_scaleto_v = r3(2, 4, 6);
	  test_r3_scaleto_vout = r3_zero();
	  //r4_scale_to(v, r, vout)
	  var test_r4_scaleto_v = r4(3, 6, 9, 12),
	      test_r4_scaleto_vout = r4_zero();
	  assert_is(r4_scale_to(test_r4_scaleto_v, 9, test_r4_scaleto_vout), test_r4_scaleto_vout, "r4_scale_to() didn't return vout!");
	  assert_equal(test_r4_scaleto_vout, r4(27, 54, 81, 108), "r4_scale_to() failed!");
	  assert_is(r4_scale_to(test_r4_scaleto_v, 9, test_r4_scaleto_v), test_r4_scaleto_v, "r4_scale_to() didn't return vout if it is v!");
	  assert_equal(test_r4_scaleto_v, r4(27, 54, 81, 108), "r4_scale_to() failed when vout is v!");
	  test_r4_scaleto_v = r4(3, 6, 9, 12);
	  test_r4_scaleto_vout = r4_zero();
	  //rn_scale_to(v, r, vout)
	  var test_rn_scaleto_v = rn(0, 5, 10, 15, 20, 25),
	      test_rn_scaleto_vout = rn_zero(6);
	  assert_is(rn_scale_to(test_rn_scaleto_v, 11, test_rn_scaleto_vout), test_rn_scaleto_vout, "rn_scale_to() didn't return vout!");
	  assert_equal(test_rn_scaleto_vout, rn(0, 55, 110, 165, 220, 275), "rn_scale_to() failed!");
	  assert_is(rn_scale_to(test_rn_scaleto_v, 11, test_rn_scaleto_v), test_rn_scaleto_v, "rn_scale_to() didn't return vout if it is v!");
	  assert_equal(test_rn_scaleto_v, rn(0, 55, 110, 165, 220, 275), "rn_scale_to() failed when vout is v!");
	  test_rn_scaleto_v = rn(0, 5, 10, 15, 20, 25);
	  test_rn_scaleto_vout = rn_zero(6);
  
  
	  //r2_unit(v)
	  assert_equalish(r2_unit(r2(3, -4)), r2(3/5, -4/5), "r2_unit() failed!");
	  assert_equal(r2_unit(r2_zero()), r2_zero(), "r2_unit() failed on zero vector!");
	  //r3_unit(v)
	  assert_equalish(r3_unit(r3(2, -10, 11)), r3(2/15, -2/3, 11/15), "r3_unit() failed!");
	  assert_equal(r3_unit(r3_zero()), r3_zero(), "r3_unit() failed on zero vector!");
	  assert_equal(r3_unit(r3(0, 0, 12)), r3(0, 0, 1), "r3_unit() failed regression against GitHub #4");
	  //r4_unit(v)
	  assert_equalish(r4_unit(r4(1, -2, 8, -10)), r4(1/13, -2/13, 8/13, -10/13), "r4_unit() failed!");
	  assert_equal(r4_unit(r4_zero()), r4_zero(), "r4_unit() failed on zero vector!");
	  //rn_unit(v)
	  assert_equalish(rn_unit(rn(3, -4)), rn(3/5, -4/5), "rn_unit() at 2D failed!");
	  assert_equalish(rn_unit(rn(2, -10, 11)), rn(2/15, -2/3, 11/15), "rn_unit() at 3D failed!");
	  assert_equalish(rn_unit(rn(1, -2, 8, -10)), rn(1/13, -2/13, 8/13, -10/13), "rn_unit() at 4D failed!");
	  assert_equalish(rn_unit(rn(8, -9, 7, -1, -4, 3, 2, 1)), rn(8/15, -3/5, 7/15, -1/15, -4/15, 1/5, 2/15, 1/15), "rn_unit() at 8D failed!");
	  assert_equal(rn_unit(r2_zero()), r2_zero(), "rn_unit() at 2D failed on zero vector!");
	  assert_equal(rn_unit(r3_zero()), r3_zero(), "rn_unit() at 3D failed on zero vector!");
	  assert_equal(rn_unit(r4_zero()), r4_zero(), "rn_unit() at 4D failed on zero vector!");
	  assert_equal(rn_unit(rn_zero(8)), rn_zero(8), "rn_unit() at 8D failed on zero vector!");
  
	  //r2_unit_to(v, vout)
	  var test_r2_unitto_v = r2(3, -4),
	      test_r2_unitto_vout = r2_zero();
	  assert_is(r2_unit_to(test_r2_unitto_v, test_r2_unitto_vout), test_r2_unitto_vout, "r2_unit_to() returned the wrong vector!");
	  assert_equalish(test_r2_unitto_vout, r2(3/5, -4/5), "r2_unit_to() failed!");
	  test_r2_unitto_vout = r2(pi, pi);
	  assert_is(r2_unit_to(r2_zero(), test_r2_unitto_vout), test_r2_unitto_vout, "r2_unit_to() returned the wrong vector on zero vector!");
	  assert_equal(test_r2_unitto_vout, r2_zero(), "r2_unit_to() failed on zero vector!");
	  test_r2_unitto_vout = r2_zero();
	  assert_is(r2_unit_to(test_r2_unitto_v, test_r2_unitto_v), test_r2_unitto_v, "r2_unit_to() returned the wrong vector when vout is v!");
	  assert_equalish(test_r2_unitto_v, r2(3/5, -4/5), "r2_unit_to() failed when vout is v!");
	  test_r2_unitto_v = r2_zero();
	  assert_is(r2_unit_to(test_r2_unitto_v, test_r2_unitto_v), test_r2_unitto_v, "r2_unit_to() returned the wrong vector on zero vector when vout is v!");
	  assert_equal(test_r2_unitto_v, r2_zero(), "r2_unit_to() failed on zero vector when vout is v!");
	  test_r2_unitto_v = r2(3, -4);
	  //r3_unit_to(v, vout)
	  var test_r3_unitto_v = r3(2, -10, 11),
	      test_r3_unitto_vout = r3_zero();
	  assert_is(r3_unit_to(test_r3_unitto_v, test_r3_unitto_vout), test_r3_unitto_vout, "r3_unit_to() returned the wrong vector!");
	  assert_equalish(test_r3_unitto_vout, r3(2/15, -2/3, 11/15), "r3_unit_to() failed!");
	  test_r3_unitto_vout = r3(pi, pi, pi);
	  assert_is(r3_unit_to(r3_zero(), test_r3_unitto_vout), test_r3_unitto_vout, "r3_unit_to() returned the wrong vector on zero vector!");
	  assert_equal(test_r3_unitto_vout, r3_zero(), "r3_unit_to() failed on zero vector!");
	  test_r3_unitto_vout = r3_zero();
	  assert_is(r3_unit_to(test_r3_unitto_v, test_r3_unitto_v), test_r3_unitto_v, "r3_unit_to() returned the wrong vector when vout is v!");
	  assert_equalish(test_r3_unitto_v, r3(2/15, -2/3, 11/15), "r3_unit_to() failed when vout is v!");
	  test_r3_unitto_v = r3_zero();
	  assert_is(r3_unit_to(test_r3_unitto_v, test_r3_unitto_v), test_r3_unitto_v, "r3_unit_to() returned the wrong vector on zero vector when vout is v!");
	  assert_equal(test_r3_unitto_v, r3_zero(), "r3_unit_to() failed on zero vector when vout is v!");
	  test_r3_unitto_v = r3(2, -10, 11);
	  //r4_unit_to(v, vout)
	  var test_r4_unitto_v = r4(1, -2, 8, -10),
	      test_r4_unitto_vout = r4_zero();
	  assert_is(r4_unit_to(test_r4_unitto_v, test_r4_unitto_vout), test_r4_unitto_vout, "r4_unit_to() returned the wrong vector!");
	  assert_equalish(test_r4_unitto_vout, r4(1/13, -2/13, 8/13, -10/13), "r4_unit_to() failed!");
	  test_r4_unitto_vout = r4(pi, pi, pi, pi);
	  assert_is(r4_unit_to(r4_zero(), test_r4_unitto_vout), test_r4_unitto_vout, "r4_unit_to() returned the wrong vector on zero vector!");
	  assert_equal(test_r4_unitto_vout, r4_zero(), "r4_unit_to() failed on zero vector!");
	  test_r4_unitto_vout = r4_zero();
	  assert_is(r4_unit_to(test_r4_unitto_v, test_r4_unitto_v), test_r4_unitto_v, "r4_unit_to() returned the wrong vector when vout is v!");
	  assert_equalish(test_r4_unitto_v, r4(1/13, -2/13, 8/13, -10/13), "r4_unit_to() failed when vout is v!");
	  test_r4_unitto_v = r4_zero();
	  assert_is(r4_unit_to(test_r4_unitto_v, test_r4_unitto_v), test_r4_unitto_v, "r4_unit_to() returned the wrong vector on zero vector when vout is v!");
	  assert_equal(test_r4_unitto_v, r4_zero(), "r4_unit_to() failed on zero vector when vout is v!");
	  test_r4_unitto_v = r4(1, -2, 8, -10);
	  //rn_unit_to(v, vout)
	  var test_rn_unitto_v = rn(8, -9, 7, -1, -4, 3, 2, 1),
	      test_rn_unitto_vout = rn_zero(8);
	  assert_is(rn_unit_to(test_rn_unitto_v, test_rn_unitto_vout), test_rn_unitto_vout, "rn_unit_to() returned the wrong vector!");
	  assert_equalish(test_rn_unitto_vout, rn(8/15, -3/5, 7/15, -1/15, -4/15, 1/5, 2/15, 1/15), "rn_unit_to() failed!");
	  test_rn_unitto_vout = rn(pi, pi, pi, pi, pi, pi, pi, pi);
	  assert_is(rn_unit_to(rn_zero(8), test_rn_unitto_vout), test_rn_unitto_vout, "rn_unit_to() returned the wrong vector on zero vector!");
	  assert_equal(test_rn_unitto_vout, rn_zero(8), "rn_unit_to() failed on zero vector!");
	  test_rn_unitto_vout = rn(8, -9, 7, -1, -4, 3, 2, 1);
	  assert_is(rn_unit_to(test_rn_unitto_v, test_rn_unitto_v), test_rn_unitto_v, "rn_unit_to() returned the wrong vector when vout is v!");
	  assert_equalish(test_rn_unitto_v, rn(8/15, -3/5, 7/15, -1/15, -4/15, 1/5, 2/15, 1/15), "rn_unit_to() failed when vout is v!");
	  test_rn_unitto_v = rn_zero(8);
	  assert_is(rn_unit_to(test_rn_unitto_v, test_rn_unitto_v), test_rn_unitto_v, "rn_unit_to() returned the wrong vector on zero vector when vout is v!");
	  assert_equal(test_rn_unitto_v, rn_zero(8), "rn_unit_to() failed on zero vector when vout is v!");
	  test_rn_unitto_v = rn(8, -9, 7, -1, -4, 3, 2, 1);
  
  
	  //r2_norm(v)
	  assert_equalish(r2_norm(r2(3, -4)), 5, "r2_norm() failed!");
	  //r3_norm(v)
	  assert_equalish(r3_norm(r3(2, -10, 11)), 15, "r3_norm() failed!");
	  //r4_norm(v)
	  assert_equalish(r4_norm(r4(1, -2, 8, -10)), 13, "r4_norm() failed!");
	  //rn_norm(v)
	  assert_equalish(rn_norm(r2(3, -4)), 5, "rn_norm() at 2D failed!");
	  assert_equalish(rn_norm(r3(2, -10, 11)), 15, "rn_norm() at 3D failed!");
	  assert_equalish(rn_norm(r4(1, -2, 8, -10)), 13, "rn_norm() at 4D failed!");
	  assert_equalish(rn_norm(rn(8, -9, 7, -1, -4, 3, 2, 1)), 15, "rn_norm() at 8D failed!");
  
	  //r2_dist(v1, v2)
	  assert_equalish(r2_dist(r2(6, -8), r2(3, -4)), 5, "r2_dist() failed!");
	  //r3_dist(v1, v2)
	  assert_equalish(r3_dist(r3(2, -10, 11), r3(4, 0, 22)), 15, "r3_dist() failed!");
	  //r4_dist(v1, v2)
	  assert_equalish(r4_dist(r4(1, -2, 8, -10), r4(2, 0, 16, -20)), 13, "r4_dist() failed!");
	  //rn_dist(v1, v2)
	  assert_equalish(rn_dist(r2(6, -8), r2(3, -4)), 5, "rn_dist() at 2D failed!");
	  assert_equalish(rn_dist(r3(2, -10, 11), r3(4, 0, 22)), 15, "rn_dist() at 3D failed!");
	  assert_equalish(rn_dist(r4(1, -2, 8, -10), r4(2, 0, 16, -20)), 13, "rn_dist() at 4D failed!");
	  assert_equalish(rn_dist(rn(8, -9, 7, -1, -4, 3, 2, 1), rn(16, -18, 0, -2, 0, 0, 4, 2)), 15, "rn_dist() at 8D failed!");

	  //r2_sqrnorm(v)
	  assert_equalish(r2_sqrnorm(r2(3, -4)), 25, "r2_sqrnorm() failed!");
	  //r3_sqrnorm(v)
	  assert_equalish(r3_sqrnorm(r3(2, -10, 11)), 225, "r3_sqrnorm() failed!");
	  //r4_sqrnorm(v)
	  assert_equalish(r4_sqrnorm(r4(1, -2, 8, -10)), 169, "r4_sqrnorm() failed!");
	  //rn_sqrnorm(v)
	  assert_equalish(rn_sqrnorm(r2(3, -4)), 25, "rn_sqrnorm() at 2D failed!");
	  assert_equalish(rn_sqrnorm(r3(2, -10, 11)), 225, "rn_sqrnorm() at 3D failed!");
	  assert_equalish(rn_sqrnorm(r4(1, -2, 8, -10)), 169, "rn_sqrnorm() at 4D failed!");
	  assert_equalish(rn_sqrnorm(rn(8, -9, 7, -1, -4, 3, 2, 1)), 225, "rn_sqrnorm() at 8D failed!");

	  //r2_1norm(v)
	  assert_equalish(r2_1norm(r2(3, -4)), 7, "r2_1norm() failed!");
	  //r3_1norm(v)
	  assert_equalish(r3_1norm(r3(2, -10, 11)), 23, "r3_1norm() failed!");
	  //r4_1norm(v)
	  assert_equalish(r4_1norm(r4(1, -2, 8, -10)), 21, "r4_1norm() failed!");
	  //rn_1norm(v)
	  assert_equalish(rn_1norm(r2(3, -4)), 7, "rn_1norm() at 2D failed!");
	  assert_equalish(rn_1norm(r3(2, -10, 11)), 23, "rn_1norm() at 3D failed!");
	  assert_equalish(rn_1norm(r4(1, -2, 8, -10)), 21, "rn_1norm() at 4D failed!");
	  assert_equalish(rn_1norm(rn(8, -9, 7, -1, -4, 3, 2, 1)), 35, "rn_1norm() at 8D failed!");
  
	  //r2_1dist(v1, v2)
	  assert_equalish(r2_1dist(r2(6, -8), r2(3, -4)), 7, "r2_1dist() failed!");
	  //r3_1dist(v1, v2)
	  assert_equalish(r3_1dist(r3(2, -10, 11), r3(4, 0, 22)), 23, "r3_1dist() failed!");
	  //r4_1dist(v1, v2)
	  assert_equalish(r4_1dist(r4(1, -2, 8, -10), r4(2, 0, 16, -20)), 21, "r4_1dist() failed!");
	  //rn_1dist(v1, v2)
	  assert_equalish(rn_1dist(r2(6, -8), r2(3, -4)), 7, "rn_1dist() at 2D failed!");
	  assert_equalish(rn_1dist(r3(2, -10, 11), r3(4, 0, 22)), 23, "rn_1dist() at 3D failed!");
	  assert_equalish(rn_1dist(r4(1, -2, 8, -10), r4(2, 0, 16, -20)), 21, "rn_1dist() at 4D failed!");
	  assert_equalish(rn_1dist(rn(8, -9, 7, -1, -4, 3, 2, 1), rn(16, -18, 0, -2, 0, 0, 4, 2)), 35, "rn_1dist() at 8D failed!");
  
  
	  //r2_maxnorm(v)
	  assert_equalish(r2_maxnorm(r2(3, -4)), 4, "r2_maxnorm() failed!");
	  //r3_maxnorm(v)
	  assert_equalish(r3_maxnorm(r3(2, -10, 11)), 11, "r3_maxnorm() failed!");
	  //r4_maxnorm(v)
	  assert_equalish(r4_maxnorm(r4(1, -2, 8, -10)), 10, "r4_maxnorm() failed!");
	  //rn_maxnorm(v)
	  assert_equalish(rn_maxnorm(r2(3, -4)), 4, "rn_maxnorm() at 2D failed!");
	  assert_equalish(rn_maxnorm(r3(2, -10, 11)), 11, "rn_maxnorm() at 3D failed!");
	  assert_equalish(rn_maxnorm(r4(1, -2, 8, -10)), 10, "rn_maxnorm() at 4D failed!");
	  assert_equalish(rn_maxnorm(rn(8, -9, 7, -1, -4, 3, 2, 1)), 9, "rn_maxnorm() at 8D failed!");
  
  
	  //r2_lerp(v1, v2, amount)
	  var test_r2_lerp_v1 = r2(3, -5),
	      test_r2_lerp_v2 = r2(-3, 7);
	  assert_equal(r2_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 0), test_r2_lerp_v1, "r2_lerp() at 0 failed!");
	  assert_equal(r2_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1), test_r2_lerp_v2, "r2_lerp() at 1 failed!");
	  assert_equalish(r2_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1/2), r2(0, 1), "r2_lerp() at 1/2 failed!");
	  //r3_lerp(v1, v2, amount)
	  var test_r3_lerp_v1 = r3(0, 17, -3),
	      test_r3_lerp_v2 = r3(6, -1, 3);
	  assert_equal(r3_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 0), test_r3_lerp_v1, "r3_lerp() at 0 failed!");
	  assert_equal(r3_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1), test_r3_lerp_v2, "r3_lerp() at 1 failed!");
	  assert_equalish(r3_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1/3), r3(2, 11, -1), "r3_lerp() at 1/3 failed!");
	  //r4_lerp(v1, v2, amount)
	  var test_r4_lerp_v1 = r4(0, 7, -3, 7),
	      test_r4_lerp_v2 = r4(8, -1, 17, 15);
	  assert_equal(r4_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 0), test_r4_lerp_v1, "r4_lerp() at 0 failed!");
	  assert_equal(r4_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1), test_r4_lerp_v2, "r4_lerp() at 1 failed!");
	  assert_equalish(r4_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1/4), r4(2, 5, 2, 9), "r4_lerp() at 1/4 failed!");
	  //rn_lerp(v1, v2, amount)
	  assert_equal(rn_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 0), test_r2_lerp_v1, "rn_lerp() 2D at 0 failed!");
	  assert_equal(rn_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1), test_r2_lerp_v2, "rn_lerp() 2D at 1 failed!");
	  assert_equalish(rn_lerp(test_r2_lerp_v1, test_r2_lerp_v2, 1/2), rn(0, 1), "rn_lerp() 2D at 1/2 failed!");
	  assert_equal(rn_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 0), test_r3_lerp_v1, "rn_lerp() 3D at 0 failed!");
	  assert_equal(rn_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1), test_r3_lerp_v2, "rn_lerp() 3D at 1 failed!");
	  assert_equalish(rn_lerp(test_r3_lerp_v1, test_r3_lerp_v2, 1/3), rn(2, 11, -1), "rn_lerp() 3D at 1/3 failed!");
	  assert_equal(rn_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 0), test_r4_lerp_v1, "rn_lerp() 4D at 0 failed!");
	  assert_equal(rn_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1), test_r4_lerp_v2, "rn_lerp() 4D at 1 failed!");
	  assert_equalish(rn_lerp(test_r4_lerp_v1, test_r4_lerp_v2, 1/4), rn(2, 5, 2, 9), "rn_lerp() 4D at 1/4 failed!");
	  var test_rn_lerp_v1 = rn(0, 7, -3, 7, -27, 0),
	      test_rn_lerp_v2 = rn(8, -1, 17, 15, -11, 0);
	  assert_equal(rn_lerp(test_rn_lerp_v1, test_rn_lerp_v2, 0), test_rn_lerp_v1, "rn_lerp() at 0 failed!");
	  assert_equal(rn_lerp(test_rn_lerp_v1, test_rn_lerp_v2, 1), test_rn_lerp_v2, "rn_lerp() at 1 failed!");
	  assert_equalish(rn_lerp(test_rn_lerp_v1, test_rn_lerp_v2, 3/4), rn(6, 1, 12, 13, -15, 0), "rn_lerp() at 3/4 failed!");
  
	  //r2_lerp_to(v1, v2, amount, vout)
	  var test_r2_lerpto_v1 = r2(3, -5),
	      test_r2_lerpto_v2 = r2(-3, 7),
	      test_r2_lerpto_vout = r2_zero();
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 0, test_r2_lerpto_vout), test_r2_lerpto_vout, "r2_lerp_to() at 0 returned the wrong vector!");
	  assert_equal(test_r2_lerpto_vout, test_r2_lerpto_v1, "r2_lerp_to() at 0 failed!");
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1, test_r2_lerpto_vout), test_r2_lerpto_vout, "r2_lerp_to() at 1 returned the wrong vector!");
	  assert_equal(test_r2_lerpto_vout, test_r2_lerpto_v2, "r2_lerp_to() at 1 failed!");
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1/2, test_r2_lerpto_vout), test_r2_lerpto_vout, "r2_lerp_to() at 1/2 returned the wrong vector!");
	  assert_equalish(test_r2_lerpto_vout, r2(0, 1), "r2_lerp_to() at 1/2 failed!");
	  test_r2_lerpto_vout = r2_zero();
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 0, test_r2_lerpto_v1), test_r2_lerpto_v1, "r2_lerp_to() at 0 returned the wrong vector when vout is v1!");
	  assert_equal(test_r2_lerpto_v1, test_r2_lerpto_v1, "r2_lerp_to() at 0 failed when vout is v1!");
	  test_r2_lerpto_v1 = r2(3, -5);
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1, test_r2_lerpto_v1), test_r2_lerpto_v1, "r2_lerp_to() at 1 returned the wrong vector when vout is v1!");
	  assert_equal(test_r2_lerpto_v1, test_r2_lerpto_v2, "r2_lerp_to() at 1 failed when vout is v1!");
	  test_r2_lerpto_v1 = r2(3, -5);
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1/2, test_r2_lerpto_v1), test_r2_lerpto_v1, "r2_lerp_to() at 1/2 returned the wrong vector when vout is v1!");
	  assert_equalish(test_r2_lerpto_v1, r2(0, 1), "r2_lerp_to() at 1/2 failed when vout is v1!");
	  test_r2_lerpto_v1 = r2(3, -5);
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 0, test_r2_lerpto_v2), test_r2_lerpto_v2, "r2_lerp_to() at 0 returned the wrong vector when vout is v2!");
	  assert_equal(test_r2_lerpto_v2, test_r2_lerpto_v1, "r2_lerp_to() at 0 failed when vout is v2!");
	  test_r2_lerpto_v2 = r2(-3, 7);
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1, test_r2_lerpto_v2), test_r2_lerpto_v2, "r2_lerp_to() at 1 returned the wrong vector when vout is v2!");
	  assert_equal(test_r2_lerpto_v2, test_r2_lerpto_v2, "r2_lerp_to() at 1 failed when vout is v2!");
	  test_r2_lerpto_v2 = r2(-3, 7);
	  assert_is(r2_lerp_to(test_r2_lerpto_v1, test_r2_lerpto_v2, 1/2, test_r2_lerpto_v2), test_r2_lerpto_v2, "r2_lerp_to() at 1/2 returned the wrong vector when vout is v2!");
	  assert_equalish(test_r2_lerpto_v2, r2(0, 1), "r2_lerp_to() at 1/2 failed when vout is v2!");
	  test_r2_lerpto_v2 = r2(-3, 7);
	  //r3_lerp_to(v1, v2, amount, vout)
	  var test_r3_lerpto_v1 = r3(0, 17, -3),
	      test_r3_lerpto_v2 = r3(6, -1, 3),
	      test_r3_lerpto_vout = r3_zero();
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 0, test_r3_lerpto_vout), test_r3_lerpto_vout, "r3_lerp_to() at 0 returned the wrong vector!");
	  assert_equal(test_r3_lerpto_vout, test_r3_lerpto_v1, "r3_lerp_to() at 0 failed!");
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1, test_r3_lerpto_vout), test_r3_lerpto_vout, "r3_lerp_to() at 1 returned the wrong vector!");
	  assert_equal(test_r3_lerpto_vout, test_r3_lerpto_v2, "r3_lerp_to() at 1 failed!");
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1/3, test_r3_lerpto_vout), test_r3_lerpto_vout, "r3_lerp_to() at 1/3 returned the wrong vector!");
	  assert_equalish(test_r3_lerpto_vout, r3(2, 11, -1), "r3_lerp_to() at 1/3 failed!");
	  test_r3_lerpto_vout = r3_zero();
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 0, test_r3_lerpto_v1), test_r3_lerpto_v1, "r3_lerp_to() at 0 returned the wrong vector when vout is v1!");
	  assert_equal(test_r3_lerpto_v1, test_r3_lerpto_v1, "r3_lerp_to() at 0 failed when vout is v1!");
	  test_r3_lerpto_v1 = r3(0, 17, -3);
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1, test_r3_lerpto_v1), test_r3_lerpto_v1, "r3_lerp_to() at 1 returned the wrong vector when vout is v1!");
	  assert_equal(test_r3_lerpto_v1, test_r3_lerpto_v2, "r3_lerp_to() at 1 failed when vout is v1!");
	  test_r3_lerpto_v1 = r3(0, 17, -3);
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1/3, test_r3_lerpto_v1), test_r3_lerpto_v1, "r3_lerp_to() at 1/3 returned the wrong vector when vout is v1!");
	  assert_equalish(test_r3_lerpto_v1, r3(2, 11, -1), "r3_lerp_to() at 1/3 failed when vout is v1!");
	  test_r3_lerpto_v1 = r3(0, 17, -3);
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 0, test_r3_lerpto_v2), test_r3_lerpto_v2, "r3_lerp_to() at 0 returned the wrong vector when vout is v2!");
	  assert_equal(test_r3_lerpto_v2, test_r3_lerpto_v1, "r3_lerp_to() at 0 failed when vout is v2!");
	  test_r3_lerpto_v2 = r3(6, -1, 3);
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1, test_r3_lerpto_v2), test_r3_lerpto_v2, "r3_lerp_to() at 1 returned the wrong vector when vout is v2!");
	  assert_equal(test_r3_lerpto_v2, test_r3_lerpto_v2, "r3_lerp_to() at 1 failed when vout is v2!");
	  test_r3_lerpto_v2 = r3(6, -1, 3);
	  assert_is(r3_lerp_to(test_r3_lerpto_v1, test_r3_lerpto_v2, 1/3, test_r3_lerpto_v2), test_r3_lerpto_v2, "r3_lerp_to() at 1/3 returned the wrong vector when vout is v2!");
	  assert_equalish(test_r3_lerpto_v2, r3(2, 11, -1), "r3_lerp_to() at 1/3 failed when vout is v2!");
	  test_r3_lerpto_v2 = r3(6, -1, 3);
	  //r4_lerp_to(v1, v2, amount, vout)
	  var test_r4_lerpto_v1 = r4(0, 7, -3, 7),
	      test_r4_lerpto_v2 = r4(8, -1, 17, 15),
	      test_r4_lerpto_vout = r4_zero();
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 0, test_r4_lerpto_vout), test_r4_lerpto_vout, "r4_lerp_to() at 0 returned the wrong vector!");
	  assert_equal(test_r4_lerpto_vout, test_r4_lerpto_v1, "r4_lerp_to() at 0 failed!");
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1, test_r4_lerpto_vout), test_r4_lerpto_vout, "r4_lerp_to() at 1 returned the wrong vector!");
	  assert_equal(test_r4_lerpto_vout, test_r4_lerpto_v2, "r4_lerp_to() at 1 failed!");
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1/4, test_r4_lerpto_vout), test_r4_lerpto_vout, "r4_lerp_to() at 1/4 returned the wrong vector!");
	  assert_equalish(test_r4_lerpto_vout, r4(2, 5, 2, 9), "r4_lerp_to() at 1/4 failed!");
	  test_r4_lerpto_vout = r4_zero();
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 0, test_r4_lerpto_v1), test_r4_lerpto_v1, "r4_lerp_to() at 0 returned the wrong vector when vout is v1!");
	  assert_equal(test_r4_lerpto_v1, test_r4_lerpto_v1, "r4_lerp_to() at 0 failed when vout is v1!");
	  test_r4_lerpto_v1 = r4(0, 7, -3, 7);
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1, test_r4_lerpto_v1), test_r4_lerpto_v1, "r4_lerp_to() at 1 returned the wrong vector when vout is v1!");
	  assert_equal(test_r4_lerpto_v1, test_r4_lerpto_v2, "r4_lerp_to() at 1 failed when vout is v1!");
	  test_r4_lerpto_v1 = r4(0, 7, -3, 7);
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1/4, test_r4_lerpto_v1), test_r4_lerpto_v1, "r4_lerp_to() at 1/4 returned the wrong vector when vout is v1!");
	  assert_equalish(test_r4_lerpto_v1, r4(2, 5, 2, 9), "r4_lerp_to() at 1/4 failed when vout is v1!");
	  test_r4_lerpto_v1 = r4(0, 7, -3, 7);
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 0, test_r4_lerpto_v2), test_r4_lerpto_v2, "r4_lerp_to() at 0 returned the wrong vector when vout is v2!");
	  assert_equal(test_r4_lerpto_v2, test_r4_lerpto_v1, "r4_lerp_to() at 0 failed when vout is v2!");
	  test_r4_lerpto_v2 = r4(8, -1, 17, 15);
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1, test_r4_lerpto_v2), test_r4_lerpto_v2, "r4_lerp_to() at 1 returned the wrong vector when vout is v2!");
	  assert_equal(test_r4_lerpto_v2, test_r4_lerpto_v2, "r4_lerp_to() at 1 failed when vout is v2!");
	  test_r4_lerpto_v2 = r4(8, -1, 17, 15);
	  assert_is(r4_lerp_to(test_r4_lerpto_v1, test_r4_lerpto_v2, 1/4, test_r4_lerpto_v2), test_r4_lerpto_v2, "r4_lerp_to() at 1/4 returned the wrong vector when vout is v2!");
	  assert_equalish(test_r4_lerpto_v2, r4(2, 5, 2, 9), "r4_lerp_to() at 1/4 failed when vout is v2!");
	  test_r4_lerpto_v2 = r4(8, -1, 17, 15);
	  //rn_lerp_to(v1, v2, amount, vout)
	  var test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0),
	      test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0),
	      test_rn_lerpto_vout = rn_zero(6);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 0, test_rn_lerpto_vout), test_rn_lerpto_vout, "rn_lerp_to() at 0 returned the wrong vector!");
	  assert_equal(test_rn_lerpto_vout, test_rn_lerpto_v1, "rn_lerp_to() at 0 failed!");
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 1, test_rn_lerpto_vout), test_rn_lerpto_vout, "rn_lerp_to() at 1 returned the wrong vector!");
	  assert_equal(test_rn_lerpto_vout, test_rn_lerpto_v2, "rn_lerp_to() at 1 failed!");
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 3/4, test_rn_lerpto_vout), test_rn_lerpto_vout, "rn_lerp_to() at 3/4 returned the wrong vector!");
	  assert_equalish(test_rn_lerpto_vout, rn(6, 1, 12, 13, -15, 0), "rn_lerp_to() at 3/4 failed!");
	  test_rn_lerpto_vout = rn_zero(6);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 0, test_rn_lerpto_v1), test_rn_lerpto_v1, "rn_lerp_to() at 0 returned the wrong vector when vout is v1!");
	  assert_equal(test_rn_lerpto_v1, test_rn_lerpto_v1, "rn_lerp_to() at 0 failed when vout is v1!");
	  test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 1, test_rn_lerpto_v1), test_rn_lerpto_v1, "rn_lerp_to() at 1 returned the wrong vector when vout is v1!");
	  assert_equal(test_rn_lerpto_v1, test_rn_lerpto_v2, "rn_lerp_to() at 1 failed when vout is v1!");
	  test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 3/4, test_rn_lerpto_v1), test_rn_lerpto_v1, "rn_lerp_to() at 3/4 returned the wrong vector when vout is v1!");
	  assert_equalish(test_rn_lerpto_v1, rn(6, 1, 12, 13, -15, 0), "rn_lerp_to() at 3/4 failed when vout is v1!");
	  test_rn_lerpto_v1 = rn(0, 7, -3, 7, -27, 0);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 0, test_rn_lerpto_v2), test_rn_lerpto_v2, "rn_lerp_to() at 0 returned the wrong vector when vout is v2!");
	  assert_equal(test_rn_lerpto_v2, test_rn_lerpto_v1, "rn_lerp_to() at 0 failed when vout is v2!");
	  test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 1, test_rn_lerpto_v2), test_rn_lerpto_v2, "rn_lerp_to() at 1 returned the wrong vector when vout is v2!");
	  assert_equal(test_rn_lerpto_v2, test_rn_lerpto_v2, "rn_lerp_to() at 1 failed when vout is v2!");
	  test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0);
	  assert_is(rn_lerp_to(test_rn_lerpto_v1, test_rn_lerpto_v2, 3/4, test_rn_lerpto_v2), test_rn_lerpto_v2, "rn_lerp_to() at 3/4 returned the wrong vector when vout is v2!");
	  assert_equalish(test_rn_lerpto_v2, rn(6, 1, 12, 13, -15, 0), "rn_lerp_to() at 3/4 failed when vout is v2!");
	  test_rn_lerpto_v2 = rn(8, -1, 17, 15, -11, 0);
  
  
	  //r2_proj(v1, v2)
	  assert_equal(r2_proj(r2(6, -8), r2(1, 2)), r2(-2, -4), "r2_proj() failed!");
	  //r3_proj(v1, v2)
	  assert_equal(r3_proj(r3(-7, 3, 9), r3(1, 2, -3)), r3(-2, -4, 6), "r3_proj() failed!");
	  //r4_proj(v1, v2)
	  assert_equal(r4_proj(r4(-1, -3, 4, -20), r4(1, -2, 3, -5)), r4(3, -6, 9, -15), "r4_proj() failed!");
	  //rn_proj(v1, v2)
	  assert_equal(rn_proj(rn(6, -8), rn(1, 2)), rn(-2, -4), "rn_proj() in 2D failed!");
	  assert_equal(rn_proj(rn(-7, 3, 9), rn(1, 2, -3)), rn(-2, -4, 6), "rn_proj() in 3D failed!");
	  assert_equal(rn_proj(rn(-1, -3, 4, -20), rn(1, -2, 3, -5)), rn(3, -6, 9, -15), "rn_proj() in 4D failed!");
	  assert_equal(rn_proj(rn(5, 4, 4, 5, 2), rn(-1, -2, -3, -4, -5)), rn(1, 2, 3, 4, 5), "rn_proj() in 5D failed!");
  
	  //r2_rej(v1, v2)
	  assert_equal(r2_rej(r2(6, -8), r2(1, 2)), r2(8, -4), "r2_rej() failed!");
	  //r3_rej(v1, v2)
	  assert_equal(r3_rej(r3(-7, 3, 9), r3(1, 2, -3)), r3(-5, 7, 3), "r3_rej() failed!");
	  //r4_rej(v1, v2)
	  assert_equal(r4_rej(r4(-1, -3, 4, -20), r4(1, -2, 3, -5)), r4(-4, 3, -5, -5), "r4_rej() failed!");
	  //rn_rej(v1, v2)
	  assert_equal(rn_rej(rn(6, -8), rn(1, 2)), rn(8, -4), "rn_rej() in 2D failed!");
	  assert_equal(rn_rej(rn(-7, 3, 9), rn(1, 2, -3)), rn(-5, 7, 3), "rn_rej() in 3D failed!");
	  assert_equal(rn_rej(rn(-1, -3, 4, -20), rn(1, -2, 3, -5)), rn(-4, 3, -5, -5), "rn_rej() in 4D failed!");
	  assert_equal(rn_rej(rn(5, 4, 4, 5, 2), rn(-1, -2, -3, -4, -5)), rn(4, 2, 1, 1, -3), "rn_rej() in 5D failed!");
  
	  //r2_proj_to(v1, v2, vout)
	  var test_r2_projto_v1 = r2(6, -8),
	      test_r2_projto_v2 = r2(1, 2),
	      test_r2_projto_vout = r2_zero();
	  assert_is(r2_proj_to(test_r2_projto_v1, test_r2_projto_v2, test_r2_projto_vout), test_r2_projto_vout, "r2_proj_to() returned the wrong vector!");
	  assert_equal(test_r2_projto_vout, r2(-2, -4), "r2_proj_to() failed!");
	  test_r2_projto_vout = r2_zero();
	  assert_is(r2_proj_to(test_r2_projto_v1, test_r2_projto_v2, test_r2_projto_v1), test_r2_projto_v1, "r2_proj_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_r2_projto_v1, r2(-2, -4), "r2_proj_to() failed when vout is v1!");
	  test_r2_projto_v1 = r2(6, -8);
	  assert_is(r2_proj_to(test_r2_projto_v1, test_r2_projto_v2, test_r2_projto_v2), test_r2_projto_v2, "r2_proj_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_r2_projto_v2, r2(-2, -4), "r2_proj_to() failed when vout is v2!");
	  test_r2_projto_v2 = r2(1, 2);
	  //r3_proj_to(v1, v2, vout)
	  var test_r3_projto_v1 = r3(-7, 3, 9),
	      test_r3_projto_v2 = r3(1, 2, -3),
	      test_r3_projto_vout = r3_zero();
	  assert_is(r3_proj_to(test_r3_projto_v1, test_r3_projto_v2, test_r3_projto_vout), test_r3_projto_vout, "r3_proj_to() returned the wrong vector!");
	  assert_equal(test_r3_projto_vout, r3(-2, -4, 6), "r3_proj_to() failed!");
	  test_r3_projto_vout = r3_zero();
	  assert_is(r3_proj_to(test_r3_projto_v1, test_r3_projto_v2, test_r3_projto_v1), test_r3_projto_v1, "r3_proj_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_r3_projto_v1, r3(-2, -4, 6), "r3_proj_to() failed when vout is v1!");
	  test_r3_projto_v1 = r3(-7, 3, 9);
	  assert_is(r3_proj_to(test_r3_projto_v1, test_r3_projto_v2, test_r3_projto_v2), test_r3_projto_v2, "r3_proj_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_r3_projto_v2, r3(-2, -4, 6), "r3_proj_to() failed when vout is v2!");
	  test_r3_projto_v2 = r3(1, 2, -3);
	  //r4_proj_to(v1, v2, vout)
	  var test_r4_projto_v1 = r4(-1, -3, 4, -20),
	      test_r4_projto_v2 = r4(1, -2, 3, -5),
	      test_r4_projto_vout = r4_zero();
	  assert_is(r4_proj_to(test_r4_projto_v1, test_r4_projto_v2, test_r4_projto_vout), test_r4_projto_vout, "r4_proj_to() returned the wrong vector!");
	  assert_equal(test_r4_projto_vout, r4(3, -6, 9, -15), "r4_proj_to() failed!");
	  test_r4_projto_vout = r4_zero();
	  assert_is(r4_proj_to(test_r4_projto_v1, test_r4_projto_v2, test_r4_projto_v1), test_r4_projto_v1, "r4_proj_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_r4_projto_v1, r4(3, -6, 9, -15), "r4_proj_to() failed when vout is v1!");
	  test_r4_projto_v1 = r4(-1, -3, 4, -20);
	  assert_is(r4_proj_to(test_r4_projto_v1, test_r4_projto_v2, test_r4_projto_v2), test_r4_projto_v2, "r4_proj_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_r4_projto_v2, r4(3, -6, 9, -15), "r4_proj_to() failed when vout is v2!");
	  test_r4_projto_v2 = r4(1, -2, 3, -5);
	  //rn_proj_to(v1, v2, vout)
	  var test_rn_projto_v1 = rn(5, 4, 4, 5, 2),
	      test_rn_projto_v2 = rn(-1, -2, -3, -4, -5),
	      test_rn_projto_vout = rn_zero(5);
	  assert_is(rn_proj_to(test_rn_projto_v1, test_rn_projto_v2, test_rn_projto_vout), test_rn_projto_vout, "rn_proj_to() returned the wrong vector!");
	  assert_equal(test_rn_projto_vout, rn(1, 2, 3, 4, 5), "rn_proj_to() failed!");
	  test_rn_projto_vout = rn_zero(5);
	  assert_is(rn_proj_to(test_rn_projto_v1, test_rn_projto_v2, test_rn_projto_v1), test_rn_projto_v1, "rn_proj_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_rn_projto_v1, rn(1, 2, 3, 4, 5), "rn_proj_to() failed when vout is v1!");
	  test_rn_projto_v1 = rn(5, 4, 4, 5, 2);
	  assert_is(rn_proj_to(test_rn_projto_v1, test_rn_projto_v2, test_rn_projto_v2), test_rn_projto_v2, "rn_proj_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_rn_projto_v2, rn(1, 2, 3, 4, 5), "rn_proj_to() failed when vout is v2!");
	  test_rn_projto_v2 = rn(-1, -2, -3, -4, -5);
  
	  //r2_rej_to(v1, v2, vout)
	  var test_r2_rejto_v1 = r2(6, -8),
	      test_r2_rejto_v2 = r2(1, 2),
	      test_r2_rejto_vout = r2_zero();
	  assert_is(r2_rej_to(test_r2_rejto_v1, test_r2_rejto_v2, test_r2_rejto_vout), test_r2_rejto_vout, "r2_rej_to() returned the wrong vector!");
	  assert_equal(test_r2_rejto_vout, r2(8, -4), "r2_rej_to() failed!");
	  test_r2_rejto_vout = r2_zero();
	  assert_is(r2_rej_to(test_r2_rejto_v1, test_r2_rejto_v2, test_r2_rejto_v1), test_r2_rejto_v1, "r2_rej_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_r2_rejto_v1, r2(8, -4), "r2_rej_to() failed when vout is v1!");
	  test_r2_rejto_v1 = r2(6, -8);
	  assert_is(r2_rej_to(test_r2_rejto_v1, test_r2_rejto_v2, test_r2_rejto_v2), test_r2_rejto_v2, "r2_rej_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_r2_rejto_v2, r2(8, -4), "r2_rej_to() failed when vout is v2!");
	  test_r2_rejto_v2 = r2(1, 2);
	  //r3_rej_to(v1, v2, vout)
	  var test_r3_rejto_v1 = r3(-7, 3, 9),
	      test_r3_rejto_v2 = r3(1, 2, -3),
	      test_r3_rejto_vout = r3_zero();
	  assert_is(r3_rej_to(test_r3_rejto_v1, test_r3_rejto_v2, test_r3_rejto_vout), test_r3_rejto_vout, "r3_rej_to() returned the wrong vector!");
	  assert_equal(test_r3_rejto_vout, r3(-5, 7, 3), "r3_rej_to() failed!");
	  test_r3_rejto_vout = r3_zero();
	  assert_is(r3_rej_to(test_r3_rejto_v1, test_r3_rejto_v2, test_r3_rejto_v1), test_r3_rejto_v1, "r3_rej_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_r3_rejto_v1, r3(-5, 7, 3), "r3_rej_to() failed when vout is v1!");
	  test_r3_rejto_v1 = r3(-7, 3, 9);
	  assert_is(r3_rej_to(test_r3_rejto_v1, test_r3_rejto_v2, test_r3_rejto_v2), test_r3_rejto_v2, "r3_rej_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_r3_rejto_v2, r3(-5, 7, 3), "r3_rej_to() failed when vout is v2!");
	  test_r3_rejto_v2 = r3(1, 2, -3);
	  //r4_rej_to(v1, v2, vout)
	  var test_r4_rejto_v1 = r4(-1, -3, 4, -20),
	      test_r4_rejto_v2 = r4(1, -2, 3, -5),
	      test_r4_rejto_vout = r4_zero();
	  assert_is(r4_rej_to(test_r4_rejto_v1, test_r4_rejto_v2, test_r4_rejto_vout), test_r4_rejto_vout, "r4_rej_to() returned the wrong vector!");
	  assert_equal(test_r4_rejto_vout, r4(-4, 3, -5, -5), "r4_rej_to() failed!");
	  test_r4_rejto_vout = r4_zero();
	  assert_is(r4_rej_to(test_r4_rejto_v1, test_r4_rejto_v2, test_r4_rejto_v1), test_r4_rejto_v1, "r4_rej_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_r4_rejto_v1, r4(-4, 3, -5, -5), "r4_rej_to() failed when vout is v1!");
	  test_r4_rejto_v1 = r4(-1, -3, 4, -20);
	  assert_is(r4_rej_to(test_r4_rejto_v1, test_r4_rejto_v2, test_r4_rejto_v2), test_r4_rejto_v2, "r4_rej_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_r4_rejto_v2, r4(-4, 3, -5, -5), "r4_rej_to() failed when vout is v2!");
	  test_r4_rejto_v2 = r4(1, -2, 3, -5);
	  //rn_rej_to(v1, v2, vout)
	  var test_rn_rejto_v1 = rn(5, 4, 4, 5, 2),
	      test_rn_rejto_v2 = rn(-1, -2, -3, -4, -5),
	      test_rn_rejto_vout = rn_zero(5);
	  assert_is(rn_rej_to(test_rn_rejto_v1, test_rn_rejto_v2, test_rn_rejto_vout), test_rn_rejto_vout, "rn_rej_to() returned the wrong vector!");
	  assert_equal(test_rn_rejto_vout, rn(4, 2, 1, 1, -3), "rn_rej_to() failed!");
	  test_rn_rejto_vout = rn_zero(5);
	  assert_is(rn_rej_to(test_rn_rejto_v1, test_rn_rejto_v2, test_rn_rejto_v1), test_rn_rejto_v1, "rn_rej_to() returned the wrong vector when vout is v1!");
	  assert_equal(test_rn_rejto_v1, rn(4, 2, 1, 1, -3), "rn_rej_to() failed when vout is v1!");
	  test_rn_rejto_v1 = rn(5, 4, 4, 5, 2);
	  assert_is(rn_rej_to(test_rn_rejto_v1, test_rn_rejto_v2, test_rn_rejto_v2), test_rn_rejto_v2, "rn_rej_to() returned the wrong vector when vout is v2!");
	  assert_equal(test_rn_rejto_v2, rn(4, 2, 1, 1, -3), "rn_rej_to() failed when vout is v2!");
	  test_rn_rejto_v2 = rn(-1, -2, -3, -4, -5);
  

	  //r2_encode_string(v)
	  assert_equal(r2_encode_string(r2(7, 12)), "7.00000000000000,12.00000000000000", "r2_encode_string() failed!");
	  //r3_encode_string(v)
	  assert_equal(r3_encode_string(r3(5, 2, 3)), "5.00000000000000,2.00000000000000,3.00000000000000", "r3_encode_string() failed!");
	  //r4_encode_string(v)
	  assert_equal(r4_encode_string(r4(583, 907, 371, 815)), "583.00000000000000,907.00000000000000,371.00000000000000,815.00000000000000", "r4_encode_string() failed!");
	  //rn_encode_string(v)
	  assert_equal(rn_encode_string(rn(5, 55, 555, 5555, 55555)), "5.00000000000000,55.00000000000000,555.00000000000000,5555.00000000000000,55555.00000000000000", "rn_encode_string() failed!");

	  //r2_decode_string(v)
	  assert_equal(r2_decode_string("7.00000000000000,12.00000000000000"), r2(7, 12), "r2_decode_string() failed!");
	  //r3_decode_string(v)
	  assert_equal(r3_decode_string("5.00000000000000,2.00000000000000,3.00000000000000"), r3(5, 2, 3), "r3_decode_string() failed!");
	  //r4_decode_string(v)
	  assert_equal(r4_decode_string("583.00000000000000,907.00000000000000,371.00000000000000,815.00000000000000"), r4(583, 907, 371, 815), "r4_decode_string() failed!");
	  //rn_decode_string(v)
	  assert_equal(rn_decode_string("5.00000000000000,55.00000000000000,555.00000000000000,5555.00000000000000,55555.00000000000000"), rn(5, 55, 555, 5555, 55555), "rn_decode_string() failed!");
  
	  //r2_decode_string_to(str, vout)
	  var test_r2_decodestrto_vout = r2_zero();
	  assert_is(r2_decode_string_to("7.00000000000000,12.00000000000000", test_r2_decodestrto_vout), test_r2_decodestrto_vout, "r2_decode_string_to() returned the wrong vector!");
	  assert_equal(test_r2_decodestrto_vout, r2(7, 12), "r2_decode_string() failed!");
	  //r3_decode_string_to(str, vout)
	  var test_r3_decodestrto_vout = r3_zero();
	  assert_is(r3_decode_string_to("5.00000000000000,2.00000000000000,3.00000000000000", test_r3_decodestrto_vout), test_r3_decodestrto_vout, "r3_decode_string_to() returned the wrong vector!");
	  assert_equal(test_r3_decodestrto_vout, r3(5, 2, 3), "r3_decode_string() failed!");
	  //r4_decode_string_to(str, vout)
	  var test_r4_decodestrto_vout = r4_zero();
	  assert_is(r4_decode_string_to("583.00000000000000,907.00000000000000,371.00000000000000,815.00000000000000", test_r4_decodestrto_vout), test_r4_decodestrto_vout, "r4_decode_string_to() returned the wrong vector!");
	  assert_equal(test_r4_decodestrto_vout, r4(583, 907, 371, 815), "r4_decode_string() failed!");
	  //rn_decode_string_to(str, vout)
	  var test_rn_decodestrto_vout = rn_zero(5);
	  assert_is(rn_decode_string_to("5.00000000000000,55.00000000000000,555.00000000000000,5555.00000000000000,55555.00000000000000", test_rn_decodestrto_vout), test_rn_decodestrto_vout, "rn_decode_string_to() returned the wrong vector!");
	  assert_equal(test_rn_decodestrto_vout, rn(5, 55, 555, 5555, 55555), "rn_decode_string() failed!");
  
	  //BUG 1.4.1711: Reading and writing f64 to buffers broken on HTML5, skipping tests for HTML5
	  if (os_browser == browser_not_a_browser) {
	    //r2_encode_base64(v), r2_decode_base64(enc), r2_decode_base64_to(enc, vout)
	    var test_r2_encodeb64_v_orig = r2(-pi, exp(1)),
	        test_r2_encodeb64_v = r2_clone(test_r2_encodeb64_v_orig),
	        test_r2_encodeb64_vout = r2_zero(),
	        test_r2_encodeb64_enc = r2_encode_base64(test_r2_encodeb64_v);
	    assert_equal(r2_decode_base64(test_r2_encodeb64_enc), test_r2_encodeb64_v_orig, "r2_encode_base64()-r2_decode_base64() roundtrip mismatch!");
	    assert_is(r2_decode_base64_to(test_r2_encodeb64_enc, test_r2_encodeb64_vout), test_r2_encodeb64_vout, "r2_decode_to_base64() returning wrong vector!");
	    assert_equal(test_r2_encodeb64_vout, test_r2_encodeb64_v_orig, "r2_encode_base64()-r2_decode_base64_to() roundtrip mismatch!");
	    //r3_encode_base64(v), r3_decode_base64(enc), r3_decode_base64_to(enc, vout)
	    var test_r3_encodeb64_v_orig = r3(pi, -1/2, exp(1)),
	        test_r3_encodeb64_v = r3_clone(test_r3_encodeb64_v_orig),
	        test_r3_encodeb64_vout = r3_zero(),
	        test_r3_encodeb64_enc = r3_encode_base64(test_r3_encodeb64_v);
	    assert_equal(r3_decode_base64(test_r3_encodeb64_enc), test_r3_encodeb64_v_orig, "r3_encode_base64()-r3_decode_base64() roundtrip mismatch!");
	    assert_is(r3_decode_base64_to(test_r3_encodeb64_enc, test_r3_encodeb64_vout), test_r3_encodeb64_vout, "r3_decode_to_base64() returning wrong vector!");
	    assert_equal(test_r3_encodeb64_vout, test_r3_encodeb64_v_orig, "r3_encode_base64()-r3_decode_base64_to() roundtrip mismatch!");
	    //r4_encode_base64(v), r4_decode_base64(enc), r4_decode_base64_to(enc, vout)
	    var test_r4_encodeb64_v_orig = r4(pi, 35, 502, exp(1)),
	        test_r4_encodeb64_v = r4_clone(test_r4_encodeb64_v_orig),
	        test_r4_encodeb64_vout = r4_zero(),
	        test_r4_encodeb64_enc = r4_encode_base64(test_r4_encodeb64_v);
	    assert_equal(r4_decode_base64(test_r4_encodeb64_enc), test_r4_encodeb64_v_orig, "r4_encode_base64()-r4_decode_base64() roundtrip mismatch!");
	    assert_is(r4_decode_base64_to(test_r4_encodeb64_enc, test_r4_encodeb64_vout), test_r4_encodeb64_vout, "r4_decode_to_base64() returning wrong vector!");
	    assert_equal(test_r4_encodeb64_vout, test_r4_encodeb64_v_orig, "r4_encode_base64()-r4_decode_base64_to() roundtrip mismatch!");
	    //rn_encode_base64(v), rn_decode_base64(enc), rn_decode_base64_to(enc, vout)
	    var test_rn_encodeb64_v_orig = rn(pi, 35, 502, -29, 0),
	        test_rn_encodeb64_v = rn_clone(test_rn_encodeb64_v_orig),
	        test_rn_encodeb64_vout = rn_zero(5),
	        test_rn_encodeb64_enc = rn_encode_base64(test_rn_encodeb64_v);
	    assert_equal(rn_decode_base64(test_rn_encodeb64_enc, 5), test_rn_encodeb64_v_orig, "rn_encode_base64()-rn_decode_base64() roundtrip mismatch!");
	    assert_is(rn_decode_base64_to(test_rn_encodeb64_enc, 5, test_rn_encodeb64_vout), test_rn_encodeb64_vout, "rn_decode_to_base64() returning wrong vector!");
	    assert_equal(test_rn_encodeb64_vout, test_rn_encodeb64_v_orig, "rn_encode_base64()-rn_decode_base64_to() roundtrip mismatch!");
	  }
  
  
	  //r2_rec_gmp(v_xy)
	  assert_equalish(r2_rec_gmp(r2(1, 0)), r2(1, 0), "r2_rec_gmp() failed at (1, 0)!");
	  assert_equalish(r2_rec_gmp(r2(0, -1)), r2(1, 90), "r2_rec_gmp() failed at (0, -1)!");
	  assert_equalish(r2_rec_gmp(r2(-1, 0)), r2(1, -180), "r2_rec_gmp() failed at (-1, 0)!");
	  assert_equalish(r2_rec_gmp(r2(0, 1)), r2(1, -90), "r2_rec_gmp() failed at (0, 1)!");
	  //r2_rec_gmp_to(vi_xy, vo_ld)
	  var test_r2_recgmpto_v = r2(0, -2),
	      test_r2_recgmpto_vout = r2_zero();
	  assert_is(r2_rec_gmp_to(r2(2, 0), test_r2_recgmpto_vout), test_r2_recgmpto_vout, "r2_rec_gmp_to() returned wrong vector when output is different from source!"); 
	  assert_equalish(r2_rec_gmp_to(r2(2, 0), test_r2_recgmpto_vout), r2(2, 0), "r2_rec_gmp_to() failed at (2, 0)!");
	  assert_equalish(r2_rec_gmp_to(r2(0, -2), test_r2_recgmpto_vout), r2(2, 90), "r2_rec_gmp_to() failed at (0, -2)!");
	  assert_equalish(r2_rec_gmp_to(r2(-2, 0), test_r2_recgmpto_vout), r2(2, -180), "r2_rec_gmp_to() failed at (-2, 0)!");
	  assert_equalish(r2_rec_gmp_to(r2(0, 2), test_r2_recgmpto_vout), r2(2, -90), "r2_rec_gmp_to() failed at (0, 2)!");
	  assert_is(r2_rec_gmp_to(test_r2_recgmpto_v, test_r2_recgmpto_v), test_r2_recgmpto_v, "r2_rec_gmp_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r2_recgmpto_v, r2(2, 90), "r2_rec_gmp_to() failed to change vector when output is same as source!");
	  test_r2_recgmpto_v = r2(0, -2);
	  test_r2_recgmpto_vout = r2_zero();
  
	  //r2_gmp_rec(v_ld)
	  assert_equalish(r2_gmp_rec(r2(1, 0)), r2(1, 0), "r2_gmp_rec() failed at (1, 0)!");
	  assert_equalish(r2_gmp_rec(r2(1, 90)), r2(0, -1), "r2_gmp_rec() failed at (0, -1)!");
	  assert_equalish(r2_gmp_rec(r2(1, -180)), r2(-1, 0), "r2_gmp_rec() failed at (-1, 0)!");
	  assert_equalish(r2_gmp_rec(r2(1, -90)), r2(0, 1), "r2_gmp_rec() failed at (0, 1)!");
	  //r2_gmp_rec_to(vi_ld, vo_xy)
	  var test_r2_gmprecto_v = r2(2, 90),
	      test_r2_gmprecto_vout = r2_zero();
	  assert_is(r2_gmp_rec_to(r2(2, 90), test_r2_gmprecto_vout), test_r2_gmprecto_vout, "r2_gmp_rec_to() returned wrong vector when output is different from source!"); 
	  assert_equalish(r2_gmp_rec_to(r2(2, 0), test_r2_gmprecto_vout), r2(2, 0), "r2_gmp_rec_to() failed at (2, 0)!");
	  assert_equalish(r2_gmp_rec_to(r2(2, 90), test_r2_gmprecto_vout), r2(0, -2), "r2_gmp_rec_to() failed at (2, 90)!");
	  assert_equalish(r2_gmp_rec_to(r2(2, -180), test_r2_gmprecto_vout), r2(-2, 0), "r2_gmp_rec_to() failed at (2, -180)!");
	  assert_equalish(r2_gmp_rec_to(r2(2, -90), test_r2_gmprecto_vout), r2(0, 2), "r2_gmp_rec_to() failed at (2, -90)!");
	  assert_is(r2_gmp_rec_to(test_r2_gmprecto_v, test_r2_gmprecto_v), test_r2_gmprecto_v, "r2_gmp_rec_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r2_gmprecto_v, r2(0, -2), "r2_gmp_rec_to() failed to change vector when output is same as source!");
	  test_r2_gmprecto_v = r2(2, 90);
	  test_r2_gmprecto_vout = r2_zero();
  
	  //r2_rec_pol(v_xy)
	  assert_equalish(r2_rec_pol(r2(1, 0)), r2(1, 0), "r2_rec_pol() failed at (1, 0)!");
	  assert_equalish(r2_rec_pol(r2(0, -1)), r2(1, -pi/2), "r2_rec_pol() failed at (0, -1)!");
	  assert_equalish(r2_rec_pol(r2(-1, 0)), r2(1, pi), "r2_rec_pol() failed at (-1, 0)!");
	  assert_equalish(r2_rec_pol(r2(0, 1)), r2(1, pi/2), "r2_rec_pol() failed at (0, 1)!");
	  //r2_rec_pol_to(vi_xy, vo_ld)
	  var test_r2_recpolto_v = r2(0, -2),
	      test_r2_recpolto_vout = r2_zero();
	  assert_is(r2_rec_pol_to(r2(2, 0), test_r2_recpolto_vout), test_r2_recpolto_vout, "r2_rec_pol_to() returned wrong vector when output is different from source!"); 
	  assert_equalish(r2_rec_pol_to(r2(2, 0), test_r2_recpolto_vout), r2(2, 0), "r2_rec_pol_to() failed at (2, 0)!");
	  assert_equalish(r2_rec_pol_to(r2(0, -2), test_r2_recpolto_vout), r2(2, -pi/2), "r2_rec_pol_to() failed at (0, -2)!");
	  assert_equalish(r2_rec_pol_to(r2(-2, 0), test_r2_recpolto_vout), r2(2, pi), "r2_rec_pol_to() failed at (-2, 0)!");
	  assert_equalish(r2_rec_pol_to(r2(0, 2), test_r2_recpolto_vout), r2(2, pi/2), "r2_rec_pol_to() failed at (0, 2)!");
	  assert_is(r2_rec_pol_to(test_r2_recpolto_v, test_r2_recpolto_v), test_r2_recpolto_v, "r2_rec_pol_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r2_recpolto_v, r2(2, -pi/2), "r2_rec_pol_to() failed to change vector when output is same as source!");
	  test_r2_recpolto_v = r2(0, -2);
	  test_r2_recpolto_vout = r2_zero();
  
	  //r2_pol_rec(v_xy)
	  assert_equalish(r2_pol_rec(r2(1, 0)), r2(1, 0), "r2_pol_rec() failed at (1, 0)!");
	  assert_equalish(r2_pol_rec(r2(1, -pi/2)), r2(0, -1), "r2_pol_rec() failed at (0, -1)!");
	  assert_equalish(r2_pol_rec(r2(1, pi)), r2(-1, 0), "r2_pol_rec() failed at (-1, 0)!");
	  assert_equalish(r2_pol_rec(r2(1, pi/2)), r2(0, 1), "r2_pol_rec() failed at (0, 1)!");
	  //r2_pol_rec_to(vi_xy, vo_ld)
	  var test_r2_polrecto_v = r2(2, -pi/2),
	      test_r2_polrecto_vout = r2_zero();
	  assert_is(r2_pol_rec_to(r2(2, 0), test_r2_polrecto_vout), test_r2_polrecto_vout, "r2_pol_rec_to() returned wrong vector when output is different from source!"); 
	  assert_equalish(r2_pol_rec_to(r2(2, 0), test_r2_polrecto_vout), r2(2, 0), "r2_pol_rec_to() failed at (2, 0)!");
	  assert_equalish(r2_pol_rec_to(r2(2, -pi/2), test_r2_polrecto_vout), r2(0, -2), "r2_pol_rec_to() failed at (0, -2)!");
	  assert_equalish(r2_pol_rec_to(r2(2, pi), test_r2_polrecto_vout), r2(-2, 0), "r2_pol_rec_to() failed at (-2, 0)!");
	  assert_equalish(r2_pol_rec_to(r2(2, pi/2), test_r2_polrecto_vout), r2(0, 2), "r2_pol_rec_to() failed at (0, 2)!");
	  assert_is(r2_pol_rec_to(test_r2_polrecto_v, test_r2_polrecto_v), test_r2_polrecto_v, "r2_pol_rec_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r2_polrecto_v, r2(0, -2), "r2_pol_rec_to() failed to change vector when output is same as source!");
	  test_r2_polrecto_v = r2(2, -pi/2);
	  test_r2_polrecto_vout = r2_zero();
  
	  //r2_gmp_pol(v_ld)
	  assert_equalish(r2_gmp_pol(r2(1, 0)), r2(1, 0), "r2_gmp_pol() failed at (1, 0)!");
	  assert_equalish(r2_gmp_pol(r2(1, 90)), r2(1, -pi/2), "r2_gmp_pol() failed at (0, -1)!");
	  assert_equalish(r2_gmp_pol(r2(1, -180)), r2(1, pi), "r2_gmp_pol() failed at (-1, 0)!");
	  assert_equalish(r2_gmp_pol(r2(1, -90)), r2(1, pi/2), "r2_gmp_pol() failed at (0, 1)!");
	  //r2_gmp_pol_to(vi_ld, vo_xy)
	  var test_r2_gmppolto_v = r2(2, 90),
	      test_r2_gmppolto_vout = r2_zero();
	  assert_is(r2_gmp_pol_to(r2(2, 90), test_r2_gmppolto_vout), test_r2_gmppolto_vout, "r2_gmp_pol_to() returned wrong vector when output is different from source!"); 
	  assert_equalish(r2_gmp_pol_to(r2(2, 0), test_r2_gmppolto_vout), r2(2, 0), "r2_gmp_pol_to() failed at (2, 0)!");
	  assert_equalish(r2_gmp_pol_to(r2(2, 90), test_r2_gmppolto_vout), r2(2, -pi/2), "r2_gmp_pol_to() failed at (2, 90)!");
	  assert_equalish(r2_gmp_pol_to(r2(2, -180), test_r2_gmppolto_vout), r2(2, pi), "r2_gmp_pol_to() failed at (2, -180)!");
	  assert_equalish(r2_gmp_pol_to(r2(2, -90), test_r2_gmppolto_vout), r2(2, pi/2), "r2_gmp_pol_to() failed at (2, -90)!");
	  assert_is(r2_gmp_pol_to(test_r2_gmppolto_v, test_r2_gmppolto_v), test_r2_gmppolto_v, "r2_gmp_pol_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r2_gmppolto_v, r2(2, -pi/2), "r2_gmp_pol_to() failed to change vector when output is same as source!");
	  test_r2_gmppolto_v = r2(2, 90);
	  test_r2_gmppolto_vout = r2_zero();
  
	  //r2_pol_gmp(v_ld)
	  assert_equalish(r2_pol_gmp(r2(1, 0)), r2(1, 0), "r2_pol_gmp() failed at (1, 0)!");
	  assert_equalish(r2_pol_gmp(r2(1, -pi/2)), r2(1, 90), "r2_pol_gmp() failed at (0, -1)!");
	  assert_equalish(r2_pol_gmp(r2(1, pi)), r2(1, -180), "r2_pol_gmp() failed at (-1, 0)!");
	  assert_equalish(r2_pol_gmp(r2(1, pi/2)), r2(1, -90), "r2_pol_gmp() failed at (0, 1)!");
	  //r2_pol_gmp_to(vi_ld, vo_xy)
	  var test_r2_polgmpto_v = r2(2, -pi/2),
	      test_r2_polgmpto_vout = r2_zero();
	  assert_is(r2_pol_gmp_to(r2(2, -pi/2), test_r2_polgmpto_vout), test_r2_polgmpto_vout, "r2_pol_gmp_to() returned wrong vector when output is different from source!"); 
	  assert_equalish(r2_pol_gmp_to(r2(2, 0), test_r2_polgmpto_vout), r2(2, 0), "r2_pol_gmp_to() failed at (2, 0)!");
	  assert_equalish(r2_pol_gmp_to(r2(2, -pi/2), test_r2_polgmpto_vout), r2(2, 90), "r2_pol_gmp_to() failed at (2, 90)!");
	  assert_equalish(r2_pol_gmp_to(r2(2, pi), test_r2_polgmpto_vout), r2(2, -180), "r2_pol_gmp_to() failed at (2, -180)!");
	  assert_equalish(r2_pol_gmp_to(r2(2, pi/2), test_r2_polgmpto_vout), r2(2, -90), "r2_pol_gmp_to() failed at (2, -90)!");
	  assert_is(r2_pol_gmp_to(test_r2_polgmpto_v, test_r2_polgmpto_v), test_r2_polgmpto_v, "r2_pol_gmp_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r2_polgmpto_v, r2(2, 90), "r2_pol_gmp_to() failed to change vector when output is same as source!");
	  test_r2_polgmpto_v = r2(2, -pi/2);
	  test_r2_polgmpto_vout = r2_zero();
  
	  //r3_rec_cyl(v_xyz)
	  assert_equalish(r3_rec_cyl(r3(3, 0, 4)), r3(3, 0, 4), "r3_rec_cyl() failed at (3, 0, 4)!");
	  assert_equalish(r3_rec_cyl(r3(0, 3, 5)), r3(3, pi/2, 5), "r3_rec_cyl() failed at (0, 3, 5)!");
	  assert_equalish(r3_rec_cyl(r3(-3, 0, -4)), r3(3, pi, -4), "r3_rec_cyl() failed at (-3, 0, -4)!");
	  assert_equalish(r3_rec_cyl(r3(0, -3, -5)), r3(3, -pi/2, -5), "r3_rec_cyl() failed at (0, -3, -5)!");
	  //r3_rec_cyl_to(vi_xyz, vo_rpz)
	  var test_r3_reccylto_v = r3(0, 3, 5),
	      test_r3_reccylto_vout = r3_zero();
	  assert_is(r3_rec_cyl_to(test_r3_reccylto_v, test_r3_reccylto_vout), test_r3_reccylto_vout, "r3_rec_cyl_to() returned wrong vector when output is different from source!");
	  assert_equalish(r3_rec_cyl_to(r3(3, 0, 4), test_r3_reccylto_vout), r3(3, 0, 4), "r3_rec_cyl_to() failed at (3, 0, 4)!");
	  assert_equalish(r3_rec_cyl_to(r3(0, 3, 5), test_r3_reccylto_vout), r3(3, pi/2, 5), "r3_rec_cyl_to() failed at (0, 3, 5)!");
	  assert_equalish(r3_rec_cyl_to(r3(-3, 0, -4), test_r3_reccylto_vout), r3(3, pi, -4), "r3_rec_cyl_to() failed at (-3, 0, -4)!");
	  assert_equalish(r3_rec_cyl_to(r3(0, -3, -5), test_r3_reccylto_vout), r3(3, -pi/2, -5), "r3_rec_cyl_to() failed at (0, -3, -5)!");
	  assert_is(r3_rec_cyl_to(test_r3_reccylto_v, test_r3_reccylto_v), test_r3_reccylto_v, "r3_rec_cyl_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r3_reccylto_v, r3(3, pi/2, 5), "r3_rec_cyl_to() failed to change vector when output is same as source!");
	  test_r3_reccylto_v = r3(0, 3, 5);
	  test_r3_reccylto_vout = r3_zero();
  
	  //r3_cyl_rec(v_xyz)
	  assert_equalish(r3_cyl_rec(r3(3, 0, 4)), r3(3, 0, 4), "r3_cyl_rec() failed at (3, 0, 4)!");
	  assert_equalish(r3_cyl_rec(r3(3, pi/2, 5)), r3(0, 3, 5), "r3_cyl_rec() failed at (0, 3, 5)!");
	  assert_equalish(r3_cyl_rec(r3(3, pi, -4)), r3(-3, 0, -4), "r3_cyl_rec() failed at (-3, 0, -4)!");
	  assert_equalish(r3_cyl_rec(r3(3, -pi/2, -5)), r3(0, -3, -5), "r3_cyl_rec() failed at (0, -3, -5)!");
	  //r3_cyl_rec_to(vi_xyz, vo_rpz)
	  var test_r3_cylrecto_v = r3(3, pi/2, 5),
	      test_r3_cylrecto_vout = r3_zero();
	  assert_is(r3_cyl_rec_to(test_r3_cylrecto_v, test_r3_cylrecto_vout), test_r3_cylrecto_vout, "r3_cyl_rec_to() returned wrong vector when output is different from source!");
	  assert_equalish(r3_cyl_rec_to(r3(3, 0, 4), test_r3_cylrecto_vout), r3(3, 0, 4), "r3_cyl_rec_to() failed at (3, 0, 4)!");
	  assert_equalish(r3_cyl_rec_to(r3(3, pi/2, 5), test_r3_cylrecto_vout), r3(0, 3, 5), "r3_cyl_rec_to() failed at (0, 3, 5)!");
	  assert_equalish(r3_cyl_rec_to(r3(3, pi, -4), test_r3_cylrecto_vout), r3(-3, 0, -4), "r3_cyl_rec_to() failed at (-3, 0, -4)!");
	  assert_equalish(r3_cyl_rec_to(r3(3, -pi/2, -5), test_r3_cylrecto_vout), r3(0, -3, -5), "r3_cyl_rec_to() failed at (0, -3, -5)!");
	  assert_is(r3_cyl_rec_to(test_r3_cylrecto_v, test_r3_cylrecto_v), test_r3_cylrecto_v, "r3_cyl_rec_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r3_cylrecto_v, r3(0, 3, 5), "r3_cyl_rec_to() failed to change vector when output is same as source!");
	  test_r3_cylrecto_v = r3(3, pi/2, 5);
	  test_r3_cylrecto_vout = r3_zero();
  
	  //r3_rec_sph(v_xyz)
	  assert_equalish(r3_rec_sph(r3(3, 0, 4)), r3(5, 0, arctan(3/4)), "r3_rec_sph() failed at (3, 0, 4)!");
	  assert_equalish(r3_rec_sph(r3(0, 3, 4)), r3(5, pi/2, arctan(3/4)), "r3_rec_sph() failed at (0, 3, 4)!");
	  assert_equalish(r3_rec_sph(r3(-3, 0, 4)), r3(5, pi, arctan(3/4)), "r3_rec_sph() failed at (-3, 0, 4)!");
	  assert_equalish(r3_rec_sph(r3(0, -3, -4)), r3(5, -pi/2, pi-arctan(3/4)), "r3_rec_sph() failed at (0, -3, -4)!");
	  //r3_rec_sph_to(vi_xyz, vo_rpt)
	  var test_r3_recsphto_v = r3(0, 3, 4),
	      test_r3_recsphto_vout = r3_zero();
	  assert_is(r3_rec_sph_to(test_r3_recsphto_v, test_r3_recsphto_vout), test_r3_recsphto_vout, "r3_rec_sph_to() returned wrong vector when output is different from source!");
	  assert_equalish(r3_rec_sph_to(r3(3, 0, 4), test_r3_recsphto_vout), r3(5, 0, arctan(3/4)), "r3_rec_sph_to() failed at (3, 0, 4)!");
	  assert_equalish(r3_rec_sph_to(r3(0, 3, 4), test_r3_recsphto_vout), r3(5, pi/2, arctan(3/4)), "r3_rec_sph_to() failed at (0, 3, 4)!");
	  assert_equalish(r3_rec_sph_to(r3(-3, 0, 4), test_r3_recsphto_vout), r3(5, pi, arctan(3/4)), "r3_rec_sph_to() failed at (-3, 0, 4)!");
	  assert_equalish(r3_rec_sph_to(r3(0, -3, -4), test_r3_recsphto_vout), r3(5, -pi/2, pi-arctan(3/4)), "r3_rec_sph_to() failed at (0, -3, -4)!");
	  assert_is(r3_rec_sph_to(test_r3_recsphto_v, test_r3_recsphto_v), test_r3_recsphto_v, "r3_rec_sph_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r3_recsphto_v, r3(5, pi/2, arctan(3/4)), "r3_rec_sph_to() failed to change vector when output is same as source!");
	  test_r3_recsphto_v = r3(0, 3, 4);
	  test_r3_recsphto_vout = r3_zero();
  
	  //r3_sph_rec(v_xyz)
	  assert_equalish(r3_sph_rec(r3(5, 0, arctan(3/4))), r3(3, 0, 4), "r3_sph_rec() failed at (3, 0, 4)!");
	  assert_equalish(r3_sph_rec(r3(5, pi/2, arctan(3/4))), r3(0, 3, 4), "r3_sph_rec() failed at (0, 3, 4)!");
	  assert_equalish(r3_sph_rec(r3(5, pi, arctan(3/4))), r3(-3, 0, 4), "r3_sph_rec() failed at (-3, 0, 4)!");
	  assert_equalish(r3_sph_rec(r3(5, -pi/2, pi-arctan(3/4))), r3(0, -3, -4), "r3_sph_rec() failed at (0, -3, -4)!");
	  //r3_sph_rec_to(vi_xyz, vo_rpt)
	  var test_r3_sphrecto_v = r3(5, pi/2, arctan(3/4)),
	      test_r3_sphrecto_vout = r3_zero();
	  assert_is(r3_sph_rec_to(test_r3_sphrecto_v, test_r3_sphrecto_vout), test_r3_sphrecto_vout, "r3_sph_rec_to() returned wrong vector when output is different from source!");
	  assert_equalish(r3_sph_rec_to(r3(5, 0, arctan(3/4)), test_r3_sphrecto_vout), r3(3, 0, 4), "r3_sph_rec_to() failed at (3, 0, 4)!");
	  assert_equalish(r3_sph_rec_to(r3(5, pi/2, arctan(3/4)), test_r3_sphrecto_vout), r3(0, 3, 4), "r3_sph_rec_to() failed at (0, 3, 4)!");
	  assert_equalish(r3_sph_rec_to(r3(5, pi, arctan(3/4)), test_r3_sphrecto_vout), r3(-3, 0, 4), "r3_sph_rec_to() failed at (-3, 0, 4)!");
	  assert_equalish(r3_sph_rec_to(r3(5, -pi/2, pi-arctan(3/4)), test_r3_sphrecto_vout), r3(0, -3, -4), "r3_sph_rec_to() failed at (0, -3, -4)!");
	  assert_is(r3_sph_rec_to(test_r3_sphrecto_v, test_r3_sphrecto_v), test_r3_sphrecto_v, "r3_sph_rec_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r3_sphrecto_v, r3(0, 3, 4), "r3_sph_rec_to() failed to change vector when output is same as source!");
	  test_r3_sphrecto_v = r3(5, pi/2, arctan(3/4));
	  test_r3_sphrecto_vout = r3_zero();
  
	  //r3_cyl_sph(v_rpz)
	  assert_equalish(r3_cyl_sph(r3(3, 0, 4)), r3(5, 0, arctan(3/4)), "r3_cyl_sph() failed at (3, 0, 4)!");
	  assert_equalish(r3_cyl_sph(r3(3, pi/2, 4)), r3(5, pi/2, arctan(3/4)), "r3_cyl_sph() failed at (0, 3, 4)!");
	  assert_equalish(r3_cyl_sph(r3(3, pi, 4)), r3(5, pi, arctan(3/4)), "r3_cyl_sph() failed at (-3, 0, 4)!");
	  assert_equalish(r3_cyl_sph(r3(3, -pi/2, -4)), r3(5, -pi/2, pi-arctan(3/4)), "r3_cyl_sph() failed at (0, -3, -4)!");
	  //r3_cyl_sph_to(vi_rpz, vo_rpt)
	  var test_r3_cylsphto_v = r3(3, pi/2, 4),
	      test_r3_cylsphto_vout = r3_zero();
	  assert_is(r3_cyl_sph_to(test_r3_cylsphto_v, test_r3_cylsphto_vout), test_r3_cylsphto_vout, "r3_cyl_sph_to() returned wrong vector when output is different from source!");
	  assert_equalish(r3_cyl_sph_to(r3(3, 0, 4), test_r3_cylsphto_vout), r3(5, 0, arctan(3/4)), "r3_cyl_sph_to() failed at (3, 0, 4)!");
	  assert_equalish(r3_cyl_sph_to(r3(3, pi/2, 4), test_r3_cylsphto_vout), r3(5, pi/2, arctan(3/4)), "r3_cyl_sph_to() failed at (0, 3, 4)!");
	  assert_equalish(r3_cyl_sph_to(r3(3, pi, 4), test_r3_cylsphto_vout), r3(5, pi, arctan(3/4)), "r3_cyl_sph_to() failed at (-3, 0, 4)!");
	  assert_equalish(r3_cyl_sph_to(r3(3, -pi/2, -4), test_r3_cylsphto_vout), r3(5, -pi/2, pi-arctan(3/4)), "r3_cyl_sph_to() failed at (0, -3, -4)!");
	  assert_is(r3_cyl_sph_to(test_r3_cylsphto_v, test_r3_cylsphto_v), test_r3_cylsphto_v, "r3_cyl_sph_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r3_cylsphto_v, r3(5, pi/2, arctan(3/4)), "r3_cyl_sph_to() failed to change vector when output is same as source!");
	  test_r3_cylsphto_v = r3(3, pi/2, 4);
	  test_r3_cylsphto_vout = r3_zero();
  
	  //r3_sph_cyl(v_rpz)
	  assert_equalish(r3_sph_cyl(r3(5, 0, arctan(3/4))), r3(3, 0, 4), "r3_sph_cyl() failed at (3, 0, 4)!");
	  assert_equalish(r3_sph_cyl(r3(5, pi/2, arctan(3/4))), r3(3, pi/2, 4), "r3_sph_cyl() failed at (0, 3, 4)!");
	  assert_equalish(r3_sph_cyl(r3(5, pi, arctan(3/4))), r3(3, pi, 4), "r3_sph_cyl() failed at (-3, 0, 4)!");
	  assert_equalish(r3_sph_cyl(r3(5, -pi/2, pi-arctan(3/4))), r3(3, -pi/2, -4), "r3_sph_cyl() failed at (0, -3, -4)!");
	  //r3_sph_cyl_to(vi_rpz, vo_rpt)
	  var test_r3_sphcylto_v = r3(5, pi/2, arctan(3/4)),
	      test_r3_sphcylto_vout = r3_zero();
	  assert_is(r3_sph_cyl_to(test_r3_sphcylto_v, test_r3_sphcylto_vout), test_r3_sphcylto_vout, "r3_sph_cyl_to() returned wrong vector when output is different from source!");
	  assert_equalish(r3_sph_cyl_to(r3(5, 0, arctan(3/4)), test_r3_sphcylto_vout), r3(3, 0, 4), "r3_sph_cyl_to() failed at (3, 0, 4)!");
	  assert_equalish(r3_sph_cyl_to(r3(5, pi/2, arctan(3/4)), test_r3_sphcylto_vout), r3(3, pi/2, 4), "r3_sph_cyl_to() failed at (0, 3, 4)!");
	  assert_equalish(r3_sph_cyl_to(r3(5, pi, arctan(3/4)), test_r3_sphcylto_vout), r3(3, pi, 4), "r3_sph_cyl_to() failed at (-3, 0, 4)!");
	  assert_equalish(r3_sph_cyl_to(r3(5, -pi/2, pi-arctan(3/4)), test_r3_sphcylto_vout), r3(3, -pi/2, -4), "r3_sph_cyl_to() failed at (0, -3, -4)!");
	  assert_is(r3_sph_cyl_to(test_r3_sphcylto_v, test_r3_sphcylto_v), test_r3_sphcylto_v, "r3_sph_cyl_to() returned wrong vector when output is same as source!");
	  assert_equalish(test_r3_sphcylto_v, r3(3, pi/2, 4), "r3_sph_cyl_to() failed to change vector when output is same as source!");
	  test_r3_sphcylto_v = r3(5, pi/2, arctan(3/4));
	  test_r3_sphcylto_vout = r3_zero();
	}



}
// feather enable all
