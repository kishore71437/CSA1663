data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization
min_max_normalize <- function(x, new_min, new_max) {
  (x - min(x)) / (max(x) - min(x)) * (new_max - new_min) + new_min
}
normalized_min_max <- min_max_normalize(data, 0, 1)

# Output the results of Min-Max Normalization
cat("Min-Max Normalized data (min = 0, max = 1):\n", normalized_min_max, "\n")

# (b) Z-Score Normalization
z_score_normalize <- function(x) {
  (x - mean(x)) / sd(x)
}
normalized_z_score <- z_score_normalize(data)

# Output the results of Z-Score Normalization
cat("Z-Score Normalized data:\n", normalized_z_score, "\n")
