/*
#[test_only]
module testing::testing_tests;
// uncomment this line to import the module
// use testing::testing;

const ENotImplemented: u64 = 0;

#[test]
fun test_testing() {
    // pass
}

#[test, expected_failure(abort_code = ::testing::testing_tests::ENotImplemented)]
fun test_testing_fail() {
    abort ENotImplemented
}
*/

#[test_only]
module testing::testing_tests;

use testing::testing;

const ENotImplemented: u64 = 0;

#[test]
fun test_testing() {
    let a = 3;
    let b = 4;
    let result = testing::sum(a, b);
    assert!(result == 7);
}

#[test, expected_failure(abort_code = ::testing::testing_tests::ENotImplemented)]
fun test_testing_fail() {
    abort ENotImplemented
}

#[test]
fun test_compare(): bool {
    let a = 5;
    let b = 10;
    testing::compare(a, b);
    let result = testing::sum(a, b);
    let compare = a + b;
    assert!(testing::compare(a, b) && result == compare);
    true
}
