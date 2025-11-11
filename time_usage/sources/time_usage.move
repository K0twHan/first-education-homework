/// Module: time_usage
module time_usage::time_usage;

use sui::clock;

public fun compare(clock: &mut clock::Clock, _ctx: &mut TxContext): bool {
    let time1 = tx_context::epoch_timestamp_ms(_ctx);
    let time2 = clock.timestamp_ms();
    if (time1 == time2) {
        true
    } else {
        false
    }
}

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions
