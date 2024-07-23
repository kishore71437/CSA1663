age <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110)
value <- 35
std_dev_age <- 12.94  # Given standard deviation of age

# (i) Min-Max Normalization
min_age <- min(age)
max_age <- max(age)
min_max_normalized <- (value - min_age) / (max_age - min_age)

# (ii) Z-Score Normalization
mean_age <- mean(age)
z_score_normalized <- (value - mean_age) / std_dev_age

# (iii) Normalization by Decimal Scaling
# Determine the decimal scaling factor
max_age_value <- max(age)
decimal_scaling_factor <- 10^(floor(log10(max_age_value)))
decimal_scaled <- value / decimal_scaling_factor

# Output the results
cat("Min-Max Normalization of value", value, ":", min_max_normalized, "\n")
cat("Z-Score Normalization of value", value, ":", z_score_normalized, "\n")
cat("Decimal Scaling of value", value, ":", decimal_scaled, "\n")
