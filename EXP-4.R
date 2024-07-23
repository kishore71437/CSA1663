data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Number of bins
num_bins <- 3

# Calculate the bin size
bin_size <- ceiling(length(data) / num_bins)

# Split the data into bins
bins <- split(data, ceiling(seq_along(data) / bin_size))

# (a) Smoothing by bin mean
smoothed_by_mean <- unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))

# (b) Smoothing by bin median
smoothed_by_median <- unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))

# (c) Smoothing by bin boundaries
smoothed_by_boundaries <- unlist(lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) < abs(x - max_val), min_val, max_val))
}))

# Output the results
cat("Original Data:\n", data, "\n\n")

cat("Smoothing by Bin Mean:\n", smoothed_by_mean, "\n\n")

cat("Smoothing by Bin Median:\n", smoothed_by_median, "\n\n")

cat("Smoothing by Bin Boundaries:\n", smoothed_by_boundaries, "\n")
