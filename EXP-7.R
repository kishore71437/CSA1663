pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_pencils <- mean(pencils)
print(paste("Mean:", mean_pencils))
median_pencils <- median(pencils)
print(paste("Median:", median_pencils))
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_pencils <- get_mode(pencils)
print(paste("Mode:", mode_pencils))
