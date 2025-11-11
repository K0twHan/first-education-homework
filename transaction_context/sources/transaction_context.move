/// Module: transaction_context
module transaction_context::transaction_context;

public fun public_fun(ctx: TxContext): u64 {
    let timefor_ctx = ctx; //TODO
    let timestamp = timefor_ctx.epoch_timestamp_ms();
    timestamp
}
