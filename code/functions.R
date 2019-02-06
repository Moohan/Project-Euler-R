#For Problem 1
#Returns multiples of 3 and 5 up to a max
getMultiples = function(max_n){
  multiples = integer()
  for (n in c(1:(max_n - 1))) {
    if (n %% 3 == 0 || n %% 5 == 0) {
      multiples = c(multiples, n)
    }
  }
  return(unique(multiples))
}

#For problem 2
#Is supposed to be dynamic programming
#I suspect it isn't
fibonacci = function(n, lookup = NULL){
  if (is.null(lookup)) {
    lookup = integer(n + 1)
  }
  
  
  if (n == 1) {return(1)}
  if (n == 2) {return(2)}
  
  lookup[1] = 1
  lookup[2] = 2
  
  if (lookup[n - 1] == 0) {
    lookup[n - 1] = fibonacci(n - 1, lookup)
  }
  
  if (lookup[n - 2] == 0) {
    lookup[n - 2] = fibonacci(n - 2, lookup)
  }
  return(lookup[n - 1] + lookup[n - 2])
}