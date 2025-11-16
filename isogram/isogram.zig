const std = @import("std");

pub fn isIsogram(str: []const u8) bool {
    var letter_map: u26 = 0;

    for (str) |c| {
        if (std.ascii.isAscii(c) and std.ascii.isAlphabetic(c)) {
            const letter_mask: u26 = @as(u26, 1) << @truncate(std.ascii.toLower(c) - 'a');
            if (letter_mask & letter_map == letter_mask) {
                return false;
            }
            letter_map |= letter_mask;
        }
    }
    return true;
}
