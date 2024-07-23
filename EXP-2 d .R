ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# First Quartile (Q1) and Third Quartile (Q3)
quartiles <- quantile(ages, probs=c(0.25, 0.75))
Q1 <- quartiles[1]
Q3 <- quartiles[2]

# Output the results
cat("First Quartile (Q1) of the data:", Q1, "\n")
cat("Third Quartile (Q3) of the data:", Q3, "\n")
