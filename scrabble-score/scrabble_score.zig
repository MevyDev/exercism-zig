const std = @import("std");

pub fn score(s: []const u8) u32 {
    var res: u32 = 0;
    for (s) |c| {
        if (!std.ascii.isAscii(c))
            unreachable;
        switch (std.ascii.toLower(c)) {
            'q', 'z' => res += 10,
            'j', 'x' => res += 8,
            'k' => res += 5,
            'f', 'h', 'v', 'w', 'y' => res += 4,
            'b', 'c', 'm', 'p' => res += 3,
            'd', 'g' => res += 2,
            else => res += 1,
        }
    }
    return res;
}
