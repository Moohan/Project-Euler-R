

### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")

## Problem 4
# Test - should return TRUE
is_palindrome(9009)

three_digits = c(100:999)
palindromes = integer()

# Could probably optimise here
# 1) We're doing some porducts twice e.g. 101 * 100 and 100 * 101
# 2) Only need to store a palindrome if it's bigger than any previous ones.
for (x in three_digits) {
    for (y in three_digits) {
        product = x * y
        if (is_palindrome(product)) {
            palindromes = c(palindromes, product)
        }
    }
}

max(palindromes)
