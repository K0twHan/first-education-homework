
#[test_only]
module functions::functions_tests;
//uncomment this line to import the module
use functions::functions;

const ENotImplemented: u64 = 0;

#[test]
// fun test_functions() {
//     // pass
// }

 fun test_sum_values() {
    let result = functions::sum_values(10, 20);
    assert!(result == 30, 1);
}

#[test]
fun test_greetings() {
    let message = functions::greetings(std::ascii::string("Alice"));
    assert!(message == std::ascii::string("Hi"), 2);
}
#[test]
 fun test_greetings_empty_name() {
    let message = functions::greetings(std::ascii::string(""));
    assert!(message == std::ascii::string("Hi"), 3);
}

#[test]
 fun test_check_even() {
    let is_odd = functions::check(4);
    assert!(!is_odd, 4);
}

#[test]
fun test_check_odd() {
    let is_odd = functions::check(5);
    assert!(is_odd, 5);
}

#[test, expected_failure(abort_code = ::functions::functions_tests::ENotImplemented)]
fun test_functions_fail() {
    abort ENotImplemented
}


