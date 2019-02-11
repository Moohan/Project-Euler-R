


### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")

## Problem 5

found = FALSE
n = 2520
while (!found) {
    evenly_divides = TRUE
    for (divider in c(2:20)) {
        if (n %% divider != 0) {
            evenly_divides = FALSE
            break
        }

    }
    if (evenly_divides) {
        found = TRUE
        print (n)
    } else {
        n = n + 2
    }
}
