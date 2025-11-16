pub fn convert(buffer: []u8, n: u32) []const u8 {
    var buf_idx: u8 = 0;
    if (n % 3 == 0) {
        inline for ("Pling") |c| {
            buffer[buf_idx] = c;
            buf_idx+=1;
        }
    }
    if (n % 5 == 0) {
        inline for ("Plang") |c| {
            buffer[buf_idx] = c;
            buf_idx+=1;
        }
    }
    if (n % 7 == 0) {
        inline for ("Plong") |c| {
            buffer[buf_idx] = c;
            buf_idx+=1;
        }
    }
    if (buf_idx != 0) {
        return buffer[0..buf_idx];
    }
    var m: u32 = n;
    const num_dig_len: u8 = @as(u8, (@intFromFloat(1+@floor(@log10(@as(f32, @floatFromInt(n)))))));
    for (0..num_dig_len) |i| {
        buffer[num_dig_len-1-i] = @truncate('0' + (m % 10));
        m = @divTrunc(m, 10);
    }
    return buffer[0..num_dig_len];
}
