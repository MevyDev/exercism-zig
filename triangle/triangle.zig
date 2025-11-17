pub const TriangleError = error {
    Invalid,
};

pub const Triangle = struct {
    a: f64,
    b: f64,
    c: f64,

    pub fn init(a: f64, b: f64, c: f64) TriangleError!Triangle {
        const self = Triangle{
            .a = a,
            .b = b,
            .c = c,
        };
        if (
            (a + b >= c) and
            (a + c >= b) and
            (b + c >= a) and
            @min(a, b, c) > 0
        )  {
            return self;
        }
        return TriangleError.Invalid;
    }

    pub fn isEquilateral(self: Triangle) bool {
        if (self.a == self.b and self.a == self.c) {
            return true;
        }
        return false;
    }

    pub fn isIsosceles(self: Triangle) bool {
        if (
            self.a == self.b or
            self.b == self.c or
            self.a == self.c
        ) {
            return true;
        }
        return false;
    }

    pub fn isScalene(self: Triangle) bool {
        if (
            self.a != self.b and
            self.a != self.c and
            self.b != self.c
        ) {
            return true;
        }
        return false;
    }
};
