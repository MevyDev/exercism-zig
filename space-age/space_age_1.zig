pub const Planet = enum {
    mercury,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,

    pub fn age(self: Planet, seconds: usize) f64 {
        var res: f64 = @floatFromInt(seconds);
        res /= 60.0;
        res /= 60.0;
        res /= 24.0;
        res /= 365.25;
        switch (self) {
            .mercury => return res / 0.2408467,
            .venus => return res / 0.61519726,
            .earth => return res / 1.0,
            .mars => return res / 1.8808158,
            .jupiter => return res / 11.862615,
            .saturn => return res / 29.447498,
            .uranus => return res / 84.016846,
            .neptune => return res / 164.79132,
        }
    }
};
