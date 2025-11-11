/// Module: testing
module testing::testing;

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

public fun sum(a: u8, b: u8): u8 {
    a + b
}

public fun compare(a: u8, b: u8): bool {
    let compare = a+b;

    let test = sum(a, b);
    if (compare == test) {
        true
    } else {
        false
    }
}

#[test]
fun simple_test() {
    let sum = 2 + 2;
    assert!(sum == 4);
}
