pub fn score(s: []const u8) u32 {
    var res: u32 = 0;
    for (s) |c| {
        switch (c) {
            'Q', 'Z' => res += 10,
            'J', 'X' => res += 8,
            'K' => res += 5,
            'F', 'H', 'V', 'W', 'Y' => res += 4,
            'B', 'C', 'M', 'P' => res += 3,
            'D', 'G' => res += 2,
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
