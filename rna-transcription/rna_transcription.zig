const std = @import("std");
const mem = std.mem;

pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    const buffer = try allocator.alloc(u8, dna.len);
    for (dna, 0..) |c, i| {
        switch (c) {
            'G' => buffer[i] = 'C',
            'C' => buffer[i] = 'G',
            'T' => buffer[i] = 'A',
            'A' => buffer[i] = 'U',
            else => unreachable,
        }
    }
    return buffer;
}
