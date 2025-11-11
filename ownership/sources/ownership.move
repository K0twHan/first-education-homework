/// Module: ownership
module ownership::ownership;

public struct FirstObject has key, store {
    id: UID,
    value: u8,
}

public fun create_object(_ctx: &mut TxContext, val: u8): FirstObject {
    FirstObject {
        id: object::new(_ctx),
        value: val,
    }
}

entry fun create(val: u8, _ctx: &mut TxContext) {
    let _obj = create_object(_ctx, val);
    transfer::transfer(_obj, tx_context::sender(_ctx))
}

public entry fun create_immutable(val: u8, _ctx: &mut TxContext) {
    let obj = create_object(_ctx, val);
    transfer::freeze_object(obj);
}

public entry fun create_shared(val: u8, _ctx: &mut TxContext) {
    let obj = create_object(_ctx, val);
    transfer::share_object(obj);
}
