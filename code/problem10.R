

### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")

### Problem 10 ----

primes = integer()
n = 1
for (n in c(2:2000000)) {
    if (is_prime(n)) {
        primes = c(primes, n)
    }
}

sum(primes)
