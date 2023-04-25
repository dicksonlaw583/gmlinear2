/// @description gmlin_test_all()
function gmlin_test_all() {
	global.__test_fails__ = 0;
	var timeA, timeB;
	timeA = current_time;

	/** START TESTS HERE **/
	__gmlin_test_constructors__();
	__gmlin_test_vector_operations__();
	__gmlin_test_matrix_operations__();
	__gmlin_test_decomposition_operations__();
	__gmlin_test_solution_operations__();
	/** END TESTS HERE **/

	timeB = current_time;
	show_debug_message("GMLinear tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}
