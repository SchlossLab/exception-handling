# Exercises from https://adv-r.hadley.nz/conditions.html

# 8.2.4 - 1. Write a wrapper around file.remove() that throws an error if the file to be deleted does not exist.
careful_remove <- function(filepath) {

}

# 8.5.4 - 1. Inside a package, it’s occasionally useful to check that a package is installed before using it. Write a function that checks if a package is installed (with requireNamespace("pkg", quietly = FALSE)) and if not, throws a custom condition that includes the package name in the metadata.
check_dependencies <- function() {

}

# 8.6.6 - 4. Why is catching interrupts dangerous? Run this code to find out.
bottles_of_beer <- function(i = 100) {
    message(
        "There are ", i, " bottles of beer on the wall, ",
        i, " bottles of beer."
    )
    while(i > 0) {
        tryCatch(
            Sys.sleep(1),
            interrupt = function(cnd) {
                i <<- i - 1
                if (i > 0) {
                    message(
                        "Take one down, pass it around, ", i,
                        " bottle", if (i > 1) "s", " of beer on the wall."
                    )
                }
            }
        )
    }
    message(
        "No more bottles of beer on the wall, ",
        "no more bottles of beer."
    )
}
