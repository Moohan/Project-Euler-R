
getMultiples = function(max_n){
  multiples = integer()
  for (n in c(1:(max_n - 1))) {
    if (n %% 3 == 0 || n %% 5 == 0) {
      multiples = c(multiples, n)
    }
  }
  return(unique(multiples))
}
