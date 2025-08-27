/// Module: build
module build::build;

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

fun init(ctx: &mut TxContext) {
    let _ = ctx;
}

fun init_with_capability(ctx: &mut TxContext, capability: &mut Capability) {
    let _ = ctx;
    let _ = capability;
}
