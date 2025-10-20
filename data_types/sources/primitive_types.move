
/// Module: primitive_types
module primitive_types::primitive_types;


// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions



use std::string::String;
use std::ascii::string;

public struct Person has key,store {
    id: UID,
    name: String,
    age: u8,
    is_student: bool,
}

fun init(_ctx: &mut TxContext) {
    let _ = _ctx;
    let _person = Person {
        id: object::new(_ctx),
        name: std::ascii::string("selam"),
        age: 25,
        is_student: false,
    };
}