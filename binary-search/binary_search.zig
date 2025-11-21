pub fn binarySearch(comptime T: type, target: T, items: []const T) ?usize {
    if (items.len == 0) {
        return null;
    }
    var l: usize = 0;
    var r: usize = items.len;
    while(l+1 < r) {
        const m = l+@divFloor(r-l, 2);
        if (items[m] <= target) {
            l = m;
        }
        if (items[m] > target) {
            r = m;
        }
    }
    if (items[l] == target) {
        return l;
    }
    return null;
}
