///@func __gmlin_test_solution_operations__()
function __gmlin_test_solution_operations__() {
	var M, Mout; //Input and output matrices
	var b, v; //Reference and solution vector
	var ns; //Nullspace
	
	#region rmn_ref(M, <Mout>)
	// Zero matrix to self
	M = rnn_zero(3);
	assert_equal(rmn_ref(M, M), M, "rmn_ref zero matrix to self is not self!");
	assert_equal(M, rnn_zero(3), "rmn_ref zero matrix to self failed!");
	
	// Zero matrix to other
	M = rnn_zero(2);
	Mout = rnn_identity(2);
	assert_equal(rmn_ref(M, Mout), Mout, "rmn_ref zero matrix to other is not other!");
	assert_equal(Mout, rnn_zero(2), "rmn_ref zero matrix to other failed!");
	
	// 3x3 max rank
	M = [
		[1, 2, 3],
		[1, 4, 7],
		[1, 6, 10],
	];
	Mout = rmn_ref(M);
	for (var i = 0; i < 3; ++i) {
		for (var j = 0; j < 3; ++j) {
			if (i > j) {
				assert_equal(Mout[i][j], 0, "rmn_ref 3x3 max rank has unexpected 0 entry!");
			} else {
				assert_not_equal(Mout[i][j], 0, "rmn_ref 3x3 max rank has unexpected non-0 entry!");
			}
		}
	}
	
	// 3x3 deficient rank
	M = [
		[3, 6, -1],
		[2, 4, -2],
		[1, 2, -3],
	];
	Mout = rmn_ref(M);
	assert_equal([Mout[1][0], Mout[1][1]], [0, 0], "rmn_ref 3x3 deficient rank does not have expected zeros on second row!");
	assert_equal(Mout[2], [0, 0, 0], "rmn_ref 3x3 deficient rank has nonzero last row!");
	
	// 4x3 max rank
	M = [
		[1, 3, 5],
		[-1, 7, 12],
		[2, 10, 10],
		[0, 15, 19],
	];
	Mout = rmn_ref(M);
	assert_equal(Mout[1][0], 0, "rmn_ref 4x3 max rank does not have expected zero on second row!");
	assert_equal([Mout[2][0], Mout[2][1]], [0, 0], "rmn_ref 4x3 max rank does not have expected zeros on third row!");
	assert_equal(Mout[3], [0, 0, 0], "rmn_ref 4x3 max rank has nonzero last row!");
	
	// 4x3 deficient rank
	M = [
		[1, 5, 3],
		[-1, 10, -3],
		[2, 10, 6],
		[0, -10, 0],
	];
	Mout = rmn_ref(M);
	assert_equal(Mout[1][0], 0, "rmn_ref 4x3 deficient rank does not have expected zero on second row!");
	assert_equal(Mout[2], [0, 0, 0], "rmn_ref 4x3 deficient rank has nonzero third row!");
	assert_equal(Mout[3], [0, 0, 0], "rmn_ref 4x3 deficient rank has nonzero last row!");
	
	// 3x5 max rank
	M = [
		[1, 2, 3, 4, 5],
		[1, 3, 5, 7, 9],
		[1, 4, 6, 8, 11],
	];
	Mout = rmn_ref(M);
	assert_equal(Mout[1][0], 0, "rmn_ref 3x5 max rank does not have expected zeros on second row!");
	assert_equal([Mout[2][0], Mout[2][1]], [0, 0], "rmn_ref 3x5 max rank does not have expected zeros on third row!");
	
	// 3x5 deficient rank
	M = [
		[1, 2, 3, 4, 5],
		[1, 2, 3, 4, 9],
		[1, 2, 3, 4, 11],
	];
	Mout = rmn_ref(M);
	assert_equal([Mout[1][0], Mout[1][1], Mout[1][2], Mout[1][3]], [0, 0, 0, 0], "rmn_ref 3x5 deficient rank does not have expected zeros on second row!");
	assert_equal(Mout[2], [0, 0, 0, 0, 0], "rmn_ref 3x5 deficient rank has nonzero last row!");
	#endregion
	
	#region rmn_rref(M, <Mout>)
	// Zero matrix to self
	M = rnn_zero(3);
	assert_equal(rmn_rref(M, M), M, "rmn_rref zero matrix to self is not self!");
	assert_equal(M, rnn_zero(3), "rmn_rref zero matrix to self failed!");
	
	// Zero matrix to other
	M = rnn_zero(2);
	Mout = rnn_identity(2);
	assert_equal(rmn_rref(M, Mout), Mout, "rmn_rref zero matrix to other is not other!");
	assert_equal(Mout, rnn_zero(2), "rmn_rref zero matrix to other failed!");
	
	// 3x3 max rank
	M = [
		[1, 2, 3],
		[1, 4, 7],
		[1, 6, 10],
	];
	Mout = rmn_rref(M);
	assert_equal(Mout, rnn_identity(3), "rmn_rref 3x3 max rank failed!");
	
	// 3x3 deficient rank
	M = [
		[3, 6, -1],
		[2, 4, -2],
		[1, 2, -3],
	];
	Mout = rmn_rref(M);
	assert_equal(Mout, [
		[1, 2, 0],
		[0, 0, 1],
		[0, 0, 0],
	], "rmn_rref 3x3 deficient rank failed!");
	
	// 4x3 max rank
	M = [
		[1, 3, 5],
		[-1, 7, 12],
		[2, 10, 10],
		[0, 15, 19],
	];
	Mout = rmn_rref(M);
	assert_equal(Mout, [
		[1, 0, 0],
		[0, 1, 0],
		[0, 0, 1],
		[0, 0, 0],
	], "rmn_rref 4x3 max rank failed!");
	
	// 4x3 deficient rank
	M = [
		[1, 5, 3],
		[-1, 10, -3],
		[2, 10, 6],
		[0, -10, 0],
	];
	Mout = rmn_rref(M);
	assert_equal(Mout, [
		[1, 0, 3],
		[0, 1, 0],
		[0, 0, 0],
		[0, 0, 0],
	], "rmn_rref 4x3 deficient rank failed!");
	
	// 3x5 max rank
	M = [
		[1, 2, 3, 4, 5],
		[1, 3, 5, 7, 9],
		[1, 4, 6, 8, 11],
	];
	Mout = rmn_rref(M);
	assert_equal(Mout, [
		[1, 0, 0, 0, -1],
		[0, 1, 0, -1, 0],
		[0, 0, 1, 2, 2],
	], "rmn_rref 5x3 max rank failed!");
	
	// 3x5 deficient rank
	M = [
		[1, 2, 3, 4, 5],
		[1, 2, 3, 4, 9],
		[1, 2, 3, 4, 11],
	];
	Mout = rmn_rref(M);
	assert_equal(Mout, [
		[1, 2, 3, 4, 0],
		[0, 0, 0, 0, 1],
		[0, 0, 0, 0, 0],
	], "rmn_rref 5x3 deficient rank failed!");
	#endregion
	
	#region rmn_solve(M, b, <vout>, <nullspace>)
	// Zero matrix and vector
	M = rnn_zero(3);
	b = rn_zero(3);
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 2, "rmn_solve failed on zero matrix and vector 1");
	assert_equal(array_length(ns), 3, "rmn_solve gave wrong nullspace dimension on zero matrix and vector 1");
	assert_equal(v, [0, 0, 0], "rmn_solve gave wrong basis for zero matrix and vector 1");
	assert_contains(ns, [1, 0, 0], "rmn_solve missing solution 1 for zero matrix and vector 1");
	assert_contains(ns, [0, 1, 0], "rmn_solve missing solution 2 for zero matrix and vector 1");
	assert_contains(ns, [0, 0, 1], "rmn_solve missing solution 3 for zero matrix and vector 1");
	
	// Zero matrix and nonzero vector
	M = rnn_zero(3);
	b = [0, 0, 1];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 0, "rmn_solve failed on zero matrix and nonzero vector 1");
	
	// 3x3 max rank
	M = [
		[1, 2, 3],
		[1, 4, 7],
		[1, 6, 10],
	];
	b = [12, 28, 41];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 1, "rmn_solve 3x3 max rank failed");
	assert_equal(v, [-1, 2, 3], "rmn_solve 3x3 max rank returned wrong v");
	assert_equal(ns, [], "rmn_solve 3x3 max rank changed nullspace");
	
	// 3x3 deficient rank with solution
	M = [
		[3, 6, -1],
		[2, 4, -2],
		[1, 2, -3],
	];
	b = [-7, -6, -5];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 2, "rmn_solve 3x3 deficient rank failed");
	assert_equal(v, [-2, 0, 1], "rmn_solve 3x3 deficient rank returned wrong v");
	assert_equal(array_length(ns), 1, "rmn_solve 3x3 deficient rank has wrong nullity");
	assert_equal(rmn_transform(M, rn_add(v, ns[0])), b, "rmn_solve 3x3 deficient rank nullspace is invalid");
	
	// 3x3 deficient rank with no solution
	M = [
		[3, 6, -1],
		[2, 4, -2],
		[1, 2, -3],
	];
	b = [-7, -6, 0];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 0, "rmn_solve 3x3 deficient rank no solution failed");
	assert_equal(v, rn_zero(3), "rmn_solve 3x3 deficient rank no solution changed v");
	assert_equal(array_length(ns), 0, "rmn_solve 3x3 deficient rank no solution changed nullspace");
	
	// 4x3 max rank with solution
	M = [
		[1, 3, 5],
		[-1, 7, 12],
		[2, 10, 10],
		[0, 15, 19],
	];
	b = [-13, -34, -38, -64];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 1, "rmn_solve 4x3 max rank with solution failed");
	assert_equal(v, [1, -3, -1], "rmn_solve 4x3 max rank with solution returned wrong basis");
	assert_equal(array_length(ns), 0, "rmn_solve 4x3 max rank with solution wrong nullity");
	
	// 4x3 deficient rank with solution
	M = [
		[1, 5, 3],
		[-1, 10, -3],
		[2, 10, 6],
		[0, -10, 0],
	];
	b = [-13, -34, -38, -65];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 0, "rmn_solve 4x3 max rank no solution failed");
	assert_equal(v, rn_zero(3), "rmn_solve 4x3 max rank no solution changed v");
	assert_equal(array_length(ns), 0, "rmn_solve 4x3 max rank no solution changed nullspace");
	
	// 4x3 deficient rank with solution
	M = [
		[1, 5, 3],
		[-1, 10, -3],
		[2, 10, 6],
		[0, -10, 0],
	];
	b = [-17, -28, -34, 30];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 2, "rmn_solve 4x3 deficient rank with solution failed");
	assert_equal(v, [-2, -3, 0], "rmn_solve 4x3 deficient rank with solution returned wrong basis");
	assert_equal(array_length(ns), 1, "rmn_solve 4x3 deficient rank with solution wrong nullity");
	assert_equal(rmn_transform(M, rn_add(v, ns[0])), b, "rmn_solve 4x3 deficient rank nullspace is invalid");
	
	// 4x3 deficient rank with no solution
	M = [
		[1, 5, 3],
		[-1, 10, -3],
		[2, 10, 6],
		[0, -10, 0],
	];
	b = [1, 15, 0, 15];
	v = rn_zero(3);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 0, "rmn_solve 4x3 deficient rank with no solution failed");
	assert_equal(v, rn_zero(3), "rmn_solve 4x3 deficient rank no solution changed v");
	assert_equal(array_length(ns), 0, "rmn_solve 4x3 deficient rank no solution changed nullspace");
	
	// 3x5 max rank with solution
	M = [
		[1, 2, 3, 4, 5],
		[1, 3, 5, 7, 9],
		[1, 4, 6, 8, 11],
	];
	b = [-10, -20, -24];
	v = rn_zero(5);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 2, "rmn_solve 3x5 max rank with solution failed");
	assert_equal(v, [4, 2, -6, 0, 0], "rmn_solve 3x5 max rank with solution returned wrong basis");
	assert_equal(array_length(ns), 2, "rmn_solve 3x5 max rank with solution wrong nullity");
	assert_equal(rmn_transform(M, rn_add(rn_add(v, ns[0]), ns[1])), b, "rmn_solve 3x5 max rank nullspace is invalid");
	
	// 3x5 deficient rank with solution
	M = [
		[1, 2, 3, 4, 5],
		[1, 2, 3, 4, 9],
		[1, 2, 3, 4, 11],
	];
	b = [10, 18, 22];
	v = rn_zero(5);
	ns = [];
	assert_equal(rmn_solve(M, b, v, ns), 2, "rmn_solve 3x5 deficient rank with solution failed");
	assert_equal(v, [0, 0, 0, 0, 2], "rmn_solve 3x5 deficient rank with solution returned wrong basis");
	assert_equal(array_length(ns), 3, "rmn_solve 3x5 deficient rank with solution wrong nullity");
	assert_equal(rmn_transform(M, rn_add(rn_add(rn_add(v, ns[0]), ns[1]), ns[2])), b, "rmn_solve 3x5 deficient rank nullspace is invalid");
	#endregion
}
