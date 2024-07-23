# Define the number of bins
num_bins_width <- 3

# Calculate the width of each bin
range_marks <- range(marks)
bin_width <- (range_marks[2] - range_marks[1]) / num_bins_width

# Define the bin edges for equal-width partitioning
bins_eq_width <- cut(marks, breaks = seq(range_marks[1], range_marks[2], by = bin_width), include.lowest = TRUE, labels = FALSE)

# Plot histogram for equal-width partitioning
hist(marks, breaks = seq(range_marks[1], range_marks[2], by = bin_width), main = "Histogram (Equal-Width Partitioning)", xlab = "Marks", col = "lightgreen", border = "black")
