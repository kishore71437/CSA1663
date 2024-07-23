# Given data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Number of bins
num_bins <- 3

# Calculate the bin edges for equal-frequency partitioning
bins_eq_freq <- cut(marks, breaks = quantile(marks, probs = 0:num_bins / num_bins), include.lowest = TRUE, labels = FALSE)

# Plot histogram for equal-frequency partitioning
hist(marks, breaks = quantile(marks, probs = 0:num_bins / num_bins), main = "Histogram (Equal-Frequency Partitioning)", xlab = "Marks", col = "lightblue", border = "black")
