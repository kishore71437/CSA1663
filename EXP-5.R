age <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110)
fat <- c(15, 20, 18, 25, 22, 27, 24, 26, 23, 30, 29, 32, 31, 28, 35, 33, 36, 34)

# (a) Calculate the mean, median, and standard deviation of age and %fat
mean_age <- mean(age)
median_age <- median(age)
sd_age <- sd(age)

mean_fat <- mean(fat)
median_fat <- median(fat)
sd_fat <- sd(fat)

# Output the results
cat("Age:\n")
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Standard Deviation:", sd_age, "\n\n")

cat("%Fat:\n")
cat("Mean:", mean_fat, "\n")
cat("Median:", median_fat, "\n")
cat("Standard Deviation:", sd_fat, "\n\n")

# (b) Draw the boxplots for age and %fat
par(mfrow=c(1,2))  # Set up the plotting area to have 2 plots side by side

boxplot(age, main="Boxplot of Age", ylab="Age")
boxplot(fat, main="Boxplot of %Fat", ylab="%Fat")

# (c) Draw a scatter plot and a Q-Q plot based on these two variables
par(mfrow=c(1,2))  # Set up the plotting area to have 2 plots side by side

# Scatter plot
plot(age, fat, main="Scatter Plot of Age vs %Fat", xlab="Age", ylab="%Fat", pch=19, col=age)

# Q-Q plots
qqnorm(age, main="Q-Q Plot of Age")
qqline(age)

qqnorm(fat, main="Q-Q Plot of %Fat")
qqline(fat)

# Reset plotting area
par(mfrow=c(1,1))
