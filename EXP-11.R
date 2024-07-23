# Given data
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Calculate the first quartile (Q1) and third quartile (Q3)
q1 <- quantile(ages, 0.25)
q3 <- quantile(ages, 0.75)

# Print the results
cat("First Quartile (Q1):", q1, "\n")
cat("Third Quartile (Q3):", q3, "\n")
