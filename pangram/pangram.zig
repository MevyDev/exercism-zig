const std = @import("std");
pub fn isPangram(str: []const u8) bool {
    var letter_map: u26 = 0;
    for (str) |c| {
        if (std.ascii.isAscii(c) and std.ascii.isAlphabetic(c)) {
            letter_map |= @as(u26, 1) << @truncate(std.ascii.toLower(c) - 'a');
        }
    }
    if (letter_map == 0x3ffffff) {
        return true;
    }
    return false;
}
