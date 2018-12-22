function() {
    precision <- 0.01
    lineThicness <- 3
    
    plot(NA, main = "Batman Logo", ylab = "Y", xlab = "X", xlim = c(-7, 7), ylim = c(-3, 3))
    
    abline(h = -3:3, v = -7:7, col="gray", lty=3)
    
    # left upper outer wing
    x1 <- seq(-7, -3, precision)
    lines(x1, 3/7 * sqrt(7^2 - x1^2), lwd = lineThicness)
    
    # right upper outer wing
    x2 <- seq(3, 7, precision)
    lines(x2, 3/7 * sqrt(7^2 - x2^2), lwd = lineThicness)
    
    # left lower outer wing
    x3 <- seq(-7, -4, precision)
    lines(x3, -3/7 * sqrt(7^2 - x3^2), lwd = lineThicness)
    
    # right lower outer wing
    x4 <- seq(4, 7, precision)
    lines(x4, -3/7 * sqrt(7^2 - x4^2), lwd = lineThicness)
    
    # tail
    x5 <- seq(-4, 4, precision)
    lines(x5, abs(x5/2) - ((3 * sqrt(33) - 7) / 112) * x5^2 - 3 + sqrt(1 - (abs(abs(x5) - 2) - 1)^2), lwd = lineThicness)
    
    # left face
    x6 <- seq(-1, -.75, precision)
    lines(x6, 9 - 8 * abs(x6), lwd = lineThicness)
    
    # right face
    x7 <- seq(.75, 1, precision)
    lines(x7, 9 - 8 * abs(x7), lwd = lineThicness)
    
    # left inner ear
    x8 <- seq(-.75, -0.5, precision)
    lines(x8, 3 * abs(x8) + 0.75, lwd = lineThicness)
    
    # right inner ear
    x9 <- seq(0.5, 0.75, precision)
    lines(x9, 3 * abs(x9) + 0.75, lwd = lineThicness)
    
    # head
    segments(x0 = -0.5, y0 = 2.25, x1 = 0.5, y1 = 2.25, lwd = lineThicness)
    
    #left upper inner wing
    x10 <- seq(-3, -1, precision)
    lines(x10, (6 * sqrt(10) / 7) + (-0.5 * abs(x10) + 1.5) - (3 * sqrt(10) / 7) * sqrt(4 - (abs(x10) - 1)^2), lwd = lineThicness)
    
    # right upper inner wing
    x11 <- seq(1, 3, precision)
    lines(x11, (6 * sqrt(10) / 7) + (-0.5 * abs(x11) + 1.5) - (3 * sqrt(10) / 7) * sqrt(4 - (abs(x11) - 1)^2), lwd = lineThicness)
}
