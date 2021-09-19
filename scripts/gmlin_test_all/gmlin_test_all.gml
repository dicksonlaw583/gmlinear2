/// @description gmlin_test_all()
function gmlin_test_all() {
	{
	  var timeA, timeB;
	  global.__gmlinear_test_failed__ = false;
	  timeA = current_time;
  
	  /** START TESTS HERE **/
	  __gmlin_test_constructors__();
	  __gmlin_test_vector_operations__();
	  __gmlin_test_matrix_operations__();
	  /** END TESTS HERE **/
  
	  timeB = current_time;
	  if (global.__gmlinear_test_failed__) {
	    show_debug_message("GMLinear: Tests failed!");
	    if (os_browser == browser_not_a_browser) {
	      game_end();  
	    }
	    else {
	      __background_set_colour( c_red );
	    }
	  }
	  else {
	    show_debug_message("GMLinear: Tests completed in " + string(timeB-timeA) + "ms.");
	    if (os_browser == browser_not_a_browser) {
	      game_end();
	    }
	    else {
	      __background_set_colour( c_green );
	    }
	  }
	}



}
