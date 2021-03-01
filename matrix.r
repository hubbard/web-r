# Solve the following system of equations:
# 5x + 3y = 19
# 2x + 6y = 22

a <- matrix(c(5, 3, 2, 6), nrow=2, ncol=2, byrow=TRUE)
b <- matrix(c(19, 22), nrow=2)
a
b
solve(a, b)

# other matrix operations, transpose, inverse, eigenvalues/vectors
t(a)
solve(a)
eigen(a)
