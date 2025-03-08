# --------------------------------- Question 2 MV CA3 ---------------------------------
e11 <- matrix(c(8, 3, 0, 3, 12, 2, 0, 2, 8), nrow = 3, ncol = 3, byrow = TRUE)
e12 <- matrix(c(-1, 5, 2, -2, 0, 2), nrow = 3, ncol = 2, byrow = TRUE)
e21 <- t(e12)
e22 <- matrix(c(9, 1, 1, 10), nrow = 2, ncol = 2, byrow = TRUE)
u1 <- c(5, 0, 6)
u2 <- c(-2, 2)
x <- c(-1, 2)

# E(X1 | X2)
u1 + e12 %*% solve(e22) %*% (x - u2)

print(paste(u1, "*" ,e12, "*", solve(e22), "*", (x - u2)))
print(e11)

# Cov(X1 | X2)
e11 - e12 %*% solve(e22) %*% e21
