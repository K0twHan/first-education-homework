/// Module: functions
module functions::functions;

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

use std::ascii::String;


fun init(_ctx: &mut TxContext) {
    let _ = _ctx;
}

public fun sum_values(a: u8, b: u8): u16 {
    let result: u16 = (a as u16) + (b as u16);
    result
}

public fun greetings(_name: String): String {
 std::ascii::string("Hi")
}

public fun  check(a : u8) : bool {
    if (a % 2 == 0) {
        false
    } else {
        true
    }
}
