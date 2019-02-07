### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")


### Problem 3 ----

#Read in first million primes - from https://primes.utm.edu/lists/small/millions/
primes = read_file("data/basefiles/primes1.zip") %>% 
  str_extract_all("[:digit:]+") %>% 
  as_vector() %>% 
  as.integer()

primes = primes[c(-1, -2, -3)]

#Test - should return 5, 7, 13 and 29
getPrimeFactors(13195, primes)
#passed

#Answer
max(getPrimeFactors(600851475143, primes))




