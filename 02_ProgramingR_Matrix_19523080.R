values <- sample(c(1:1000), 100, replace = TRUE)
G <- matrix(values, 10, 10, TRUE)

H <- t(G)
J <- G+H
I <- det(G)+det(H)+det(J)
K <- cbind(G[, 1:5], J[, 1:5])
L <- solve(G)*G