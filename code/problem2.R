### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")


### Problem 2 ----
fibonacci = function(n){
  lookup = integer(n + 1 )
  
  if (n == 1) {return(1)}
  if (n == 2) {return(2)}
  
  lookup[1] = 1
  lookup[2] = 2
  
  if (lookup[n - 1] == 0) {
    lookup[n - 1] = fibonacci(n - 1)
  }
  
  if (lookup[n - 2] == 0) {
    lookup[n - 2] = fibonacci(n - 2)
  }
  return(lookup[n - 1] + lookup[n - 2])
}

fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
print(fibonacci(100))
