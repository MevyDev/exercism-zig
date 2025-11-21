pub fn squareOfSum(number: usize) usize {
    const sum = number*(number+1)/2;
    return sum*sum;
}

pub fn sumOfSquares(number: usize) usize {
    const sum = number*(number+1)*(2*number+1)/6;
    return sum;
}

pub fn differenceOfSquares(number: usize) usize {
    const a = squareOfSum(number);
    const b = sumOfSquares(number);
    return @max(a, b) - @min(a, b);
}
