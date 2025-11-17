const std = @import("std");

pub fn primes(buffer: []u32, comptime limit: u12) []u32 {
    var prime_mask = std.StaticBitSet(limit+1).initFull();
    prime_mask.unset(0);
    prime_mask.unset(1);
    for (2..limit+1) |i| {
        if (!prime_mask.isSet(i))
            continue;
        var j: u32 = @truncate(i*i);
        while (j <= limit) : (j += @truncate(i)) {
            prime_mask.unset(j);
        }
    }
    var prime_idx: u32 = 0;
    for (2..limit+1) |i| {
        if (!prime_mask.isSet(i))
            continue;
        buffer[prime_idx] = @truncate(i);
        prime_idx+=1;
    }
    return buffer[0..prime_idx];
}
