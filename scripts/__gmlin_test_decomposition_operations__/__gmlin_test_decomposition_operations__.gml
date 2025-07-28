///@func __gmlin_test_decomposition_operations__()
function __gmlin_test_decomposition_operations__() {
	//Feather disable GM2023
	///Feather disable GM2044
	#region rmn_qr(M, Q, R)
	// QR decomposition 1
	var M = [
		[12, -51, 4],
		[6, 167, -68],
		[-4, 24, -41]
	];
	var Q = rnn_identity(3);
	var R = rnn_zero(3);
	rmn_qr(M, Q, R);
	assert_equalish(rmn_multiply(Q, R), M, "QR decomposition 1 mismatch");
	assert_equalish(rmn_multiply(rmn_transpose(Q), Q), rnn_identity(3), "QR decomposition 1 non-orthogonal Q");
	assert_equalish([R[1][0], R[2][0], R[2][1]], [0, 0, 0], "QR decomposition 1 non-upper-triangular R");
	
	// QR decomposition 2
	var M = [
		[3, 4, 5, 6],
		[7, 8, 9, 10],
		[11, 12, 13, 14],
	];
	var Q = rnn_identity(3);
	var R = rmn_zero(3, 4);
	rmn_qr(M, Q, R);
	assert_equalish(rmn_multiply(Q, R), M, "QR decomposition 2 mismatch");
	assert_equalish(rmn_multiply(rmn_transpose(Q), Q), rnn_identity(3), "QR decomposition 2 non-orthogonal Q");
	assert_equalish([R[1][0], R[2][0], R[2][1]], [0, 0, 0], "QR decomposition 2 non-upper-triangular R");
	
	// QR decomposition 3
	var M = [
		[8, 4, 1],
		[9, 2, 6],
		[11, 7, 3],
		[15, 20, 4],
		[20, 17, 10]
	];
	var Q = rnn_identity(5);
	var R = rmn_zero(5, 3);
	rmn_qr(M, Q, R);
	assert_equalish(rmn_multiply(Q, R), M, "QR decomposition 3 mismatch");
	assert_equalish(rmn_multiply(rmn_transpose(Q), Q), rnn_identity(5), "QR decomposition 3 non-orthogonal Q");
	assert_equalish([R[1][0], R[2][0], R[2][1], R[3][0], R[3][1], R[3][2], R[4][0], R[4][1], R[4][2]], [0, 0, 0, 0, 0, 0, 0, 0, 0], "QR decomposition 3 non-upper-triangular R");
	#endregion
	
	#region rnn_lu(M, L, U)
	// LU decomposition 1
	var M = [
		[2, 2, 3],
		[12, 16, 20],
		[6, 14, 14]
	];
	var L = rnn_zero(3);
	var U = rnn_zero(3);
	assert(rnn_lu(M, L, U), "LU decomposition 1 should succeed");
	assert_equalish(rnn_multiply(L, U), M, "LU decomposition 1 mismatch");
	assert_equalish([L[0][1], L[0][2], L[1][2]], [0, 0, 0], "LU decomposition 1 non-lower-triangular L");
	assert_equalish([U[1][0], U[2][0], U[2][1]], [0, 0, 0], "LU decomposition 1 non-upper-triangular U");
	
	// LU decomposition 2
	var M = [
		[1, 2, 3],
		[2, 4, 5],
		[3, 6, 9]
	];
	var L = rnn_zero(3);
	var U = rnn_zero(3);
	assert_fail(rnn_lu(M, L, U), "LU decomposition 2 should fail");
	#endregion
	
	#region rnn_palu(M, P, L, U)
	// PA=LU decomposition 1
	var M = [
		[3, 2, 6, 5],
		[4, -10, 2, 7],
		[-2, 6, 9, 2],
		[-5, 17, 1, 3]
	]
	var P = rnn_zero(4);
	var L = rnn_zero(4);
	var U = rnn_zero(4);
	rnn_palu(M, P, L, U);
	assert_equal(rnn_multiply(P, M), rnn_multiply(L, U), "PA=LU decomposition 1 mismatch between PA and LU");
	assert_equalish([L[0][1], L[0][2], L[0][3], L[1][2], L[1][3], L[2][3]], [0, 0, 0, 0, 0, 0], "PA=LU decomposition 1 non-lower-triangular L");
	assert_equalish([U[1][0], U[2][0], U[2][1], U[3][0], U[3][1], U[3][2]], [0, 0, 0, 0, 0, 0], "PA=LU decomposition 1 non-upper-triangular U");
	#endregion

	#region rmn_solve_qr(Q, R, b, [vout])
	// rmn_solve_qr 1
	var M = [
		[4, 9, 2],
		[3, 5, 7],
		[8, 1, 6]
	];
	var Q = rnn_zero(3);
	var R = rnn_zero(3);
	var b = [43, 49, 43];
	var v = rn_zero(3);
	rmn_qr(M, Q, R);
	assert_equal(rmn_solve_qr(Q, R, b, v), [2, 3, 4], "rmn_solve_qr 1a failed!");
	assert_equal(v, [2, 3, 4], "rmn_solve_qr 1b failed!");
	#endregion
	
	#region rnn_solve_lu(L, U, b, [vout])
	// rnn_solve_lu 1
	var M = [
		[4, 9, 2],
		[3, 5, 7],
		[8, 1, 6]
	];
	var L = rnn_zero(3);
	var U = rnn_zero(3);
	var b = [43, 49, 43];
	var v = rn_zero(3);
	rnn_lu(M, L, U);
	assert_equal(rnn_solve_lu(L, U, b, v), [2, 3, 4], "rnn_solve_lu 1a failed!");
	assert_equal(v, [2, 3, 4], "rnn_solve_lu 1b failed!");
	#endregion
	
	#region rnn_solve_palu(P, L, U, b, [vout])
	// rnn_solve_palu 1
	var M = [
		[4, 9, 2],
		[3, 5, 7],
		[8, 1, 6]
	];
	var P = rnn_identity(3);
	var L = rnn_zero(3);
	var U = rnn_zero(3);
	var b = [43, 49, 43];
	var v = rn_zero(3);
	rnn_palu(M, P, L, U);
	assert_equal(rnn_solve_palu(P, L, U, b, v), [2, 3, 4], "rnn_solve_palu 1a failed!");
	assert_equal(v, [2, 3, 4], "rnn_solve_palu 1b failed!");
	#endregion
	//Feather enable GM2023
	///Feather enable GM2044
}