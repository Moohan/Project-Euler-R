

### 1 - Housekeeping ----
#   loading packages
source("code/packages.R")

#   functions (defined here or sourced from another file)
source("code/functions.R")

### Problem 9 ----
for (c in c(5:1000)) {
    for (b in c(4:1000)) {
        if (b > c) {
            break
        }
        for (a in c(3:1000)) {
            if (a > b) {
                break
            }
            if ((a + b + c == 1000) &&
                (pythagorian_triple(a, b, c))) {
                found_triple = c(a, b, c)
                break
            }


        }
    }
}

found_triple
prod(found_triple)
