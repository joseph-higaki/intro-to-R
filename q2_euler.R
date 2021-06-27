#install.packages("pracma")
library(pracma)

#iterate backwards from  N to. if multiple of any of x, y, suum
#find 
sum_mutiples_less_than <- function(n, x, y){
  result_value <- 0
  for (i in 1:n-1) {
    if ((i %% x == 0) || (i %% y == 0))
    result_value <- result_value + i
  }
  return(result_value)
}

# wondering it it is more efficient to iterate using gcd... 
sum_mutiples_less_than_with_gcd <- function(n, x, y){
  result_value <- 0
  gcd_x_y = gcd(x, y) 
  i <- n - 1
  while (i > 0) {
    if ((i %% x == 0) || (i %% y == 0))
      result_value <- result_value + i
    i <- i - gcd_x_y
  }
  return(result_value)
}

sum_mutiples_less_than(10, 3, 5)
sum_mutiples_less_than_with_gcd(10, 3, 5)
sum_mutiples_less_than(1000, 6, 9) 
sum_mutiples_less_than_with_gcd(1000, 6, 9)
