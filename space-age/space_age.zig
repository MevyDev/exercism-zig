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
        const res: f64 = @floatFromInt(seconds);
        comptime var seconds_in_year = 1.0;
        seconds_in_year *= 365.25;
        seconds_in_year *= 24.0;
        seconds_in_year *= 60.0;
        seconds_in_year *= 60.0;
        switch (self) {
            .mercury => return (res / 0.2408467)/seconds_in_year,
            .venus => return (res / 0.61519726)/seconds_in_year,
            .earth => return (res / 1.0)/seconds_in_year,
            .mars => return (res / 1.8808158)/seconds_in_year,
            .jupiter => return (res / 11.862615)/seconds_in_year,
            .saturn => return (res / 29.447498)/seconds_in_year,
            .uranus => return (res / 84.016846)/seconds_in_year,
            .neptune => return (res / 164.79132)/seconds_in_year,
        }
    }
};
