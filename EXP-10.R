# Given data
speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

# Calculate the interquartile range (IQR)
iqr_value <- IQR(speed)

# Calculate the standard deviation
sd_value <- sd(speed)

# Print the results
cat("Interquartile Range (IQR):", iqr_value, "\n")
cat("Standard Deviation:", sd_value, "\n")
