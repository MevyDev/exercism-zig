const std = @import("std");
const mem = std.mem;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    var map = std.AutoHashMap(u32, void).init(allocator);
    defer map.deinit();
    for (factors) |factor| {
        if (factor <= 0)
            continue;
        var cur = factor;
        while (cur < limit) : (cur += factor) {
            try map.put(cur, {});
        }
    }
    var res: u64 = 0;
    var iter = map.keyIterator();
    while (iter.next()) |i| {
        res += i.*;
    }
    return res;
}
