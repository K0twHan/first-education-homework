/// Module: visibility
module visibility::visibility;

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

public fun public_fun() {}

fun private_fun() {
    let a = 1;
    let b = a + 1;
    a+b;
}

entry fun entry_fun() {
    private_fun();
}
