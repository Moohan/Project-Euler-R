#For Problem 1
#Returns multiples of 3 and 5 up to a max
getMultiples = function(max_n) {
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
fibonacci = function(n, lookup = NULL) {
    if (is.null(lookup)) {
        lookup = integer(n + 1)
    }


    if (n == 1) {
        return(1)
    }
    if (n == 2) {
        return(2)
    }

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

##For Problem 3
#It returns a list of prime factors for a number n
#It needs to be supplied with a list of primes to work with
getPrimeFactors = function(n, primes) {
    prime_factors = integer()

    for (prime in primes) {
        if (prime <= n) {
            while (n %% prime == 0) {
                prime_factors = c(prime_factors, prime)
                n = n / prime
            }
        }
    }
    return(prime_factors)
}

##For Problem 7
# Test for primality by checking all number up to sqrt(n)
# with 6K +- 1 optimisation
is_prime = function(n) {
    if (n <= 3) {
        return(n > 1)
    } else if ((n %% 2 == 0) || (n %% 3 == 0)) {
        return(FALSE)
    }

    i = 5
    while (i * i <= n) {
        if ((n %% i == 0) || (n %% (i + 2) == 0)) {
            return(FALSE)
        }
        i = i + 6
    }
    return(TRUE)
}

# Get the nth prime number
get_prime = function(n) {
    primes = 0
    i = 0
    while (primes < n) {
        i = i + 1
        if (is_prime(i)) {
            primes = primes + 1

        }

    }
    return(i)
}

# For problem 4

is_palindrome = function(n) {
    digits = integer()

    while (n > 0) {
        digits = c(digits, n %% 10)
        n = n %/% 10
    }
    return (all(digits == rev(digits)))
}
