### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")


### Problem 2 ----
#Better solution

n = 1
fib = 1
nums = integer()
while (fib < 4000000) {
    if (n > 2) {
        fib = nums[n - 1] + nums[n - 2]
    } else if (n == 1) {
        fib = 1
    } else if (n == 2) {
        fib = 2
    }

    nums = c(nums, fib)
    n = n + 1
}

even = as_tibble(nums) %>% filter(. %% 2 == 0)
sum(even)
