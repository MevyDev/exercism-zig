pub const ComputationError = error{
    IllegalArgument,
};

pub fn steps(number: usize) anyerror!usize {
    switch (number) {
        0 => return ComputationError.IllegalArgument,
        1 => return 0,
        else => return 1 + try steps(if (number % 2 == 0) number/2 else number*3 + 1),
    }
}
