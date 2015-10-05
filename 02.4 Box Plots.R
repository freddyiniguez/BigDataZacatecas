# * Box Plots are an alternative to histograms, these plot quantitative data like histograms, but it is possible to accentuate some of the features of a data set (outliers, IQR or median)

# SAMPLE: Show the difference between box plots and histograms, simulating temperatures from 40 different places
# Average high temperature of 76 degrees Fahrenheit
# Standard Deviation of 9 degress Fahrenheit
# We can use rnorm to generate some data 
temps <- rnorm(40, mean = 76, sd = 9)
# Let's see what kind of data rnorm has generated:
head(temps)
# Now let's see some descriptive statistics:
summary(temps)
fivenum(temps)
# The five-number summary is a descriptive statistic that provides information about a set of observations. It consists of the five most important sample percentiles:
#   * the sample minimum (smallest observation)
#   * the lower quartile or first quartile
#   * the median (middle value)
#   * the upper quartile or third quartile
#   * the sample maximum (largest observation)

# * In spite of all these functions give us important information to start ploting, a box plot needs an extra data: IQR
# * IQR (interquartile  range) is the distance between our first and third quartile: IQR = Q3 - Q1
# * The purpose of the box plot: to clearly show the space within which half of our values lie, while clearly showing usthe median (indicated by a heavy line somewhere near the middle of our box). - Radziwill, 2015.

# * Let's compare a box plot of our data among a histogram of these
par(mfrow = c(2,1))
boxplot(temps, main = "Box Plot of Summer High Temps", ylim = c(50,110), xlab = "Temperature (deg F)", horizontal = TRUE)
hist(temps, main = "Histogram of Summer High Temps", col = "darkgray", xlim = c(50,110), xlab = "Temperature (deg F)")
dev.off() # This command is useful to clean your Plots area

# SAMPLE: plot a box plot using comprehensive labels (plyr package)
# We generate more random data:
# For the first variable of the data.frame, we 'rep'-licate 8 times the value 'A', 15 times the value 'B' and 6 times the value 'C'
# For the second variable, we ask R to create a random set of 'M' and 'F' values, representing 'Male' and 'Female' with a size of 29 and replacing the data (it doesn't matter if they repeated)
# Finally, for the last variable age, we ask R again to randomly selected values from an uniform distribution, which the smallest value is 18 and the greather value's 54
dfx <- data.frame(group = c(rep('A', 8), rep('B', 15), rep('C', 6)),
                  sex = sample(c("M", "F"), size = 29, replace = TRUE),
                  age = runif(n = 29, min = 18, max = 54)
)
# To create our labeled box plot, we first need to extract those labels from the five-number summary:
my.labels <- round(fivenum(dfx$age), digits = 2)
# Now we are able to create our box plot:
boxplot(dfx$age, horizontal = TRUE, ylim = c(10,60), col = "lightgray", add = FALSE, main = "Distribution of Ages")
# And add the text to our plot:
text(x = my.labels, y = c(1.15, 1.25, 1.25, 1.25, 1.15), labels = my.labels)
