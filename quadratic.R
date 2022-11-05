quadratic = function(a, b, c){
    # see:
    # https://math.stackexchange.com/questions/866331/numerically-stable-algorithm-for-solving-the-quadratic-equation-when-a-is-very
    is_linear = all.equal.numeric(a, 0, tolerance = 1e-322) == TRUE
    if (is_linear) {
        x = -c/b
        return(x)
    } else if (all.equal.numeric(c, 0, tolerance = 1e-322) == TRUE){
        x = min(0, -b/a)
        return(x)
    }
    # The code below ensures that both "-b" and the determinant always have 
    # the same sign. So, it never takes difference between two large but very 
    # similar numbers.
    x1 = (-b - sign(b)*sqrt(b^2 - 4*a*c)) / (2*a)
    x2 = c / (a*x1)
    return(min(x1, x2))
}