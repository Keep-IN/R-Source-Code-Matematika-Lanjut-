#set
U <- c(1:19)
A <- c(1:10)
B <- c(2, 3, 5, 7, 11, 13, 17)
C <- c(2, 4, 6, 8, 10, 12, 14, 16, 18)

U
##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
A
##  [1]  1  2  3  4  5  6  7  8  9 10
B
## [1]  2  3  5  7 11 13 17
C
## [1]  2  4  6  8 10 12 14 16 18

##(AuBuC)
AuB <- union(A,B)
AuB
##  [1]  1  2  3  4  5  6  7  8  9 10 11 13 17
AuBuC <- union(AuB,C)
AuBuC
## Jawaban -> [1]  1  2  3  4  5  6  7  8  9 10 11 13 17 12 14 16 18

#Function
#(a)
f1 <- function(x){
  x^3 + x^2 - 6
}
##sample input
input <- -10:10
plot(input, sapply(input, f1), type = "l", xlab = "x", ylab = "F(x)" )

#(a)
f2 <- function(x){
  -x^2-6
}
##sample input
input2 <- -10:10
plot(input2, sapply(input2, f2), type = "l", xlab = "x", ylab = "F(x)")

#Limit
library(Ryacas)
limit <- yac_str("Limit(x,0) ((x^4-x^2)/(x^3+x^2))*(sin(x)/x)+(cos(x))")
limit
## Jawaban -> [1] "Undefined"

#Diffrentiation
yac_expr("D(x) (sin(x)^2/x^2)*(x+1)")
## jawaban -> expression((x^2 * ((x + 1) * 2 * Deriv(x, sin(x)) * sin(x) + sin(x)^2) - (x + 1) * sin(x)^2 * 2 * x)/x^4)

#Integration
library(Ryacas0)
x <- Sym("x")
Integrate(x^2 * (cos(x^3+pi)) * (sin(x^3+pi)), x)
##Jawaban-> yacas_expression(-AntiDeriv(x, x^2 * sin(-2 * x^3 - 6.2831853071))/2)
