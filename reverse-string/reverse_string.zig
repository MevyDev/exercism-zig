/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    for (0..s.len) |i| {
        buffer[i] = s[i];
    }
    for (0..@divFloor(s.len, 2)) |i| {
        buffer[i] ^= buffer[s.len-i-1];
        buffer[s.len-i-1] ^= buffer[i];
        buffer[i] ^= buffer[s.len-i-1];
    }
    return buffer[0..s.len];
}
