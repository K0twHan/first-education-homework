/// Module: build
module build::build;

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

fun init(_ctx: &mut TxContext) {
    let _ = _ctx;
}

public struct Capability has store {}

public fun init_with_capability(_ctx: &mut TxContext, capability: &mut Capability) {
    let _ = _ctx;
    let _ = capability;
}
