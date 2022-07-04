//Feather disable all
function __gmlin_test_constructors__() {
	{
	  //r2(x, y)
	  var test_r2;
	  test_r2[0] = 5;
	  test_r2[1] = 9;
	  assert_equal(r2(5, 9), test_r2, "r2() failed!");
  
	  //r2_zero()
	  var test_r2_zero;
	  test_r2_zero[0] = 0;
	  test_r2_zero[1] = 0;
	  assert_equal(r2_zero(), test_r2_zero, "r2_zero() failed!");
  
	  //r3(x, y, z)
	  var test_r3;
	  test_r3[0] = 9;
	  test_r3[1] = 0;
	  test_r3[2] = 7;
	  assert_equal(r3(9, 0, 7), test_r3, "r3() failed!");
  
	  //r3_zero()
	  var test_r3_zero;
	  test_r3_zero[0] = 0;
	  test_r3_zero[1] = 0;
	  test_r3_zero[2] = 0;
	  assert_equal(r3_zero(), test_r3_zero, "r3_zero() failed!");
  
	  //r4(x, y, z, w)
	  var test_r4;
	  test_r4[0] = 2;
	  test_r4[1] = 7;
	  test_r4[2] = 6;
	  test_r4[3] = 3;
	  assert_equal(r4(2, 7, 6, 3), test_r4, "r4() failed!");
  
	  //r4_zero()
	  var test_r4_zero;
	  test_r4_zero[0] = 0;
	  test_r4_zero[1] = 0;
	  test_r4_zero[2] = 0;
	  test_r4_zero[3] = 0;
	  assert_equal(r4_zero(), test_r4_zero, "r4_zero() failed!");
  
	  //rn(...)
	  assert_equal(rn(5, 9), test_r2, "rn() as 2D failed!");
	  assert_equal(rn(9, 0, 7), test_r3, "rn() as 3D failed!");
	  assert_equal(rn(2, 7, 6, 3), test_r4, "rn() as 4D failed!");
	  var test_rn;
	  test_rn[0] = 0;
	  test_rn[1] = 2;
	  test_rn[2] = 4;
	  test_rn[3] = 6;
	  test_rn[4] = 8;
	  test_rn[5] = 10;
	  assert_equal(rn(0, 2, 4, 6, 8, 10), test_rn, "rn() as 6D failed!");
  
	  //rn_zero()
	  var test_rn_zero;
	  test_rn_zero[0] = 0;
	  test_rn_zero[1] = 0;
	  test_rn_zero[2] = 0;
	  test_rn_zero[3] = 0;
	  test_rn_zero[4] = 0;
	  test_rn_zero[5] = 0;
	  assert_equal(rn_zero(6), test_rn_zero, "rn_zero() as 6D failed!");
  
	  //r22(x00, x01, x10, x11)
	  var test_r22;
	  test_r22[0, 0] = 31;
	  test_r22[0, 1] = 62;
	  test_r22[1, 0] = 42;
	  test_r22[1, 1] = 84;
	  assert_equal(r22(31, 62, 42, 84), test_r22, "r22() failed!");
  
	  //r22_identity()
	  var test_r22_identity;
	  test_r22_identity[0, 0] = 1;
	  test_r22_identity[0, 1] = 0;
	  test_r22_identity[1, 0] = 0;
	  test_r22_identity[1, 1] = 1;
	  assert_equal(r22_identity(), test_r22_identity, "r22_identity() failed!");
  
	  //r22_zero()
	  var test_r22_zero;
	  test_r22_zero[0, 0] = 0;
	  test_r22_zero[0, 1] = 0;
	  test_r22_zero[1, 0] = 0;
	  test_r22_zero[1, 1] = 0;
	  assert_equal(r22_zero(), test_r22_zero, "r22_zero() failed!");
  
	  //r33(x00, x01, x02, x10, x11, x12, x20, x21, x22)
	  var test_r33;
	  test_r33[0, 0] = 23;
	  test_r33[0, 1] = 46;
	  test_r33[0, 2] = 69;
	  test_r33[1, 0] = 17;
	  test_r33[1, 1] = 34;
	  test_r33[1, 2] = 51;
	  test_r33[2, 0] = 29;
	  test_r33[2, 1] = 58;
	  test_r33[2, 2] = 87;
	  assert_equal(r33(23, 46, 69, 17, 34, 51, 29, 58, 87), test_r33, "r33() failed!");
  
	  //r33_identity()
	  var test_r33_identity;
	  test_r33_identity[0, 0] = 1;
	  test_r33_identity[0, 1] = 0;
	  test_r33_identity[0, 2] = 0;
	  test_r33_identity[1, 0] = 0;
	  test_r33_identity[1, 1] = 1;
	  test_r33_identity[1, 2] = 0;
	  test_r33_identity[2, 0] = 0;
	  test_r33_identity[2, 1] = 0;
	  test_r33_identity[2, 2] = 1;
	  assert_equal(r33_identity(), test_r33_identity, "r33_identity() failed!");
  
	  //r33_zero()
	  var test_r33_zero;
	  test_r33_zero[0, 0] = 0;
	  test_r33_zero[0, 1] = 0;
	  test_r33_zero[0, 2] = 0;
	  test_r33_zero[1, 0] = 0;
	  test_r33_zero[1, 1] = 0;
	  test_r33_zero[1, 2] = 0;
	  test_r33_zero[2, 0] = 0;
	  test_r33_zero[2, 1] = 0;
	  test_r33_zero[2, 2] = 0;
	  assert_equal(r33_zero(), test_r33_zero, "r33_zero() failed!");
  
	  //r44(x00, x01, x02, x03, x10, x11, x12, x13, x20, x21, x22, x23, x30, x31, x32, x33)
	  var test_r44;
	  test_r44[0, 0] = 14;
	  test_r44[0, 1] = 28;
	  test_r44[0, 2] = 42;
	  test_r44[0, 3] = 56;
	  test_r44[1, 0] = 21;
	  test_r44[1, 1] = 42;
	  test_r44[1, 2] = 63;
	  test_r44[1, 3] = 84;
	  test_r44[2, 0] = 37;
	  test_r44[2, 1] = 74;
	  test_r44[2, 2] = 111;
	  test_r44[2, 3] = 148;
	  test_r44[3, 0] = 59;
	  test_r44[3, 1] = 118;
	  test_r44[3, 2] = 177;
	  test_r44[3, 3] = 236;
	  assert_equal(r44(14, 28, 42, 56, 21, 42, 63, 84, 37, 74, 111, 148, 59, 118, 177, 236), test_r44, "r44() failed!");
  
	  //r44_identity()
	  var test_r44_identity;
	  test_r44_identity[0, 0] = 1;
	  test_r44_identity[0, 1] = 0;
	  test_r44_identity[0, 2] = 0;
	  test_r44_identity[0, 3] = 0;
	  test_r44_identity[1, 0] = 0;
	  test_r44_identity[1, 1] = 1;
	  test_r44_identity[1, 2] = 0;
	  test_r44_identity[1, 3] = 0;
	  test_r44_identity[2, 0] = 0;
	  test_r44_identity[2, 1] = 0;
	  test_r44_identity[2, 2] = 1;
	  test_r44_identity[2, 3] = 0;
	  test_r44_identity[3, 0] = 0;
	  test_r44_identity[3, 1] = 0;
	  test_r44_identity[3, 2] = 0;
	  test_r44_identity[3, 3] = 1;
	  assert_equal(r44_identity(), test_r44_identity, "r44_identity() failed!");
  
	  //r44_zero()
	  var test_r44_zero;
	  test_r44_zero[0, 0] = 0;
	  test_r44_zero[0, 1] = 0;
	  test_r44_zero[0, 2] = 0;
	  test_r44_zero[0, 3] = 0;
	  test_r44_zero[1, 0] = 0;
	  test_r44_zero[1, 1] = 0;
	  test_r44_zero[1, 2] = 0;
	  test_r44_zero[1, 3] = 0;
	  test_r44_zero[2, 0] = 0;
	  test_r44_zero[2, 1] = 0;
	  test_r44_zero[2, 2] = 0;
	  test_r44_zero[2, 3] = 0;
	  test_r44_zero[3, 0] = 0;
	  test_r44_zero[3, 1] = 0;
	  test_r44_zero[3, 2] = 0;
	  test_r44_zero[3, 3] = 0;
	  assert_equal(r44_zero(), test_r44_zero, "r44_zero() failed!");
  
	  //rmn(...)
	  var test_rmn;
	  test_rmn[0, 0] = 2;
	  test_rmn[0, 1] = 4;
	  test_rmn[1, 0] = 3;
	  test_rmn[1, 1] = 6;
	  test_rmn[2, 0] = 5;
	  test_rmn[2, 1] = 10;
	  test_rmn[3, 0] = 7;
	  test_rmn[3, 1] = 14;
	  test_rmn[4, 0] = 11;
	  test_rmn[4, 1] = 22;
	  test_rmn[5, 0] = 13;
	  test_rmn[5, 1] = 26;
	  test_rmn[6, 0] = 17;
	  test_rmn[6, 1] = 34;
	  assert_equal(rmn(7, 2, 2, 4, 3, 6, 5, 10, 7, 14, 11, 22, 13, 26, 17, 34), test_rmn, "rmn() as 7x2 failed!");
  
	  //rmn_zero(m, n)
	  var test_rmn_zero;
	  test_rmn_zero[0, 0] = 0;
	  test_rmn_zero[0, 1] = 0;
	  test_rmn_zero[0, 2] = 0;
	  test_rmn_zero[0, 3] = 0;
	  test_rmn_zero[1, 0] = 0;
	  test_rmn_zero[1, 1] = 0;
	  test_rmn_zero[1, 2] = 0;
	  test_rmn_zero[1, 3] = 0;
	  test_rmn_zero[2, 0] = 0;
	  test_rmn_zero[2, 1] = 0;
	  test_rmn_zero[2, 2] = 0;
	  test_rmn_zero[2, 3] = 0;
	  assert_equal(rmn_zero(3, 4), test_rmn_zero, "rmn_zero() failed!");
  
	  //rnn(...)
	  var test_rnn_11;
	  test_rnn_11[0, 0] = 42;
	  assert_equal(rnn(42), test_rnn_11, "rnn() failed at 1x1!");
	  assert_equal(rnn(31, 62, 42, 84), test_r22, "rnn() failed at 2x2!");
	  assert_equal(rnn(23, 46, 69, 17, 34, 51, 29, 58, 87), test_r33, "rnn() failed at 3x3!");
	  assert_equal(rnn(14, 28, 42, 56, 21, 42, 63, 84, 37, 74, 111, 148, 59, 118, 177, 236), test_r44, "rnn() failed 4x4!");
  
	  //rnn_zero(n)
	  var test_rnn_zero;
	  test_rnn_zero[0, 0] = 0;
	  test_rnn_zero[0, 1] = 0;
	  test_rnn_zero[0, 2] = 0;
	  test_rnn_zero[1, 0] = 0;
	  test_rnn_zero[1, 1] = 0;
	  test_rnn_zero[1, 2] = 0;
	  test_rnn_zero[2, 0] = 0;
	  test_rnn_zero[2, 1] = 0;
	  test_rnn_zero[2, 2] = 0;
	  assert_equal(rnn_zero(3), test_rnn_zero, "rnn_zero() failed!");
  
	  //rnn_identity(n)
	  var test_rnn_identity;
	  test_rnn_identity[0, 0] = 1;
	  test_rnn_identity[0, 1] = 0;
	  test_rnn_identity[0, 2] = 0;
	  test_rnn_identity[1, 0] = 0;
	  test_rnn_identity[1, 1] = 1;
	  test_rnn_identity[1, 2] = 0;
	  test_rnn_identity[2, 0] = 0;
	  test_rnn_identity[2, 1] = 0;
	  test_rnn_identity[2, 2] = 1;
	  assert_equal(rnn_identity(3), test_rnn_identity, "rnn_identity() failed!");
	  assert_equal(rnn_identity(2), test_r22_identity, "rnn_identity() failed on 2x2!");
	  assert_equal(rnn_identity(3), test_r33_identity, "rnn_identity() failed on 3x3!");
	  assert_equal(rnn_identity(4), test_r44_identity, "rnn_identity() failed on 4x4!");
	}



}
// Feather enable all