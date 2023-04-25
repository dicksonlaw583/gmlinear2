// Feather disable all
function __gmlin_test_matrix_operations__() {
	{
	  //r22_clone
	  var test_r22_original = r22(1, 4, 9, 16);
	  assert_isnt(r22_clone(test_r22_original), test_r22_original, "r22() clone isn't cloning!");
	  assert_equal(r22_clone(test_r22_original), test_r22_original, "r22() clone is different!");
	  //r33_clone
	  var test_r33_original = r33(4, 9, 2, 3, 5, 7, 8, 1, 6);
	  assert_isnt(r33_clone(test_r33_original), test_r33_original, "r33() clone isn't cloning!");
	  assert_equal(r33_clone(test_r33_original), test_r33_original, "r33() clone is different!");
	  //r44_clone
	  var test_r44_original = r44(1, 2, 3, 4, 2, 4, 6, 8, 3, 6, 9, 12, 4, 8, 12, 16);
	  assert_isnt(r44_clone(test_r44_original), test_r44_original, "r44() clone isn't cloning!");
	  assert_equal(r44_clone(test_r44_original), test_r44_original, "r44() clone is different!");
	  //rmn_clone
	  var test_rmn_original = rmn(7, 2, 2, 4, 3, 6, 5, 10, 7, 14, 11, 22, 13, 26, 17, 34);
	  assert_isnt(rmn_clone(test_rmn_original), test_rmn_original, "rmn() clone isn't cloning!");
	  assert_equal(rmn_clone(test_rmn_original), test_rmn_original, "rmn() clone is different!");
	  //rnn_clone
	  var test_rnn_original = r44(4, 8, 12, 16, 3, 6, 9, 12, 2, 4, 6, 8, 1, 2, 3, 4);
	  assert_isnt(rnn_clone(test_rnn_original), test_rnn_original, "rnn() clone isn't cloning!");
	  assert_equal(rnn_clone(test_rnn_original), test_rnn_original, "rnn() clone is different!");

	  //r22_clone_to(M, Mout)
	  var test_cloneto_r22 = r22_zero();
	  assert_is(r22_clone_to(test_r22_original, test_cloneto_r22), test_cloneto_r22, "r22_clone_to() returned the wrong matrix!");
	  assert_isnt(test_cloneto_r22, test_r22_original, "r22_clone_to() is just transferring references!");
	  assert_equal(test_cloneto_r22, test_r22_original, "r22_clone_to() clone is different!");
	  //r33_clone_to(M, Mout)
	  var test_cloneto_r33 = r33_zero();
	  assert_is(r33_clone_to(test_r33_original, test_cloneto_r33), test_cloneto_r33, "r33_clone_to() returned the wrong matrix!");
	  assert_isnt(test_cloneto_r33, test_r33_original, "r33_clone_to() is just transferring references!");
	  assert_equal(test_cloneto_r33, test_r33_original, "r33_clone_to() clone is different!");
	  //r44_clone_to(M, Mout)
	  var test_cloneto_r44 = r44_zero();
	  assert_is(r44_clone_to(test_r44_original, test_cloneto_r44), test_cloneto_r44, "r44_clone_to() returned the wrong matrix!");
	  assert_isnt(test_cloneto_r44, test_r44_original, "r44_clone_to() is just transferring references!");
	  assert_equal(test_cloneto_r44, test_r44_original, "r44_clone_to() clone is different!");
	  //rmn_clone_to(M, Mout)
	  var test_cloneto_rmn = rmn_zero(7, 2);
	  assert_is(rmn_clone_to(test_rmn_original, test_cloneto_rmn), test_cloneto_rmn, "rmn_clone_to() returned the wrong matrix!");
	  assert_isnt(test_cloneto_rmn, test_rmn_original, "rmn_clone_to() is just transferring references!");
	  assert_equal(test_cloneto_rmn, test_rmn_original, "rmn_clone_to() clone is different!");
	  //rnn_clone_to(M, Mout)
	  var test_cloneto_rnn = rnn_zero(4);
	  assert_is(rnn_clone_to(test_rnn_original, test_cloneto_rnn), test_cloneto_rnn, "rnn_clone_to() returned the wrong matrix!");
	  assert_isnt(test_cloneto_rnn, test_rnn_original, "rnn_clone_to() is just transferring references!");
	  assert_equal(test_cloneto_rnn, test_rnn_original, "rnn_clone_to() clone is different!");
  
  
	  //r22_add(M1, M2)
	  var test_r22_add_M1 = r22(1, 2, 3, 4),
	      test_r22_add_M2 = r22(5, 6, 7, 8),
	      test_r22_add_solution = r22(6, 8, 10, 12);
	  assert_equal(r22_add(test_r22_add_M1, test_r22_add_M2), test_r22_add_solution, "r22_add() failed!");
	  //r33_add(M1, M2)
	  var test_r33_add_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_add_M2 = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
	      test_r33_add_solution = r33(-8, -6, -4, -2, 0, 2, 4, 6, 8);
	  assert_equal(r33_add(test_r33_add_M1, test_r33_add_M2), test_r33_add_solution, "r33_add() failed!");
	  //r44_add(M1, M2)
	  var test_r44_add_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_add_M2 = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
	      test_r44_add_solution = r44(21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51);
	  assert_equal(r44_add(test_r44_add_M1, test_r44_add_M2), test_r44_add_solution, "r44_add() failed!");
	  //rmn_add(M1, M2)
	  var test_rmn_add_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_add_M2 = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
	      test_rmn_add_solution = rmn(5, 2, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24);
	  assert_equal(rmn_add(test_rmn_add_M1, test_rmn_add_M2), test_rmn_add_solution, "rmn_add() failed on 5x2!");
	  assert_equal(rmn_add(test_r22_add_M1, test_r22_add_M2), test_r22_add_solution, "rmn_add() failed on 2x2!");
	  assert_equal(rmn_add(test_r33_add_M1, test_r33_add_M2), test_r33_add_solution, "rmn_add() failed on 3x3!");
	  assert_equal(rmn_add(test_r44_add_M1, test_r44_add_M2), test_r44_add_solution, "rmn_add() failed on 4x4!");
	  //rnn_add(M1, M2)
	  assert_equal(rnn_add(test_r22_add_M1, test_r22_add_M2), test_r22_add_solution, "rnn_add() failed on 2x2!");
	  assert_equal(rnn_add(test_r33_add_M1, test_r33_add_M2), test_r33_add_solution, "rnn_add() failed on 3x3!");
	  assert_equal(rnn_add(test_r44_add_M1, test_r44_add_M2), test_r44_add_solution, "rnn_add() failed on 4x4!");
  
	  //r22_add_to(M1, M2, Mout)
	  var test_r22_add_to_M1_orig = r22(1, 2, 3, 4),
	      test_r22_add_to_M2_orig = r22(5, 6, 7, 8),
	      test_r22_add_to_solution = r22(6, 8, 10, 12),
	      test_r22_add_to_M1 = r22_clone(test_r22_add_to_M1_orig),
	      test_r22_add_to_M2 = r22_clone(test_r22_add_to_M2_orig),
	      test_r22_add_to_Mout = r22_zero();
	  assert_is(r22_add_to(test_r22_add_to_M1, test_r22_add_to_M2, test_r22_add_to_Mout), test_r22_add_to_Mout, "r22_add_to() is returning the wrong matrix!");
	  assert_equal(test_r22_add_to_Mout, test_r22_add_to_solution, "r22_add_to() failed!");
	  test_r22_add_to_Mout = r22_zero();
	  assert_is(r22_add_to(test_r22_add_to_M1, test_r22_add_to_M2, test_r22_add_to_M1), test_r22_add_to_M1, "r22_add_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r22_add_to_M1, test_r22_add_to_solution, "r22_add_to() failed when Mout is M1!");
	  r22_clone_to(test_r22_add_to_M1_orig, test_r22_add_to_M1);
	  assert_is(r22_add_to(test_r22_add_to_M1, test_r22_add_to_M2, test_r22_add_to_M2), test_r22_add_to_M2, "r22_add_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r22_add_to_M2, test_r22_add_to_solution, "r22_add_to() failed when Mout is M2!");
	  r22_clone_to(test_r22_add_to_M2_orig, test_r22_add_to_M2);
	  //r33_add_to(M1, M2, Mout)
	  var test_r33_add_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_add_to_M2_orig = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
	      test_r33_add_to_solution = r33(-8, -6, -4, -2, 0, 2, 4, 6, 8),
	      test_r33_add_to_M1 = r33_clone(test_r33_add_to_M1_orig),
	      test_r33_add_to_M2 = r33_clone(test_r33_add_to_M2_orig),
	      test_r33_add_to_Mout = r33_zero();
	  assert_is(r33_add_to(test_r33_add_to_M1, test_r33_add_to_M2, test_r33_add_to_Mout), test_r33_add_to_Mout, "r33_add_to() is returning the wrong matrix!");
	  assert_equal(test_r33_add_to_Mout, test_r33_add_to_solution, "r33_add_to() failed!");
	  test_r33_add_to_Mout = r33_zero();
	  assert_is(r33_add_to(test_r33_add_to_M1, test_r33_add_to_M2, test_r33_add_to_M1), test_r33_add_to_M1, "r33_add_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r33_add_to_M1, test_r33_add_to_solution, "r33_add_to() failed when Mout is M1!");
	  r33_clone_to(test_r33_add_to_M1_orig, test_r33_add_to_M1);
	  assert_is(r33_add_to(test_r33_add_to_M1, test_r33_add_to_M2, test_r33_add_to_M2), test_r33_add_to_M2, "r33_add_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r33_add_to_M2, test_r33_add_to_solution, "r33_add_to() failed when Mout is M2!");
	  r33_clone_to(test_r33_add_to_M2_orig, test_r33_add_to_M2);
	  //r44_add_to(M1, M2, Mout)
	  var test_r44_add_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_add_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
	      test_r44_add_to_solution = r44(21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51),
	      test_r44_add_to_M1 = r44_clone(test_r44_add_to_M1_orig),
	      test_r44_add_to_M2 = r44_clone(test_r44_add_to_M2_orig),
	      test_r44_add_to_Mout = r44_zero();
	  assert_is(r44_add_to(test_r44_add_to_M1, test_r44_add_to_M2, test_r44_add_to_Mout), test_r44_add_to_Mout, "r44_add_to() is returning the wrong matrix!");
	  assert_equal(test_r44_add_to_Mout, test_r44_add_to_solution, "r44_add_to() failed!");
	  test_r44_add_to_Mout = r44_zero();
	  assert_is(r44_add_to(test_r44_add_to_M1, test_r44_add_to_M2, test_r44_add_to_M1), test_r44_add_to_M1, "r44_add_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r44_add_to_M1, test_r44_add_to_solution, "r44_add_to() failed when Mout is M1!");
	  r44_clone_to(test_r44_add_to_M1_orig, test_r44_add_to_M1);
	  assert_is(r44_add_to(test_r44_add_to_M1, test_r44_add_to_M2, test_r44_add_to_M2), test_r44_add_to_M2, "r44_add_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r44_add_to_M2, test_r44_add_to_solution, "r44_add_to() failed when Mout is M2!");
	  r44_clone_to(test_r44_add_to_M2_orig, test_r44_add_to_M2);
	  //rmn_add_to(M1, M2, Mout)
	  var test_rmn_add_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_add_to_M2_orig = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
	      test_rmn_add_to_solution = rmn(5, 2, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24),
	      test_rmn_add_to_M1 = rmn_clone(test_rmn_add_to_M1_orig),
	      test_rmn_add_to_M2 = rmn_clone(test_rmn_add_to_M2_orig),
	      test_rmn_add_to_Mout = rmn_zero(5, 2);
	  assert_is(rmn_add_to(test_rmn_add_to_M1, test_rmn_add_to_M2, test_rmn_add_to_Mout), test_rmn_add_to_Mout, "rmn_add_to() is returning the wrong matrix!");
	  assert_equal(test_rmn_add_to_Mout, test_rmn_add_to_solution, "rmn_add_to() failed!");
	  test_rmn_add_to_Mout = rmn_zero(5, 2);
	  assert_is(rmn_add_to(test_rmn_add_to_M1, test_rmn_add_to_M2, test_rmn_add_to_M1), test_rmn_add_to_M1, "rmn_add_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rmn_add_to_M1, test_rmn_add_to_solution, "rmn_add_to() failed when Mout is M1!");
	  rmn_clone_to(test_rmn_add_to_M1_orig, test_rmn_add_to_M1);
	  assert_is(rmn_add_to(test_rmn_add_to_M1, test_rmn_add_to_M2, test_rmn_add_to_M2), test_rmn_add_to_M2, "rmn_add_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_rmn_add_to_M2, test_rmn_add_to_solution, "rmn_add_to() failed when Mout is M2!");
	  rmn_clone_to(test_rmn_add_to_M2_orig, test_rmn_add_to_M2);
	  //rnn_add_to(M1, M2, Mout)
	  var test_rnn_add_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_rnn_add_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
	      test_rnn_add_to_solution = r44(21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51),
	      test_rnn_add_to_M1 = rnn_clone(test_rnn_add_to_M1_orig),
	      test_rnn_add_to_M2 = rnn_clone(test_rnn_add_to_M2_orig),
	      test_rnn_add_to_Mout = rnn_zero(4);
	  assert_is(rnn_add_to(test_rnn_add_to_M1, test_rnn_add_to_M2, test_rnn_add_to_Mout), test_rnn_add_to_Mout, "rnn_add_to() is returning the wrong matrix!");
	  assert_equal(test_rnn_add_to_Mout, test_rnn_add_to_solution, "rnn_add_to() failed!");
	  test_rnn_add_to_Mout = rnn_zero(4);
	  assert_is(rnn_add_to(test_rnn_add_to_M1, test_rnn_add_to_M2, test_rnn_add_to_M1), test_rnn_add_to_M1, "rnn_add_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rnn_add_to_M1, test_rnn_add_to_solution, "rnn_add_to() failed when Mout is M1!");
	  rnn_clone_to(test_rnn_add_to_M1_orig, test_rnn_add_to_M1);
	  assert_is(rnn_add_to(test_rnn_add_to_M1, test_rnn_add_to_M2, test_rnn_add_to_M2), test_rnn_add_to_M2, "rnn_add_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_rnn_add_to_M2, test_rnn_add_to_solution, "rnn_add_to() failed when Mout is M2!");
	  rnn_clone_to(test_rnn_add_to_M2_orig, test_rnn_add_to_M2);
  
  
	  //r22_subtract(M1, M2)
	  var test_r22_subtract_M1 = r22(1, 2, 3, 4),
	      test_r22_subtract_M2 = r22(5, 6, 7, 8),
	      test_r22_subtract_solution = r22(-4, -4, -4, -4);
	  assert_equal(r22_subtract(test_r22_subtract_M1, test_r22_subtract_M2), test_r22_subtract_solution, "r22_subtract() failed!");
	  //r33_subtract(M1, M2)
	  var test_r33_subtract_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_subtract_M2 = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
	      test_r33_subtract_solution = r33(10, 10, 10, 10, 10, 10, 10, 10, 10);
	  assert_equal(r33_subtract(test_r33_subtract_M1, test_r33_subtract_M2), test_r33_subtract_solution, "r33_subtract() failed!");
	  //r44_subtract(M1, M2)
	  var test_r44_subtract_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_subtract_M2 = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
	      test_r44_subtract_solution = r44(-19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19);
	  assert_equal(r44_subtract(test_r44_subtract_M1, test_r44_subtract_M2), test_r44_subtract_solution, "r44_subtract() failed!");
	  //rmn_subtract(M1, M2)
	  var test_rmn_subtract_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_subtract_M2 = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
	      test_rmn_subtract_solution = rmn(5, 2, -4, -4, -4, -4, -4, -4, -4, -4, -4, -4);
	  assert_equal(rmn_subtract(test_rmn_subtract_M1, test_rmn_subtract_M2), test_rmn_subtract_solution, "rmn_subtract() failed on 5x2!");
	  assert_equal(rmn_subtract(test_r22_subtract_M1, test_r22_subtract_M2), test_r22_subtract_solution, "rmn_subtract() failed on 2x2!");
	  assert_equal(rmn_subtract(test_r33_subtract_M1, test_r33_subtract_M2), test_r33_subtract_solution, "rmn_subtract() failed on 3x3!");
	  assert_equal(rmn_subtract(test_r44_subtract_M1, test_r44_subtract_M2), test_r44_subtract_solution, "rmn_subtract() failed on 4x4!");
	  //rnn_subtract(M1, M2)
	  assert_equal(rnn_subtract(test_r22_subtract_M1, test_r22_subtract_M2), test_r22_subtract_solution, "rnn_subtract() failed on 2x2!");
	  assert_equal(rnn_subtract(test_r33_subtract_M1, test_r33_subtract_M2), test_r33_subtract_solution, "rnn_subtract() failed on 3x3!");
	  assert_equal(rnn_subtract(test_r44_subtract_M1, test_r44_subtract_M2), test_r44_subtract_solution, "rnn_subtract() failed on 4x4!");
  
	  //r22_subtract_to(M1, M2, Mout)
	  var test_r22_subtract_to_M1_orig = r22(1, 2, 3, 4),
	      test_r22_subtract_to_M2_orig = r22(5, 6, 7, 8),
	      test_r22_subtract_to_solution = r22(-4, -4, -4, -4),
	      test_r22_subtract_to_M1 = r22_clone(test_r22_subtract_to_M1_orig),
	      test_r22_subtract_to_M2 = r22_clone(test_r22_subtract_to_M2_orig),
	      test_r22_subtract_to_Mout = r22_zero();
	  assert_is(r22_subtract_to(test_r22_subtract_to_M1, test_r22_subtract_to_M2, test_r22_subtract_to_Mout), test_r22_subtract_to_Mout, "r22_subtract_to() is returning the wrong matrix!");
	  assert_equal(test_r22_subtract_to_Mout, test_r22_subtract_to_solution, "r22_subtract_to() failed!");
	  test_r22_subtract_to_Mout = r22_zero();
	  assert_is(r22_subtract_to(test_r22_subtract_to_M1, test_r22_subtract_to_M2, test_r22_subtract_to_M1), test_r22_subtract_to_M1, "r22_subtract_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r22_subtract_to_M1, test_r22_subtract_to_solution, "r22_subtract_to() failed when Mout is M1!");
	  r22_clone_to(test_r22_subtract_to_M1_orig, test_r22_subtract_to_M1);
	  assert_is(r22_subtract_to(test_r22_subtract_to_M1, test_r22_subtract_to_M2, test_r22_subtract_to_M2), test_r22_subtract_to_M2, "r22_subtract_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r22_subtract_to_M2, test_r22_subtract_to_solution, "r22_subtract_to() failed when Mout is M2!");
	  r22_clone_to(test_r22_subtract_to_M2_orig, test_r22_subtract_to_M2);
	  //r33_subtract_to(M1, M2, Mout)
	  var test_r33_subtract_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_subtract_to_M2_orig = r33(-9, -8, -7, -6, -5, -4, -3, -2, -1),
	      test_r33_subtract_to_solution = r33(10, 10, 10, 10, 10, 10, 10, 10, 10),
	      test_r33_subtract_to_M1 = r33_clone(test_r33_subtract_to_M1_orig),
	      test_r33_subtract_to_M2 = r33_clone(test_r33_subtract_to_M2_orig),
	      test_r33_subtract_to_Mout = r33_zero();
	  assert_is(r33_subtract_to(test_r33_subtract_to_M1, test_r33_subtract_to_M2, test_r33_subtract_to_Mout), test_r33_subtract_to_Mout, "r33_subtract_to() is returning the wrong matrix!");
	  assert_equal(test_r33_subtract_to_Mout, test_r33_subtract_to_solution, "r33_subtract_to() failed!");
	  test_r33_subtract_to_Mout = r33_zero();
	  assert_is(r33_subtract_to(test_r33_subtract_to_M1, test_r33_subtract_to_M2, test_r33_subtract_to_M1), test_r33_subtract_to_M1, "r33_subtract_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r33_subtract_to_M1, test_r33_subtract_to_solution, "r33_subtract_to() failed when Mout is M1!");
	  r33_clone_to(test_r33_subtract_to_M1_orig, test_r33_subtract_to_M1);
	  assert_is(r33_subtract_to(test_r33_subtract_to_M1, test_r33_subtract_to_M2, test_r33_subtract_to_M2), test_r33_subtract_to_M2, "r33_subtract_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r33_subtract_to_M2, test_r33_subtract_to_solution, "r33_subtract_to() failed when Mout is M2!");
	  r33_clone_to(test_r33_subtract_to_M2_orig, test_r33_subtract_to_M2);
	  //r44_subtract_to(M1, M2, Mout)
	  var test_r44_subtract_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_subtract_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
	      test_r44_subtract_to_solution = r44(-19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19),
	      test_r44_subtract_to_M1 = r44_clone(test_r44_subtract_to_M1_orig),
	      test_r44_subtract_to_M2 = r44_clone(test_r44_subtract_to_M2_orig),
	      test_r44_subtract_to_Mout = r44_zero();
	  assert_is(r44_subtract_to(test_r44_subtract_to_M1, test_r44_subtract_to_M2, test_r44_subtract_to_Mout), test_r44_subtract_to_Mout, "r44_subtract_to() is returning the wrong matrix!");
	  assert_equal(test_r44_subtract_to_Mout, test_r44_subtract_to_solution, "r44_subtract_to() failed!");
	  test_r44_subtract_to_Mout = r44_zero();
	  assert_is(r44_subtract_to(test_r44_subtract_to_M1, test_r44_subtract_to_M2, test_r44_subtract_to_M1), test_r44_subtract_to_M1, "r44_subtract_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r44_subtract_to_M1, test_r44_subtract_to_solution, "r44_subtract_to() failed when Mout is M1!");
	  r44_clone_to(test_r44_subtract_to_M1_orig, test_r44_subtract_to_M1);
	  assert_is(r44_subtract_to(test_r44_subtract_to_M1, test_r44_subtract_to_M2, test_r44_subtract_to_M2), test_r44_subtract_to_M2, "r44_subtract_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r44_subtract_to_M2, test_r44_subtract_to_solution, "r44_subtract_to() failed when Mout is M2!");
	  r44_clone_to(test_r44_subtract_to_M2_orig, test_r44_subtract_to_M2);
	  //rmn_subtract_to(M1, M2, Mout)
	  var test_rmn_subtract_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_subtract_to_M2_orig = rmn(5, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
	      test_rmn_subtract_to_solution = rmn(5, 2, -4, -4, -4, -4, -4, -4, -4, -4, -4, -4),
	      test_rmn_subtract_to_M1 = rmn_clone(test_rmn_subtract_to_M1_orig),
	      test_rmn_subtract_to_M2 = rmn_clone(test_rmn_subtract_to_M2_orig),
	      test_rmn_subtract_to_Mout = rmn_zero(5, 2);
	  assert_is(rmn_subtract_to(test_rmn_subtract_to_M1, test_rmn_subtract_to_M2, test_rmn_subtract_to_Mout), test_rmn_subtract_to_Mout, "rmn_subtract_to() is returning the wrong matrix!");
	  assert_equal(test_rmn_subtract_to_Mout, test_rmn_subtract_to_solution, "rmn_subtract_to() failed!");
	  test_rmn_subtract_to_Mout = rmn_zero(5, 2);
	  assert_is(rmn_subtract_to(test_rmn_subtract_to_M1, test_rmn_subtract_to_M2, test_rmn_subtract_to_M1), test_rmn_subtract_to_M1, "rmn_subtract_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rmn_subtract_to_M1, test_rmn_subtract_to_solution, "rmn_subtract_to() failed when Mout is M1!");
	  rmn_clone_to(test_rmn_subtract_to_M1_orig, test_rmn_subtract_to_M1);
	  assert_is(rmn_subtract_to(test_rmn_subtract_to_M1, test_rmn_subtract_to_M2, test_rmn_subtract_to_M2), test_rmn_subtract_to_M2, "rmn_subtract_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_rmn_subtract_to_M2, test_rmn_subtract_to_solution, "rmn_subtract_to() failed when Mout is M2!");
	  rmn_clone_to(test_rmn_subtract_to_M2_orig, test_rmn_subtract_to_M2);
	  //rnn_subtract_to(M1, M2, Mout)
	  var test_rnn_subtract_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_rnn_subtract_to_M2_orig = r44(20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35),
	      test_rnn_subtract_to_solution = r44(-19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19, -19),
	      test_rnn_subtract_to_M1 = rnn_clone(test_rnn_subtract_to_M1_orig),
	      test_rnn_subtract_to_M2 = rnn_clone(test_rnn_subtract_to_M2_orig),
	      test_rnn_subtract_to_Mout = rnn_zero(4);
	  assert_is(rnn_subtract_to(test_rnn_subtract_to_M1, test_rnn_subtract_to_M2, test_rnn_subtract_to_Mout), test_rnn_subtract_to_Mout, "rnn_subtract_to() is returning the wrong matrix!");
	  assert_equal(test_rnn_subtract_to_Mout, test_rnn_subtract_to_solution, "rnn_subtract_to() failed!");
	  test_rnn_subtract_to_Mout = rnn_zero(4);
	  assert_is(rnn_subtract_to(test_rnn_subtract_to_M1, test_rnn_subtract_to_M2, test_rnn_subtract_to_M1), test_rnn_subtract_to_M1, "rnn_subtract_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rnn_subtract_to_M1, test_rnn_subtract_to_solution, "rnn_subtract_to() failed when Mout is M1!");
	  rnn_clone_to(test_rnn_subtract_to_M1_orig, test_rnn_subtract_to_M1);
	  assert_is(rnn_subtract_to(test_rnn_subtract_to_M1, test_rnn_subtract_to_M2, test_rnn_subtract_to_M2), test_rnn_subtract_to_M2, "rnn_subtract_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_rnn_subtract_to_M2, test_rnn_subtract_to_solution, "rnn_subtract_to() failed when Mout is M2!");
	  rnn_clone_to(test_rnn_subtract_to_M2_orig, test_rnn_subtract_to_M2);
  
  
	  //r22_scale(M1, r)
	  var test_r22_scale_M1 = r22(1, 2, 3, 4),
	      test_r22_scale_r = 5,
	      test_r22_scale_solution = r22(5, 10, 15, 20);
	  assert_equal(r22_scale(test_r22_scale_M1, test_r22_scale_r), test_r22_scale_solution, "r22_scale() failed!");
	  //r33_scale(M1, r)
	  var test_r33_scale_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_scale_r = -10,
	      test_r33_scale_solution = r33(-10, -20, -30, -40, -50, -60, -70, -80, -90);
	  assert_equal(r33_scale(test_r33_scale_M1, test_r33_scale_r), test_r33_scale_solution, "r33_scale() failed!");
	  //r44_scale(M1, r)
	  var test_r44_scale_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_scale_r = -1,
	      test_r44_scale_solution = r44(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16);
	  assert_equal(r44_scale(test_r44_scale_M1, test_r44_scale_r), test_r44_scale_solution, "r44_scale() failed!");
	  //rmn_scale(M1, r)
	  var test_rmn_scale_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_scale_r = 11,
	      test_rmn_scale_solution = rmn(5, 2, 11, 22, 33, 44, 55, 66, 77, 88, 99, 110);
	  assert_equal(rmn_scale(test_rmn_scale_M1, test_rmn_scale_r), test_rmn_scale_solution, "rmn_scale() failed on 5x2!");
	  assert_equal(rmn_scale(test_r22_scale_M1, test_r22_scale_r), test_r22_scale_solution, "rmn_scale() failed on 2x2!");
	  assert_equal(rmn_scale(test_r33_scale_M1, test_r33_scale_r), test_r33_scale_solution, "rmn_scale() failed on 3x3!");
	  assert_equal(rmn_scale(test_r44_scale_M1, test_r44_scale_r), test_r44_scale_solution, "rmn_scale() failed on 4x4!");
	  //rnn_scale(M1, r)
	  assert_equal(rnn_scale(test_r22_scale_M1, test_r22_scale_r), test_r22_scale_solution, "rnn_scale() failed on 2x2!");
	  assert_equal(rnn_scale(test_r33_scale_M1, test_r33_scale_r), test_r33_scale_solution, "rnn_scale() failed on 3x3!");
	  assert_equal(rnn_scale(test_r44_scale_M1, test_r44_scale_r), test_r44_scale_solution, "rnn_scale() failed on 4x4!");
  
	  //r22_scale_to(M1, r, Mout)
	  var test_r22_scale_to_M1_orig = r22(1, 2, 3, 4),
	      test_r22_scale_to_r_orig = 5,
	      test_r22_scale_to_solution = r22(5, 10, 15, 20),
	      test_r22_scale_to_M1 = r22_clone(test_r22_scale_to_M1_orig),
	      test_r22_scale_to_r = test_r22_scale_to_r_orig,
	      test_r22_scale_to_Mout = r22_zero();
	  assert_is(r22_scale_to(test_r22_scale_to_M1, test_r22_scale_to_r, test_r22_scale_to_Mout), test_r22_scale_to_Mout, "r22_scale_to() is returning the wrong matrix!");
	  assert_equal(test_r22_scale_to_Mout, test_r22_scale_to_solution, "r22_scale_to() failed!");
	  test_r22_scale_to_Mout = r22_zero();
	  assert_is(r22_scale_to(test_r22_scale_to_M1, test_r22_scale_to_r, test_r22_scale_to_M1), test_r22_scale_to_M1, "r22_scale_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r22_scale_to_M1, test_r22_scale_to_solution, "r22_scale_to() failed when Mout is M1!");
	  r22_clone_to(test_r22_scale_to_M1_orig, test_r22_scale_to_M1);
	  //r33_scale_to(M1, r, Mout)
	  var test_r33_scale_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_scale_to_r_orig = -10,
	      test_r33_scale_to_solution = r33(-10, -20, -30, -40, -50, -60, -70, -80, -90),
	      test_r33_scale_to_M1 = r33_clone(test_r33_scale_to_M1_orig),
	      test_r33_scale_to_r = test_r33_scale_to_r_orig,
	      test_r33_scale_to_Mout = r33_zero();
	  assert_is(r33_scale_to(test_r33_scale_to_M1, test_r33_scale_to_r, test_r33_scale_to_Mout), test_r33_scale_to_Mout, "r33_scale_to() is returning the wrong matrix!");
	  assert_equal(test_r33_scale_to_Mout, test_r33_scale_to_solution, "r33_scale_to() failed!");
	  test_r33_scale_to_Mout = r33_zero();
	  assert_is(r33_scale_to(test_r33_scale_to_M1, test_r33_scale_to_r, test_r33_scale_to_M1), test_r33_scale_to_M1, "r33_scale_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r33_scale_to_M1, test_r33_scale_to_solution, "r33_scale_to() failed when Mout is M1!");
	  r33_clone_to(test_r33_scale_to_M1_orig, test_r33_scale_to_M1);
	  //r44_scale_to(M1, r, Mout)
	  var test_r44_scale_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_scale_to_r_orig = -1,
	      test_r44_scale_to_solution = r44(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16),
	      test_r44_scale_to_M1 = r44_clone(test_r44_scale_to_M1_orig),
	      test_r44_scale_to_r = test_r44_scale_to_r_orig,
	      test_r44_scale_to_Mout = r44_zero();
	  assert_is(r44_scale_to(test_r44_scale_to_M1, test_r44_scale_to_r, test_r44_scale_to_Mout), test_r44_scale_to_Mout, "r44_scale_to() is returning the wrong matrix!");
	  assert_equal(test_r44_scale_to_Mout, test_r44_scale_to_solution, "r44_scale_to() failed!");
	  test_r44_scale_to_Mout = r44_zero();
	  assert_is(r44_scale_to(test_r44_scale_to_M1, test_r44_scale_to_r, test_r44_scale_to_M1), test_r44_scale_to_M1, "r44_scale_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r44_scale_to_M1, test_r44_scale_to_solution, "r44_scale_to() failed when Mout is M1!");
	  r44_clone_to(test_r44_scale_to_M1_orig, test_r44_scale_to_M1);
	  //rmn_scale_to(M1, r, Mout)
	  var test_rmn_scale_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_scale_to_r_orig = 11,
	      test_rmn_scale_to_solution = rmn(5, 2, 11, 22, 33, 44, 55, 66, 77, 88, 99, 110),
	      test_rmn_scale_to_M1 = rmn_clone(test_rmn_scale_to_M1_orig),
	      test_rmn_scale_to_r = test_rmn_scale_to_r_orig,
	      test_rmn_scale_to_Mout = rmn_zero(5, 2);
	  assert_is(rmn_scale_to(test_rmn_scale_to_M1, test_rmn_scale_to_r, test_rmn_scale_to_Mout), test_rmn_scale_to_Mout, "rmn_scale_to() is returning the wrong matrix!");
	  assert_equal(test_rmn_scale_to_Mout, test_rmn_scale_to_solution, "rmn_scale_to() failed!");
	  test_rmn_scale_to_Mout = rmn_zero(5, 2);
	  assert_is(rmn_scale_to(test_rmn_scale_to_M1, test_rmn_scale_to_r, test_rmn_scale_to_M1), test_rmn_scale_to_M1, "rmn_scale_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rmn_scale_to_M1, test_rmn_scale_to_solution, "rmn_scale_to() failed when Mout is M1!");
	  rmn_clone_to(test_rmn_scale_to_M1_orig, test_rmn_scale_to_M1);
	  //rnn_scale_to(M1, r, Mout)
	  var test_rnn_scale_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_rnn_scale_to_r_orig = -1,
	      test_rnn_scale_to_solution = r44(-1, -2, -3, -4, -5, -6, -7, -8, -9, -10, -11, -12, -13, -14, -15, -16),
	      test_rnn_scale_to_M1 = rnn_clone(test_rnn_scale_to_M1_orig),
	      test_rnn_scale_to_r = test_rnn_scale_to_r_orig,
	      test_rnn_scale_to_Mout = rnn_zero(4);
	  assert_is(rnn_scale_to(test_rnn_scale_to_M1, test_rnn_scale_to_r, test_rnn_scale_to_Mout), test_rnn_scale_to_Mout, "rnn_scale_to() is returning the wrong matrix!");
	  assert_equal(test_rnn_scale_to_Mout, test_rnn_scale_to_solution, "rnn_scale_to() failed!");
	  test_rnn_scale_to_Mout = rnn_zero(4);
	  assert_is(rnn_scale_to(test_rnn_scale_to_M1, test_rnn_scale_to_r, test_rnn_scale_to_M1), test_rnn_scale_to_M1, "rnn_scale_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rnn_scale_to_M1, test_rnn_scale_to_solution, "rnn_scale_to() failed when Mout is M1!");
	  rnn_clone_to(test_rnn_scale_to_M1_orig, test_rnn_scale_to_M1);
  
  
	  //r22_multiply(M1, M2)
	  var test_r22_multiply_M1 = r22(1, 2, 3, 4),
	      test_r22_multiply_M2 = r22(4, 3, 2, 1),
	      test_r22_multiply_solution = r22(8, 5, 20, 13);
	  assert_equal(r22_multiply(test_r22_multiply_M1, test_r22_multiply_M2), test_r22_multiply_solution, "r22_multiply() failed!");
	  //r33_multiply(M1, M2)
	  var test_r33_multiply_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_multiply_M2 = r33(9, 8, 7, 6, 5, 4, 3, 2, 1),
	      test_r33_multiply_solution = r33(30, 24, 18, 84, 69, 54, 138, 114, 90);
	  assert_equal(r33_multiply(test_r33_multiply_M1, test_r33_multiply_M2), test_r33_multiply_solution, "r33_multiply() failed!");
	  //r44_multiply(M1, M2)
	  var test_r44_multiply_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_multiply_M2 = r44(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1),
	      test_r44_multiply_solution = r44(80, 70, 60, 50, 240, 214, 188, 162, 400, 358, 316, 274, 560, 502, 444, 386);
	  assert_equal(r44_multiply(test_r44_multiply_M1, test_r44_multiply_M2), test_r44_multiply_solution, "r44_multiply() failed!");
	  //rmn_multiply(M1, M2)
	  var test_rmn_multiply_M1 = rmn(4, 2, 1, 2, 3, 4, 5, 6, 7, 8),
	      test_rmn_multiply_M2 = rmn(2, 3, 6, 5, 4, 3, 2, 1),
	      test_rmn_multiply_solution = rmn(4, 3, 12, 9, 6, 30, 23, 16, 48, 37, 26, 66, 51, 36);
	  assert_equal(rmn_multiply(test_rmn_multiply_M1, test_rmn_multiply_M2), test_rmn_multiply_solution, "rmn_multiply() failed on 5x2!");
	  assert_equal(rmn_multiply(test_r22_multiply_M1, test_r22_multiply_M2), test_r22_multiply_solution, "rmn_multiply() failed on 2x2!");
	  assert_equal(rmn_multiply(test_r33_multiply_M1, test_r33_multiply_M2), test_r33_multiply_solution, "rmn_multiply() failed on 3x3!");
	  assert_equal(rmn_multiply(test_r44_multiply_M1, test_r44_multiply_M2), test_r44_multiply_solution, "rmn_multiply() failed on 4x4!");
	  //rnn_multiply(M1, M2)
	  assert_equal(rnn_multiply(test_r22_multiply_M1, test_r22_multiply_M2), test_r22_multiply_solution, "rnn_multiply() failed on 2x2!");
	  assert_equal(rnn_multiply(test_r33_multiply_M1, test_r33_multiply_M2), test_r33_multiply_solution, "rnn_multiply() failed on 3x3!");
	  assert_equal(rnn_multiply(test_r44_multiply_M1, test_r44_multiply_M2), test_r44_multiply_solution, "rnn_multiply() failed on 4x4!");
  
	  //r22_multiply_to(M1, M2, Mout)
	  var test_r22_multiply_to_M1_orig = r22(1, 2, 3, 4),
	      test_r22_multiply_to_M2_orig = r22(4, 3, 2, 1),
	      test_r22_multiply_to_solution = r22(8, 5, 20, 13),
	      test_r22_multiply_to_M1 = r22_clone(test_r22_multiply_to_M1_orig),
	      test_r22_multiply_to_M2 = r22_clone(test_r22_multiply_to_M2_orig),
	      test_r22_multiply_to_Mout = r22_zero();
	  assert_is(r22_multiply_to(test_r22_multiply_to_M1, test_r22_multiply_to_M2, test_r22_multiply_to_Mout), test_r22_multiply_to_Mout, "r22_multiply_to() is returning the wrong matrix!");
	  assert_equal(test_r22_multiply_to_Mout, test_r22_multiply_to_solution, "r22_multiply_to() failed!");
	  test_r22_multiply_to_Mout = r22_zero();
	  assert_is(r22_multiply_to(test_r22_multiply_to_M1, test_r22_multiply_to_M2, test_r22_multiply_to_M1), test_r22_multiply_to_M1, "r22_multiply_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r22_multiply_to_M1, test_r22_multiply_to_solution, "r22_multiply_to() failed when Mout is M1!");
	  r22_clone_to(test_r22_multiply_to_M1_orig, test_r22_multiply_to_M1);
	  assert_is(r22_multiply_to(test_r22_multiply_to_M1, test_r22_multiply_to_M2, test_r22_multiply_to_M2), test_r22_multiply_to_M2, "r22_multiply_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r22_multiply_to_M2, test_r22_multiply_to_solution, "r22_multiply_to() failed when Mout is M2!");
	  r22_clone_to(test_r22_multiply_to_M2_orig, test_r22_multiply_to_M2);
	  //r33_multiply_to(M1, M2, Mout)
	  var test_r33_multiply_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_multiply_to_M2_orig = r33(9, 8, 7, 6, 5, 4, 3, 2, 1),
	      test_r33_multiply_to_solution = r33(30, 24, 18, 84, 69, 54, 138, 114, 90),
	      test_r33_multiply_to_M1 = r33_clone(test_r33_multiply_to_M1_orig),
	      test_r33_multiply_to_M2 = r33_clone(test_r33_multiply_to_M2_orig),
	      test_r33_multiply_to_Mout = r33_zero();
	  assert_is(r33_multiply_to(test_r33_multiply_to_M1, test_r33_multiply_to_M2, test_r33_multiply_to_Mout), test_r33_multiply_to_Mout, "r33_multiply_to() is returning the wrong matrix!");
	  assert_equal(test_r33_multiply_to_Mout, test_r33_multiply_to_solution, "r33_multiply_to() failed!");
	  test_r33_multiply_to_Mout = r33_zero();
	  assert_is(r33_multiply_to(test_r33_multiply_to_M1, test_r33_multiply_to_M2, test_r33_multiply_to_M1), test_r33_multiply_to_M1, "r33_multiply_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r33_multiply_to_M1, test_r33_multiply_to_solution, "r33_multiply_to() failed when Mout is M1!");
	  r33_clone_to(test_r33_multiply_to_M1_orig, test_r33_multiply_to_M1);
	  assert_is(r33_multiply_to(test_r33_multiply_to_M1, test_r33_multiply_to_M2, test_r33_multiply_to_M2), test_r33_multiply_to_M2, "r33_multiply_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r33_multiply_to_M2, test_r33_multiply_to_solution, "r33_multiply_to() failed when Mout is M2!");
	  r33_clone_to(test_r33_multiply_to_M2_orig, test_r33_multiply_to_M2);
	  //r44_multiply_to(M1, M2, Mout)
	  var test_r44_multiply_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_multiply_to_M2_orig = r44(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1),
	      test_r44_multiply_to_solution = r44(80, 70, 60, 50, 240, 214, 188, 162, 400, 358, 316, 274, 560, 502, 444, 386),
	      test_r44_multiply_to_M1 = r44_clone(test_r44_multiply_to_M1_orig),
	      test_r44_multiply_to_M2 = r44_clone(test_r44_multiply_to_M2_orig),
	      test_r44_multiply_to_Mout = r44_zero();
	  assert_is(r44_multiply_to(test_r44_multiply_to_M1, test_r44_multiply_to_M2, test_r44_multiply_to_Mout), test_r44_multiply_to_Mout, "r44_multiply_to() is returning the wrong matrix!");
	  assert_equal(test_r44_multiply_to_Mout, test_r44_multiply_to_solution, "r44_multiply_to() failed!");
	  test_r44_multiply_to_Mout = r44_zero();
	  assert_is(r44_multiply_to(test_r44_multiply_to_M1, test_r44_multiply_to_M2, test_r44_multiply_to_M1), test_r44_multiply_to_M1, "r44_multiply_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r44_multiply_to_M1, test_r44_multiply_to_solution, "r44_multiply_to() failed when Mout is M1!");
	  r44_clone_to(test_r44_multiply_to_M1_orig, test_r44_multiply_to_M1);
	  assert_is(r44_multiply_to(test_r44_multiply_to_M1, test_r44_multiply_to_M2, test_r44_multiply_to_M2), test_r44_multiply_to_M2, "r44_multiply_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_r44_multiply_to_M2, test_r44_multiply_to_solution, "r44_multiply_to() failed when Mout is M2!");
	  r44_clone_to(test_r44_multiply_to_M2_orig, test_r44_multiply_to_M2);
	  //rmn_multiply_to(M1, M2, Mout)
	  var test_rmn_multiply_to_M1_orig = rmn(4, 2, 1, 2, 3, 4, 5, 6, 7, 8),
	      test_rmn_multiply_to_M2_orig = rmn(2, 3, 6, 5, 4, 3, 2, 1),
	      test_rmn_multiply_to_solution = rmn(4, 3, 12, 9, 6, 30, 23, 16, 48, 37, 26, 66, 51, 36),
	      test_rmn_multiply_to_M1 = rmn_clone(test_rmn_multiply_to_M1_orig),
	      test_rmn_multiply_to_M2 = rmn_clone(test_rmn_multiply_to_M2_orig),
	      test_rmn_multiply_to_Mout = rmn_zero(4, 3);
	  assert_is(rmn_multiply_to(test_rmn_multiply_to_M1, test_rmn_multiply_to_M2, test_rmn_multiply_to_Mout), test_rmn_multiply_to_Mout, "rmn_multiply_to() is returning the wrong matrix!");
	  assert_equal(test_rmn_multiply_to_Mout, test_rmn_multiply_to_solution, "rmn_multiply_to() failed!");
	  test_rmn_multiply_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
	  test_rmn_multiply_to_M2_orig = r44(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
	  test_rmn_multiply_to_solution = r44(80, 70, 60, 50, 240, 214, 188, 162, 400, 358, 316, 274, 560, 502, 444, 386);
	  test_rmn_multiply_to_M1 = rmn_clone(test_rmn_multiply_to_M1_orig);
	  test_rmn_multiply_to_M2 = rmn_clone(test_rmn_multiply_to_M2_orig);
	  test_rmn_multiply_to_Mout = r44_zero();
	  assert_is(rmn_multiply_to(test_rmn_multiply_to_M1, test_rmn_multiply_to_M2, test_rmn_multiply_to_M1), test_rmn_multiply_to_M1, "rmn_multiply_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rmn_multiply_to_M1, test_rmn_multiply_to_solution, "rmn_multiply_to() failed when Mout is M1!");
	  rmn_clone_to(test_rmn_multiply_to_M1_orig, test_rmn_multiply_to_M1);
	  assert_is(rmn_multiply_to(test_rmn_multiply_to_M1, test_rmn_multiply_to_M2, test_rmn_multiply_to_M2), test_rmn_multiply_to_M2, "rmn_multiply_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_rmn_multiply_to_M2, test_rmn_multiply_to_solution, "rmn_multiply_to() failed when Mout is M2!");
	  rmn_clone_to(test_rmn_multiply_to_M2_orig, test_rmn_multiply_to_M2);
	  test_rmn_multiply_to_M1_orig = rmn(4, 2, 1, 2, 3, 4, 5, 6, 7, 8);
	  test_rmn_multiply_to_M2_orig = rmn(2, 3, 6, 5, 4, 3, 2, 1);
	  test_rmn_multiply_to_solution = rmn(4, 3, 12, 9, 6, 30, 23, 16, 48, 37, 26, 66, 51, 36);
	  test_rmn_multiply_to_M1 = rmn_clone(test_rmn_multiply_to_M1_orig);
	  test_rmn_multiply_to_M2 = rmn_clone(test_rmn_multiply_to_M2_orig);
	  test_rmn_multiply_to_Mout = rmn_zero(4, 3);
	  //rnn_multiply_to(M1, M2, Mout)
	  var test_rnn_multiply_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_rnn_multiply_to_M2_orig = r44(16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1),
	      test_rnn_multiply_to_solution = r44(80, 70, 60, 50, 240, 214, 188, 162, 400, 358, 316, 274, 560, 502, 444, 386),
	      test_rnn_multiply_to_M1 = rnn_clone(test_rnn_multiply_to_M1_orig),
	      test_rnn_multiply_to_M2 = rnn_clone(test_rnn_multiply_to_M2_orig),
	      test_rnn_multiply_to_Mout = rnn_zero(4);
	  assert_is(rnn_multiply_to(test_rnn_multiply_to_M1, test_rnn_multiply_to_M2, test_rnn_multiply_to_Mout), test_rnn_multiply_to_Mout, "rnn_multiply_to() is returning the wrong matrix!");
	  assert_equal(test_rnn_multiply_to_Mout, test_rnn_multiply_to_solution, "rnn_multiply_to() failed!");
	  test_rnn_multiply_to_Mout = rnn_zero(4);
	  assert_is(rnn_multiply_to(test_rnn_multiply_to_M1, test_rnn_multiply_to_M2, test_rnn_multiply_to_M1), test_rnn_multiply_to_M1, "rnn_multiply_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rnn_multiply_to_M1, test_rnn_multiply_to_solution, "rnn_multiply_to() failed when Mout is M1!");
	  rnn_clone_to(test_rnn_multiply_to_M1_orig, test_rnn_multiply_to_M1);
	  assert_is(rnn_multiply_to(test_rnn_multiply_to_M1, test_rnn_multiply_to_M2, test_rnn_multiply_to_M2), test_rnn_multiply_to_M2, "rnn_multiply_to() is returning the wrong matrix when Mout is M2!");
	  assert_equal(test_rnn_multiply_to_M2, test_rnn_multiply_to_solution, "rnn_multiply_to() failed when Mout is M2!");
	  rnn_clone_to(test_rnn_multiply_to_M2_orig, test_rnn_multiply_to_M2);
  
  
	  //r22_transpose(M1)
	  var test_r22_transpose_M1 = r22(1, 2, 3, 4),
	      test_r22_transpose_solution = r22(1, 3, 2, 4);
	  assert_equal(r22_transpose(test_r22_transpose_M1), test_r22_transpose_solution, "r22_transpose() failed!");
	  //r33_transpose(M1)
	  var test_r33_transpose_M1 = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_transpose_solution = r33(1, 4, 7, 2, 5, 8, 3, 6, 9);
	  assert_equal(r33_transpose(test_r33_transpose_M1), test_r33_transpose_solution, "r33_transpose() failed!");
	  //r44_transpose(M1)
	  var test_r44_transpose_M1 = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_transpose_solution = r44(1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 4, 8, 12, 16);
	  assert_equal(r44_transpose(test_r44_transpose_M1), test_r44_transpose_solution, "r44_transpose() failed!");
	  //rmn_transpose(M1)
	  var test_rmn_transpose_M1 = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_transpose_solution = rmn(2, 5, 1, 3, 5, 7, 9, 2, 4, 6, 8, 10);
	  assert_equal(rmn_transpose(test_rmn_transpose_M1), test_rmn_transpose_solution, "rmn_transpose() failed on 5x2!");
	  assert_equal(rmn_transpose(test_r22_transpose_M1), test_r22_transpose_solution, "rmn_transpose() failed on 2x2!");
	  assert_equal(rmn_transpose(test_r33_transpose_M1), test_r33_transpose_solution, "rmn_transpose() failed on 3x3!");
	  assert_equal(rmn_transpose(test_r44_transpose_M1), test_r44_transpose_solution, "rmn_transpose() failed on 4x4!");
	  //rnn_transpose(M1)
	  assert_equal(rnn_transpose(test_r22_transpose_M1), test_r22_transpose_solution, "rnn_transpose() failed on 2x2!");
	  assert_equal(rnn_transpose(test_r33_transpose_M1), test_r33_transpose_solution, "rnn_transpose() failed on 3x3!");
	  assert_equal(rnn_transpose(test_r44_transpose_M1), test_r44_transpose_solution, "rnn_transpose() failed on 4x4!");
  
	  //r22_transpose_to(M1, Mout)
	  var test_r22_transpose_to_M1_orig = r22(1, 2, 3, 4),
	      test_r22_transpose_to_solution = r22(1, 3, 2, 4),
	      test_r22_transpose_to_M1 = r22_clone(test_r22_transpose_to_M1_orig),
	      test_r22_transpose_to_Mout = r22_zero();
	  assert_is(r22_transpose_to(test_r22_transpose_to_M1, test_r22_transpose_to_Mout), test_r22_transpose_to_Mout, "r22_transpose_to() is returning the wrong matrix!");
	  assert_equal(test_r22_transpose_to_Mout, test_r22_transpose_to_solution, "r22_transpose_to() failed!");
	  test_r22_transpose_to_Mout = r22_zero();
	  assert_is(r22_transpose_to(test_r22_transpose_to_M1, test_r22_transpose_to_M1), test_r22_transpose_to_M1, "r22_transpose_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r22_transpose_to_M1, test_r22_transpose_to_solution, "r22_transpose_to() failed when Mout is M1!");
	  r22_clone_to(test_r22_transpose_to_M1_orig, test_r22_transpose_to_M1);
	  //r33_transpose_to(M1, Mout)
	  var test_r33_transpose_to_M1_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_transpose_to_solution = r33(1, 4, 7, 2, 5, 8, 3, 6, 9),
	      test_r33_transpose_to_M1 = r33_clone(test_r33_transpose_to_M1_orig),
	      test_r33_transpose_to_Mout = r33_zero();
	  assert_is(r33_transpose_to(test_r33_transpose_to_M1, test_r33_transpose_to_Mout), test_r33_transpose_to_Mout, "r33_transpose_to() is returning the wrong matrix!");
	  assert_equal(test_r33_transpose_to_Mout, test_r33_transpose_to_solution, "r33_transpose_to() failed!");
	  test_r33_transpose_to_Mout = r33_zero();
	  assert_is(r33_transpose_to(test_r33_transpose_to_M1, test_r33_transpose_to_M1), test_r33_transpose_to_M1, "r33_transpose_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r33_transpose_to_M1, test_r33_transpose_to_solution, "r33_transpose_to() failed when Mout is M1!");
	  r33_clone_to(test_r33_transpose_to_M1_orig, test_r33_transpose_to_M1);
	  //r44_transpose_to(M1, Mout)
	  var test_r44_transpose_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_transpose_to_solution = r44(1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 4, 8, 12, 16),
	      test_r44_transpose_to_M1 = r44_clone(test_r44_transpose_to_M1_orig),
	      test_r44_transpose_to_Mout = r44_zero();
	  assert_is(r44_transpose_to(test_r44_transpose_to_M1, test_r44_transpose_to_Mout), test_r44_transpose_to_Mout, "r44_transpose_to() is returning the wrong matrix!");
	  assert_equal(test_r44_transpose_to_Mout, test_r44_transpose_to_solution, "r44_transpose_to() failed!");
	  test_r44_transpose_to_Mout = r44_zero();
	  assert_is(r44_transpose_to(test_r44_transpose_to_M1, test_r44_transpose_to_M1), test_r44_transpose_to_M1, "r44_transpose_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_r44_transpose_to_M1, test_r44_transpose_to_solution, "r44_transpose_to() failed when Mout is M1!");
	  r44_clone_to(test_r44_transpose_to_M1_orig, test_r44_transpose_to_M1);
	  //rmn_transpose_to(M1, Mout)
	  var test_rmn_transpose_to_M1_orig = rmn(5, 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
	      test_rmn_transpose_to_solution = rmn(2, 5, 1, 3, 5, 7, 9, 2, 4, 6, 8, 10),
	      test_rmn_transpose_to_M1 = rmn_clone(test_rmn_transpose_to_M1_orig),
	      test_rmn_transpose_to_Mout = rmn_zero(2, 5);
	  assert_is(rmn_transpose_to(test_rmn_transpose_to_M1, test_rmn_transpose_to_Mout), test_rmn_transpose_to_Mout, "rmn_transpose_to() is returning the wrong matrix!");
	  assert_equal(test_rmn_transpose_to_Mout, test_rmn_transpose_to_solution, "rmn_transpose_to() failed!");
	  test_rmn_transpose_to_M1 = 0;
	  test_rmn_transpose_to_M1 = rmn_clone(test_r33_transpose_to_M1_orig);
	  test_rmn_transpose_to_Mout = rmn_zero(3, 3);
	  assert_is(rmn_transpose_to(test_rmn_transpose_to_M1, test_rmn_transpose_to_M1), test_rmn_transpose_to_M1, "rmn_transpose_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rmn_transpose_to_M1, test_r33_transpose_to_solution, "rmn_transpose_to() failed when Mout is M1!");
	  test_rmn_transpose_to_M1 = 0;
	  test_rmn_transpose_to_M1 = rmn_clone(test_rmn_transpose_to_M1_orig);
	  test_rmn_transpose_to_Mout = rmn_zero(2, 5);
	  //rnn_transpose_to(M1, Mout)
	  var test_rnn_transpose_to_M1_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_rnn_transpose_to_solution = r44(1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15, 4, 8, 12, 16),
	      test_rnn_transpose_to_M1 = rnn_clone(test_rnn_transpose_to_M1_orig),
	      test_rnn_transpose_to_Mout = rnn_zero(4);
	  assert_is(rnn_transpose_to(test_rnn_transpose_to_M1, test_rnn_transpose_to_Mout), test_rnn_transpose_to_Mout, "rnn_transpose_to() is returning the wrong matrix!");
	  assert_equal(test_rnn_transpose_to_Mout, test_rnn_transpose_to_solution, "rnn_transpose_to() failed!");
	  test_rnn_transpose_to_Mout = rnn_zero(4);
	  assert_is(rnn_transpose_to(test_rnn_transpose_to_M1, test_rnn_transpose_to_M1), test_rnn_transpose_to_M1, "rnn_transpose_to() is returning the wrong matrix when Mout is M1!");
	  assert_equal(test_rnn_transpose_to_M1, test_rnn_transpose_to_solution, "rnn_transpose_to() failed when Mout is M1!");
	  rnn_clone_to(test_rnn_transpose_to_M1_orig, test_rnn_transpose_to_M1);
  
  
	  //r22_transform(M, v)
	  var test_r22_transform_M = r22(1, 2, 3, 4),
	      test_r22_transform_v = r2(5, 6),
	      test_r22_transform_solution = r2(17, 39);
	  assert_equal(r22_transform(test_r22_transform_M, test_r22_transform_v), test_r22_transform_solution, "r22_transform() failed!");
	  //r33_transform(M, v)
	  var test_r33_transform_M = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_transform_v = r3(10, 11, 12),
	      test_r33_transform_solution = r3(68, 167, 266);
	  assert_equal(r33_transform(test_r33_transform_M, test_r33_transform_v), test_r33_transform_solution, "r33_transform() failed!");
	  //r44_transform(M, v)
	  var test_r44_transform_M = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_transform_v = r4(1, 2, 3, 4),
	      test_r44_transform_solution = r4(30, 70, 110, 150);
	  assert_equal(r44_transform(test_r44_transform_M, test_r44_transform_v), test_r44_transform_solution, "r44_transform() failed!");
	  //rmn_transform(M, v)
	  var test_rmn_transform_M = rmn(4, 2, 1, 2, 3, 4, 5, 6, 7, 8),
	      test_rmn_transform_v = r2(9, 10),
	      test_rmn_transform_solution = r4(29, 67, 105, 143);
	  assert_equal(rmn_transform(test_rmn_transform_M, test_rmn_transform_v), test_rmn_transform_solution, "rmn_transform() failed on 5x2!");
	  assert_equal(rmn_transform(test_r22_transform_M, test_r22_transform_v), test_r22_transform_solution, "rmn_transform() failed on 2x2!");
	  assert_equal(rmn_transform(test_r33_transform_M, test_r33_transform_v), test_r33_transform_solution, "rmn_transform() failed on 3x3!");
	  assert_equal(rmn_transform(test_r44_transform_M, test_r44_transform_v), test_r44_transform_solution, "rmn_transform() failed on 4x4!");
	  //rnn_transform(M, v)
	  assert_equal(rnn_transform(test_r22_transform_M, test_r22_transform_v), test_r22_transform_solution, "rnn_transform() failed on 2x2!");
	  assert_equal(rnn_transform(test_r33_transform_M, test_r33_transform_v), test_r33_transform_solution, "rnn_transform() failed on 3x3!");
	  assert_equal(rnn_transform(test_r44_transform_M, test_r44_transform_v), test_r44_transform_solution, "rnn_transform() failed on 4x4!");
  
	  //r22_transform_to(M, v, vout)
	  var test_r22_transform_to_M_orig = r22(1, 2, 3, 4),
	      test_r22_transform_to_v_orig = r2(5, 6),
	      test_r22_transform_to_solution = r2(17, 39),
	      test_r22_transform_to_M = r22_clone(test_r22_transform_to_M_orig),
	      test_r22_transform_to_v = r2_clone(test_r22_transform_to_v_orig),
	      test_r22_transform_to_vout = r2_zero();
	  assert_is(r22_transform_to(test_r22_transform_to_M, test_r22_transform_to_v, test_r22_transform_to_vout), test_r22_transform_to_vout, "r22_transform_to() is returning the wrong matrix!");
	  assert_equal(test_r22_transform_to_vout, test_r22_transform_to_solution, "r22_transform_to() failed!");
	  test_r22_transform_to_vout = r22_zero();
	  assert_is(r22_transform_to(test_r22_transform_to_M, test_r22_transform_to_v, test_r22_transform_to_v), test_r22_transform_to_v, "r22_transform_to() is returning the wrong matrix when vout is v!");
	  assert_equal(test_r22_transform_to_v, test_r22_transform_to_solution, "r22_transform_to() failed when vout is v!");
	  r2_clone_to(test_r22_transform_to_v_orig, test_r22_transform_to_v);
	  //r33_transform_to(M, v, vout)
	  var test_r33_transform_to_M_orig = r33(1, 2, 3, 4, 5, 6, 7, 8, 9),
	      test_r33_transform_to_v_orig = r3(10, 11, 12),
	      test_r33_transform_to_solution = r3(68, 167, 266),
	      test_r33_transform_to_M = r33_clone(test_r33_transform_to_M_orig),
	      test_r33_transform_to_v = r3_clone(test_r33_transform_to_v_orig),
	      test_r33_transform_to_vout = r3_zero();
	  assert_is(r33_transform_to(test_r33_transform_to_M, test_r33_transform_to_v, test_r33_transform_to_vout), test_r33_transform_to_vout, "r33_transform_to() is returning the wrong matrix!");
	  assert_equal(test_r33_transform_to_vout, test_r33_transform_to_solution, "r33_transform_to() failed!");
	  test_r33_transform_to_vout = r33_zero();
	  assert_is(r33_transform_to(test_r33_transform_to_M, test_r33_transform_to_v, test_r33_transform_to_v), test_r33_transform_to_v, "r33_transform_to() is returning the wrong matrix when vout is v!");
	  assert_equal(test_r33_transform_to_v, test_r33_transform_to_solution, "r33_transform_to() failed when vout is v!");
	  r3_clone_to(test_r33_transform_to_v_orig, test_r33_transform_to_v);
	  //r44_transform_to(M, v, vout)
	  var test_r44_transform_to_M_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_r44_transform_to_v_orig = r4(1, 2, 3, 4),
	      test_r44_transform_to_solution = r4(30, 70, 110, 150),
	      test_r44_transform_to_M = r44_clone(test_r44_transform_to_M_orig),
	      test_r44_transform_to_v = r4_clone(test_r44_transform_to_v_orig),
	      test_r44_transform_to_vout = r4_zero();
	  assert_is(r44_transform_to(test_r44_transform_to_M, test_r44_transform_to_v, test_r44_transform_to_vout), test_r44_transform_to_vout, "r44_transform_to() is returning the wrong matrix!");
	  assert_equal(test_r44_transform_to_vout, test_r44_transform_to_solution, "r44_transform_to() failed!");
	  test_r44_transform_to_vout = r44_zero();
	  assert_is(r44_transform_to(test_r44_transform_to_M, test_r44_transform_to_v, test_r44_transform_to_v), test_r44_transform_to_v, "r44_transform_to() is returning the wrong matrix when vout is v!");
	  assert_equal(test_r44_transform_to_v, test_r44_transform_to_solution, "r44_transform_to() failed when vout is v!");
	  r4_clone_to(test_r44_transform_to_v_orig, test_r44_transform_to_v);
	  //rmn_transform_to(M, v, vout)
	  var test_rmn_transform_to_M_orig = rmn(4, 2, 1, 2, 3, 4, 5, 6, 7, 8),
	      test_rmn_transform_to_v_orig = r2(9, 10),
	      test_rmn_transform_to_solution = r4(29, 67, 105, 143),
	      test_rmn_transform_to_M = rmn_clone(test_rmn_transform_to_M_orig),
	      test_rmn_transform_to_v = rn_clone(test_rmn_transform_to_v_orig),
	      test_rmn_transform_to_vout = rn_zero(4);
	  assert_is(rmn_transform_to(test_rmn_transform_to_M, test_rmn_transform_to_v, test_rmn_transform_to_vout), test_rmn_transform_to_vout, "rmn_transform_to() is returning the wrong matrix!");
	  assert_equal(test_rmn_transform_to_vout, test_rmn_transform_to_solution, "rmn_transform_to() failed!");
	  test_rmn_transform_to_M_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
	  test_rmn_transform_to_v_orig = r4(1, 2, 3, 4);
	  test_rmn_transform_to_solution = r4(30, 70, 110, 150);
	  test_rmn_transform_to_M = rmn_clone(test_rmn_transform_to_M_orig);
	  test_rmn_transform_to_v = rn_clone(test_rmn_transform_to_v_orig);
	  test_rmn_transform_to_vout = r4_zero();
	  assert_is(rmn_transform_to(test_rmn_transform_to_M, test_rmn_transform_to_v, test_rmn_transform_to_v), test_rmn_transform_to_v, "rmn_transform_to() is returning the wrong matrix when vout is v!");
	  assert_equal(test_rmn_transform_to_v, test_rmn_transform_to_solution, "rmn_transform_to() failed when vout is v!");
	  rn_clone_to(test_rmn_transform_to_v_orig, test_rmn_transform_to_v);
	  test_rmn_transform_to_M_orig = rmn(4, 2, 1, 2, 3, 4, 5, 6, 7, 8);
	  test_rmn_transform_to_v_orig = r2(9, 10);
	  test_rmn_transform_to_solution = r4(29, 67, 105, 143);
	  test_rmn_transform_to_M = rmn_clone(test_rmn_transform_to_M_orig);
	  test_rmn_transform_to_v = rn_clone(test_rmn_transform_to_v_orig);
	  test_rmn_transform_to_vout = rn_zero(4);
	  //rnn_transform_to(M, v, vout)
	  var test_rnn_transform_to_M_orig = r44(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
	      test_rnn_transform_to_v_orig = r4(1, 2, 3, 4),
	      test_rnn_transform_to_solution = r4(30, 70, 110, 150),
	      test_rnn_transform_to_M = rnn_clone(test_rnn_transform_to_M_orig),
	      test_rnn_transform_to_v = rn_clone(test_rnn_transform_to_v_orig),
	      test_rnn_transform_to_vout = rn_zero(4);
	  assert_is(rnn_transform_to(test_rnn_transform_to_M, test_rnn_transform_to_v, test_rnn_transform_to_vout), test_rnn_transform_to_vout, "rnn_transform_to() is returning the wrong matrix!");
	  assert_equal(test_rnn_transform_to_vout, test_rnn_transform_to_solution, "rnn_transform_to() failed!");
	  test_rnn_transform_to_vout = rn_zero(4);
	  assert_is(rnn_transform_to(test_rnn_transform_to_M, test_rnn_transform_to_v, test_rnn_transform_to_v), test_rnn_transform_to_v, "rnn_transform_to() is returning the wrong matrix when vout is v!");
	  assert_equal(test_rnn_transform_to_v, test_rnn_transform_to_solution, "rnn_transform_to() failed when vout is v!");
	  rn_clone_to(test_rnn_transform_to_v_orig, test_rnn_transform_to_v);
  
  
	  //r22_invert(M)
	  var test_r22_invert_M = r22(2, 3, 4, 7),
	      test_r22_invert_solution = r22(7/2, -3/2, -2, 1);
	  assert_equalish(r22_invert(test_r22_invert_M), test_r22_invert_solution, "r22_invert() failed!");
	  //r33_invert(M)
	  var test_r33_invert_M = r33(4, 9, 2, 3, 5, 7, 8, 1, 6),
	      test_r33_invert_solution = r33(23/360, -13/90, 53/360, 19/180, 1/45, -11/180, -37/360, 17/90, -7/360);
	  assert_equalish(r33_invert(test_r33_invert_M), test_r33_invert_solution, "r33_invert() failed!");
	  //r44_invert(M)
	  var test_r44_invert_M = r44(-3, 2, 4, -2, 1, 7, 8, -8, -5, -7, -1, 3, 6, 5, -6, -4),
	      test_r44_invert_solution = r44(-163/428, 51/428, -11/214, -37/428, 141/428, -73/428, -43/214, 11/428, -137/856, 77/856, -25/428, -123/856, 69/856, -145/856, -103/428, -113/856);
	  assert_equalish(r44_invert(test_r44_invert_M), test_r44_invert_solution, "r44_invert() failed!");
	  //rnn_invert(M)
	  assert_equalish(rnn_invert(test_r22_invert_M), test_r22_invert_solution, "rnn_invert() failed on 2x2!");
	  assert_equalish(rnn_invert(test_r33_invert_M), test_r33_invert_solution, "rnn_invert() failed on 3x3!");
	  assert_equalish(rnn_invert(test_r44_invert_M), test_r44_invert_solution, "rnn_invert() failed on 4x4!");
  
	  //r22_invert_to(M, Mout)
	  var test_r22_invert_to_M_orig = r22(2, 3, 4, 7),
	      test_r22_invert_to_solution = r22(7/2, -3/2, -2, 1),
	      test_r22_invert_to_M = r22_clone(test_r22_invert_to_M_orig),
	      test_r22_invert_to_Mout = r22_zero();
	  assert_is(r22_invert_to(test_r22_invert_to_M, test_r22_invert_to_Mout), test_r22_invert_to_Mout, "r22_invert_to() is returning the wrong matrix!");
	  assert_equalish(test_r22_invert_to_Mout, test_r22_invert_to_solution, "r22_invert_to() failed!");
	  test_r22_invert_to_Mout = r22_zero();
	  assert_is(r22_invert_to(test_r22_invert_to_M, test_r22_invert_to_M), test_r22_invert_to_M, "r22_invert_to() is returning the wrong matrix when Mout is M!");
	  assert_equalish(test_r22_invert_to_M, test_r22_invert_to_solution, "r22_invert_to() failed when Mout is M!");
	  r22_clone_to(test_r22_invert_to_M_orig, test_r22_invert_to_M);
	  //r33_invert_to(M, Mout)
	  var test_r33_invert_to_M_orig = r33(4, 9, 2, 3, 5, 7, 8, 1, 6),
	      test_r33_invert_to_solution = r33(23/360, -13/90, 53/360, 19/180, 1/45, -11/180, -37/360, 17/90, -7/360),
	      test_r33_invert_to_M = r33_clone(test_r33_invert_to_M_orig),
	      test_r33_invert_to_Mout = r33_zero();
	  assert_is(r33_invert_to(test_r33_invert_to_M, test_r33_invert_to_Mout), test_r33_invert_to_Mout, "r33_invert_to() is returning the wrong matrix!");
	  assert_equalish(test_r33_invert_to_Mout, test_r33_invert_to_solution, "r33_invert_to() failed!");
	  test_r33_invert_to_Mout = r33_zero();
	  assert_is(r33_invert_to(test_r33_invert_to_M, test_r33_invert_to_M), test_r33_invert_to_M, "r33_invert_to() is returning the wrong matrix when Mout is M!");
	  assert_equalish(test_r33_invert_to_M, test_r33_invert_to_solution, "r33_invert_to() failed when Mout is M!");
	  r33_clone_to(test_r33_invert_to_M_orig, test_r33_invert_to_M);
	  //r44_invert_to(M, Mout)
	  var test_r44_invert_to_M_orig = r44(-3, 2, 4, -2, 1, 7, 8, -8, -5, -7, -1, 3, 6, 5, -6, -4),
	      test_r44_invert_to_solution = r44(-163/428, 51/428, -11/214, -37/428, 141/428, -73/428, -43/214, 11/428, -137/856, 77/856, -25/428, -123/856, 69/856, -145/856, -103/428, -113/856),
	      test_r44_invert_to_M = r44_clone(test_r44_invert_to_M_orig),
	      test_r44_invert_to_Mout = r44_zero();
	  assert_is(r44_invert_to(test_r44_invert_to_M, test_r44_invert_to_Mout), test_r44_invert_to_Mout, "r44_invert_to() is returning the wrong matrix!");
	  assert_equalish(test_r44_invert_to_Mout, test_r44_invert_to_solution, "r44_invert_to() failed!");
	  test_r44_invert_to_Mout = r44_zero();
	  assert_is(r44_invert_to(test_r44_invert_to_M, test_r44_invert_to_M), test_r44_invert_to_M, "r44_invert_to() is returning the wrong matrix when Mout is M!");
	  assert_equalish(test_r44_invert_to_M, test_r44_invert_to_solution, "r44_invert_to() failed when Mout is M!");
	  r44_clone_to(test_r44_invert_to_M_orig, test_r44_invert_to_M);
	  //rnn_invert_to(M, Mout)
	  var test_rnn_invert_to_M_orig = r44(-3, 2, 4, -2, 1, 7, 8, -8, -5, -7, -1, 3, 6, 5, -6, -4),
	      test_rnn_invert_to_solution = r44(-163/428, 51/428, -11/214, -37/428, 141/428, -73/428, -43/214, 11/428, -137/856, 77/856, -25/428, -123/856, 69/856, -145/856, -103/428, -113/856),
	      test_rnn_invert_to_M = rnn_clone(test_rnn_invert_to_M_orig),
	      test_rnn_invert_to_Mout = rnn_zero(4);
	  assert_is(rnn_invert_to(test_rnn_invert_to_M, test_rnn_invert_to_Mout), test_rnn_invert_to_Mout, "rnn_invert_to() is returning the wrong matrix!");
	  assert_equalish(test_rnn_invert_to_Mout, test_rnn_invert_to_solution, "rnn_invert_to() failed!");
	  test_rnn_invert_to_Mout = rnn_zero(4);
	  assert_is(rnn_invert_to(test_rnn_invert_to_M, test_rnn_invert_to_M), test_rnn_invert_to_M, "rnn_invert_to() is returning the wrong matrix when Mout is M!");
	  assert_equalish(test_rnn_invert_to_M, test_rnn_invert_to_solution, "rnn_invert_to() failed when Mout is M!");
	  rnn_clone_to(test_rnn_invert_to_M_orig, test_rnn_invert_to_M);
	  
	  
	  //r22_det(M)
	  var test_r22_det_M = r22(1, 2, 3, 4);
	  assert_equal(r22_det(test_r22_det_M), -2, "r22_det() failed!");
	  //r33_det(M)
	  var test_r33_det_M = r33(-2, -1, 2, 2, 1, 4, -3, 3, -1);
	  assert_equal(r33_det(test_r33_det_M), 54, "r33_det() failed!");
	  //r44_det(M)
	  var test_r44_det_M = r44(0, 1, 0, 2, 3, 0, 4, 0, 0, 5, 0, 6, 7, 0, 8, 0);
	  assert_equal(r44_det(test_r44_det_M), 16, "r44_det() failed!");
	  //rnn_det(M)
	  var test_rnn_det_M = rmn(5, 5,
		0, 1, 0, 2, 3,
		4, 0, 5, 0, 0,
		6, 7, 0, 0, 8,
		0, 9, 10, 11, 12,
		13, 0, 14, 15, 0
	  );
	  assert_equal(rnn_det(test_r22_det_M), -2, "rnn_det() failed on 2x2!");
	  assert_equal(rnn_det(test_r33_det_M), 54, "rnn_det() failed on 3x3!");
	  assert_equal(rnn_det(test_r44_det_M), 16, "rnn_det() failed on 4x4!");
	  assert_equal(rnn_det(test_rnn_det_M), 15621, "rnn_det() failed on 5x5!");
	  
	  //r22_tr(M)
	  var test_r22_tr_M = r22(1, 2, 3, 4);
	  assert_equal(r22_tr(test_r22_tr_M), 5, "r22_tr() failed!");
	  //r33_tr(M)
	  var test_r33_tr_M = r33(1, 2, 3, 4, 5, 6, 7, 8, 9);
	  assert_equal(r33_tr(test_r33_tr_M), 15, "r33_tr() failed!");
	  //r44_tr(M)
	  var test_r44_tr_M = r44(-1, -2, -3, -4, 5, 6, 7, 8, -9, -10, -11, -12, 13, 14, 15, 16);
	  assert_equal(r44_tr(test_r44_tr_M), 10, "r44_tr() failed!");
	  //rnn_tr(M)
	  var test_rnn_tr_M = rmn(5, 5,
		0, 1, 0, 2, 3,
		4, 0, 5, 0, 0,
		6, 7, 0, 0, 8,
		0, 9, 10, 11, 12,
		13, 0, 14, 15, -16
	  );
	  assert_equal(rnn_tr(test_r22_tr_M), 5, "rnn_tr() failed on 2x2!");
	  assert_equal(rnn_tr(test_r33_tr_M), 15, "rnn_tr() failed on 3x3!");
	  assert_equal(rnn_tr(test_r44_tr_M), 10, "rnn_tr() failed on 4x4!");
	  assert_equal(rnn_tr(test_rnn_tr_M), -5, "rnn_tr() failed on 5x5!");
  
	  //r22_encode_string(M)
	  var test_r22_encode_M = r22(3, -5, 13, -50),
	      test_r22_encode_solution = "3.00000000000000,-5.00000000000000;13.00000000000000,-50.00000000000000";
	  assert_equal(r22_encode_string(test_r22_encode_M), test_r22_encode_solution, "r22_encode_string() failed!");
	  //r33_encode_string(M)
	  var test_r33_encode_M = r33(3, -5, 13, -50, 5, 6, 7, 8, 9),
	      test_r33_encode_solution = "3.00000000000000,-5.00000000000000,13.00000000000000;-50.00000000000000,5.00000000000000,6.00000000000000;7.00000000000000,8.00000000000000,9.00000000000000";
	  assert_equal(r33_encode_string(test_r33_encode_M), test_r33_encode_solution, "r33_encode_string() failed!");
	  //r44_encode_string(M)
	  var test_r44_encode_M = r44(3, -5, 13, -50, 5, 6, 7, 8, 9, -10, -11, -12, -13, -14, -15, -16),
	      test_r44_encode_solution = "3.00000000000000,-5.00000000000000,13.00000000000000,-50.00000000000000;5.00000000000000,6.00000000000000,7.00000000000000,8.00000000000000;9.00000000000000,-10.00000000000000,-11.00000000000000,-12.00000000000000;-13.00000000000000,-14.00000000000000,-15.00000000000000,-16.00000000000000";
	  assert_equal(r44_encode_string(test_r44_encode_M), test_r44_encode_solution, "r44_encode_string() failed!");
	  //rmn_encode_string(M)
	  var test_rmn_encode_M = rmn(2, 3, -1, 2, -3, 4, -5, 6),
	      test_rmn_encode_solution = "-1.00000000000000,2.00000000000000,-3.00000000000000;4.00000000000000,-5.00000000000000,6.00000000000000";
	  assert_equal(rmn_encode_string(test_r22_encode_M), test_r22_encode_solution, "rmn_encode_string() failed on 2x2!");
	  assert_equal(rmn_encode_string(test_r33_encode_M), test_r33_encode_solution, "rmn_encode_string() failed on 3x3!");
	  assert_equal(rmn_encode_string(test_r44_encode_M), test_r44_encode_solution, "rmn_encode_string() failed on 4x4!");
	  assert_equal(rmn_encode_string(test_rmn_encode_M), test_rmn_encode_solution, "rmn_encode_string() failed on 2x3!");
	  //rnn_encode_string(M)
	  assert_equal(rnn_encode_string(test_r22_encode_M), test_r22_encode_solution, "rnn_encode_string() failed on 2x2!");
	  assert_equal(rnn_encode_string(test_r33_encode_M), test_r33_encode_solution, "rnn_encode_string() failed on 3x3!");
	  assert_equal(rnn_encode_string(test_r44_encode_M), test_r44_encode_solution, "rnn_encode_string() failed on 4x4!");
	  //r22_decode_string(str)
	  assert_equal(r22_decode_string(test_r22_encode_solution), test_r22_encode_M, "r22_decode_string() failed!");
	  //r33_decode_string(str)
	  assert_equal(r33_decode_string(test_r33_encode_solution), test_r33_encode_M, "r33_decode_string() failed!");
	  //r44_decode_string(str)
	  assert_equal(r44_decode_string(test_r44_encode_solution), test_r44_encode_M, "r44_decode_string() failed!");
	  //rmn_decode_string(str)
	  assert_equal(rmn_decode_string(test_r22_encode_solution), test_r22_encode_M, "rmn_decode_string() failed on 2x2!");
	  assert_equal(rmn_decode_string(test_r33_encode_solution), test_r33_encode_M, "rmn_decode_string() failed on 3x3!");
	  assert_equal(rmn_decode_string(test_r44_encode_solution), test_r44_encode_M, "rmn_decode_string() failed on 4x4!");
	  assert_equal(rmn_decode_string(test_rmn_encode_solution), test_rmn_encode_M, "rmn_decode_string() failed on 2x3!");
	  //rnn_decode_string(str)
	  assert_equal(rnn_decode_string(test_r22_encode_solution), test_r22_encode_M, "rnn_decode_string() failed on 2x2!");
	  assert_equal(rnn_decode_string(test_r33_encode_solution), test_r33_encode_M, "rnn_decode_string() failed on 3x3!");
	  assert_equal(rnn_decode_string(test_r44_encode_solution), test_r44_encode_M, "rnn_decode_string() failed on 4x4!");
	  //r22_decode_string_to(str, Mout)
	  var test_r22_decode_Mout = r22_zero();
	  assert_equal(r22_decode_string_to(test_r22_encode_solution, test_r22_decode_Mout), test_r22_encode_M, "r22_decode_string_to() failed!");
	  //r33_decode_string_to(str, Mout)
	  var test_r33_decode_Mout = r33_zero();
	  assert_equal(r33_decode_string_to(test_r33_encode_solution, test_r33_decode_Mout), test_r33_encode_M, "r33_decode_string_to() failed!");
	  //r44_decode_string_to(str, Mout)
	  var test_r44_decode_Mout = r44_zero();
	  assert_equal(r44_decode_string_to(test_r44_encode_solution, test_r44_decode_Mout), test_r44_encode_M, "r44_decode_string_to() failed!");
	  //rmn_decode_string_to(str, Mout)
	  var test_rmn_decode_Mout;
	  test_rmn_decode_Mout = 0; test_rmn_decode_Mout = r22_zero();
	  assert_equal(rmn_decode_string_to(test_r22_encode_solution, test_rmn_decode_Mout), test_r22_encode_M, "rmn_decode_string_to() failed on 2x2!");
	  test_rmn_decode_Mout = 0; test_rmn_decode_Mout = r33_zero();
	  assert_equal(rmn_decode_string_to(test_r33_encode_solution, test_rmn_decode_Mout), test_r33_encode_M, "rmn_decode_string_to() failed on 3x3!");
	  test_rmn_decode_Mout = 0; test_rmn_decode_Mout = r44_zero();
	  assert_equal(rmn_decode_string_to(test_r44_encode_solution, test_rmn_decode_Mout), test_r44_encode_M, "rmn_decode_string_to() failed on 4x4!");
	  test_rmn_decode_Mout = 0; test_rmn_decode_Mout = rmn_zero(2, 3);
	  assert_equal(rmn_decode_string_to(test_rmn_encode_solution, test_rmn_decode_Mout), test_rmn_encode_M, "rmn_decode_string_to() failed on 2x3!");
	  //rnn_decode_string_to(str, Mout)
	  var test_rnn_decode_Mout;
	  test_rnn_decode_Mout = 0; test_rnn_decode_Mout = r22_zero();
	  assert_equal(rnn_decode_string_to(test_r22_encode_solution, test_rnn_decode_Mout), test_r22_encode_M, "rnn_decode_string_to() failed on 2x2!");
	  test_rnn_decode_Mout = 0; test_rnn_decode_Mout = r33_zero();
	  assert_equal(rnn_decode_string_to(test_r33_encode_solution, test_rnn_decode_Mout), test_r33_encode_M, "rnn_decode_string_to() failed on 3x3!");
	  test_rnn_decode_Mout = 0; test_rnn_decode_Mout = r44_zero();
	  assert_equal(rnn_decode_string_to(test_r44_encode_solution, test_rnn_decode_Mout), test_r44_encode_M, "rnn_decode_string_to() failed on 4x4!");


	  //BUG 1.4.1711: Reading and writing f64 to buffers broken on HTML5
	  if (os_browser == browser_not_a_browser) {
	    //r22_encode_base64(M)
	    var test_r22_encode_base64_M_orig = r22(pi, exp(1), -pi, exp(-1)),
	        test_r22_encode_base64_M = r22_clone(test_r22_encode_base64_M_orig),
	        test_r22_encode_base64_Mout = r22_zero(),
	        test_r22_encode_base64_enc = r22_encode_base64(test_r22_encode_base64_M);
	    assert_equal(r22_decode_base64(test_r22_encode_base64_enc), test_r22_encode_base64_M_orig, "r22_encode_base64()-r22_decode_base64() roundtrip mismatch!");
	    assert_is(r22_decode_base64_to(test_r22_encode_base64_enc, test_r22_encode_base64_Mout), test_r22_encode_base64_Mout, "r22_decode_to_base64() returning wrong matrix!");
	    assert_equal(test_r22_encode_base64_Mout, test_r22_encode_base64_M_orig, "r22_encode_base64()-r22_decode_base64_to() roundtrip mismatch!");
	    //r33_encode_base64(M)
	    var test_r33_encode_base64_M_orig = r33(pi, exp(1), sqrt(3), -pi, exp(-1), -sqrt(5), 2*pi, 0, sqrt(7)),
	        test_r33_encode_base64_M = r33_clone(test_r33_encode_base64_M_orig),
	        test_r33_encode_base64_Mout = r33_zero(),
	        test_r33_encode_base64_enc = r33_encode_base64(test_r33_encode_base64_M);
	    assert_equal(r33_decode_base64(test_r33_encode_base64_enc), test_r33_encode_base64_M_orig, "r33_encode_base64()-r33_decode_base64() roundtrip mismatch!");
	    assert_is(r33_decode_base64_to(test_r33_encode_base64_enc, test_r33_encode_base64_Mout), test_r33_encode_base64_Mout, "r33_decode_to_base64() returning wrong matrix!");
	    assert_equal(test_r33_encode_base64_Mout, test_r33_encode_base64_M_orig, "r33_encode_base64()-r33_decode_base64_to() roundtrip mismatch!");
	    //r44_encode_base64(M)
	    var test_r44_encode_base64_M_orig = r44(pi, exp(1), sqrt(3), 1, -pi, exp(-1), -sqrt(5), 5, 2*pi, 0, sqrt(7), -7, -4*pi, exp(pi), sqrt(8), -8),
	        test_r44_encode_base64_M = r44_clone(test_r44_encode_base64_M_orig),
	        test_r44_encode_base64_Mout = r44_zero(),
	        test_r44_encode_base64_enc = r44_encode_base64(test_r44_encode_base64_M);
	    assert_equal(r44_decode_base64(test_r44_encode_base64_enc), test_r44_encode_base64_M_orig, "r44_encode_base64()-r44_decode_base64() roundtrip mismatch!");
	    assert_is(r44_decode_base64_to(test_r44_encode_base64_enc, test_r44_encode_base64_Mout), test_r44_encode_base64_Mout, "r44_decode_to_base64() returning wrong matrix!");
	    assert_equal(test_r44_encode_base64_Mout, test_r44_encode_base64_M_orig, "r44_encode_base64()-r44_decode_base64_to() roundtrip mismatch!");
	    //rmn_encode_base64(M)
	    var test_rmn_encode_base64_M_orig = rmn(2, 3, pi, exp(1), -583.385, -pi, exp(-1), 907.907),
	        test_rmn_encode_base64_M = rmn_clone(test_rmn_encode_base64_M_orig),
	        test_rmn_encode_base64_Mout = rmn_zero(2, 3),
	        test_rmn_encode_base64_enc = rmn_encode_base64(test_rmn_encode_base64_M);
	    assert_equal(rmn_decode_base64(test_rmn_encode_base64_enc, 2, 3), test_rmn_encode_base64_M_orig, "rmn_encode_base64()-rmn_decode_base64() roundtrip mismatch!");
	    assert_is(rmn_decode_base64_to(test_rmn_encode_base64_enc, 2, 3, test_rmn_encode_base64_Mout), test_rmn_encode_base64_Mout, "rmn_decode_to_base64() returning wrong matrix!");
	    assert_equal(test_rmn_encode_base64_Mout, test_rmn_encode_base64_M_orig, "rmn_encode_base64()-rmn_decode_base64_to() roundtrip mismatch!");
	    //rnn_encode_base64(M)
	    var test_rnn_encode_base64_M_orig = r44(pi, exp(1), sqrt(3), 583.583, -pi, exp(-1), -sqrt(5), 907.907, 2*pi, 0, sqrt(7), -371.373, -4*pi, exp(pi), sqrt(8), -8888.9999),
	        test_rnn_encode_base64_M = rnn_clone(test_rnn_encode_base64_M_orig),
	        test_rnn_encode_base64_Mout = rnn_zero(4),
	        test_rnn_encode_base64_enc = rnn_encode_base64(test_rnn_encode_base64_M);
	    assert_equal(rnn_decode_base64(test_rnn_encode_base64_enc, 4), test_rnn_encode_base64_M_orig, "rnn_encode_base64()-rnn_decode_base64() roundtrip mismatch!");
	    assert_is(rnn_decode_base64_to(test_rnn_encode_base64_enc, 4, test_rnn_encode_base64_Mout), test_rnn_encode_base64_Mout, "rnn_decode_to_base64() returning wrong matrix!");
	    assert_equal(test_rnn_encode_base64_Mout, test_rnn_encode_base64_M_orig, "rnn_encode_base64()-rnn_decode_base64_to() roundtrip mismatch!");
	  }
	}

	//r44_to_matrix(M, <MatOut>)
	var test_r44_to_matrix_out = matrix_build(0, 0, 0, 0, 0, 0, 0, 0, 0);
	assert_equal(r44_to_matrix(r44(2, 0, 0, 5, 0, 3, 0, 6, 0, 0, 4, 7, 0, 0, 0, 1)), matrix_build(5, 6, 7, 0, 0, 0, 2, 3, 4), "r44_to_matrix() failed!");
	assert_is(r44_to_matrix(r44(2, 0, 0, 7, 0, 3, 0, 8, 0, 0, 4, 9, 0, 0, 0, 1), test_r44_to_matrix_out), test_r44_to_matrix_out, "r44_to_matrix() with output mismatched!");
	assert_equal(test_r44_to_matrix_out, matrix_build(7, 8, 9, 0, 0, 0, 2, 3, 4), "r44_to_matrix() with output failed!");
	//matrix_to_r44(MatIn, <Mout>)
	var test_matrix_to_r44_mout = r44_zero();
	assert_equal(matrix_to_r44(matrix_build(5, 6, 7, 0, 0, 0, 2, 3, 4)), r44(2, 0, 0, 5, 0, 3, 0, 6, 0, 0, 4, 7, 0, 0, 0, 1), "matrix_to_r44() failed!");
	assert_is(matrix_to_r44(matrix_build(7, 8, 9, 0, 0, 0, 2, 3, 4), test_matrix_to_r44_mout), test_matrix_to_r44_mout, "matrix_to_r44() with output mismatched!");
	assert_equal(test_matrix_to_r44_mout, r44(2, 0, 0, 7, 0, 3, 0, 8, 0, 0, 4, 9, 0, 0, 0, 1), "matrix_to_r44() with output failed!");
}
// feather enable all
