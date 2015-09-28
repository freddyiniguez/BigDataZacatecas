# * Bigger standard deviation means more dispersion in the distribution, which means fatter bell curve.

# Example of standard deviation model with mean of 0 and standard deviation of 1
# This first line produces 500 x values for us to work with
x <- seq(-4,4,length=500)
# dnorm produces another 500 y values from those previuos x values
y <- dnorm(x,mean=0,sd=1)
 # Now, we can plot that pair of values (x,y) using a type of "l" and a line width of 3.
plot(x,y,type="l",lwd=3,main="Standard Normal Model: N(0,1)")

# * Positive z-scores are associated with data points that are ABOVE the mean
# * Negative z-scores are associates with data points that are BELOW the mean

# * The area under the normal curve reflects the probability that an observation will fall within a particular interval.
# * Area = Probability!

# Next two lines are needed to load the shadenorm funtion.
setwd("/Users/freddyiniguez/Documents/GitHub/BigDataZacatecas/")
source("shadenorm.R")

# This first line set our plot section to draw diagrams in one row and two columns.
par(mfrow=c(1,2))
shadenorm(between = c(-4,0), color="black")
shadenorm(between = c(0,4), color="black")

# * The 68-95-99.7 Empirical Rule provides:
# * 68% of your observations will fall between one standard deviations below the mean (where z = -1) and one standard deviations above the mean (where z = +1)
# * 95% of your observations will fall between two standard deviations below the mean (where z = -2) and two standard deviations above the mean (where z = +2)
# * 99.7% (or pretty much ALL!) of your observations will fall between three standard deviations below the mean (where z = -3) and three standard deviations above the mean (where z = +3)
# * Graphical example:
par(mfrow = c(1,3)) # Set up the plot area with 1 row and 3 columns
shadenorm(between = c(-1,+1), color = "darkgray")
title("P[-1 < z < 1] = 68%")
shadenorm(between = c(-2,+2), color = "darkgray")
title("P[-2 < z < 2] = 95%")
shadenorm(between = c(-3,+3), color = "darkgray")
title("P[-3 < z < 3] = 99.7%")

# * When data is distributed normally, there are a very tiny posibility that your data fall out of three standard deviations (just a 0.% of chance).
# * Nearly all values will be within three standard deviations of the mean.

# EXAMPLE: Calculating all the z-scores for a dataset
scores <- c(81, 91, 78.5, 73.5, 66, 83.5, 76, 81, 68.5, 83.5)
# scale command compute all the z-scores at once
scale(scores)

# EXAMPLE: Using the normal model to answer questions about a population.
# For this example we use a data file from Nicole, so we need to import the file first.

# The following code is used by the author to import the file remotely:
# library(RCurl)
# url <- ("https://raw.githubusercontent.com/NicoleRadziwill")
# url <- paste(url, "/Data/master/compare-scores.csv", sep="")
# data <- getURL(url,ssl.verifypeer=FALSE)
# all.scores <. read.csv(textConnection(data))

# BUT, I prefer to download the file and the read it from working directory.
all.scores <- read.csv("data/compare-scores.csv")
head(all.scores)

# First, we need to know if the data can be distributed normally.
# We can do this representing the data in a Histogram or Q-Q plot.
# If data is almost diagonal, means that they can be normally-handle.
par(mfrow = c(1,2))
hist(all.scores$score)
qqnorm(all.scores$score)
qqline(all.scores$score)

# Compute the mean and standard deviation of the dataset
mean(all.scores$score)
sd(all.scores$score)

# Now, we can say "the normal model with a mean of 47.3 and a standard deviation of 9.3" to represent our data
# What is the percentage of students that got a score less than 50?
# We can use pnorm function to determine this.
# pnorm function ALWAYS tells us the area under the normal curve to the LEFT of a particular x value.
pnorm(50, mean = 47.3, sd = 9.3)
# 61.42% of students got a score less than 50

# What about if we wanna know the percentage of students that got a score greater than 50?
# We can do this in two ways:
# The first one is using the property of pnorm function lower.tail, which means that you want to use the rigth side of the values, not the left side as default:
pnorm(50, mean = 47.3, sd = 9.3, lower.tail = FALSE)
# The second one way to got this is to do a simple substract of the original function, to get the rest of the data, like this:
1 - pnorm(50, mean = 47.3, sd = 9.3)
# 38.57% of students got a score greater than 50

# Now, let's say that we wanna know the proportion of students that got a score between 40 and 60.
# So, we need to calculate N(47.3,9.3) between x = 40 and x = 60
# Graphically represented will look like this:
shadenorm(between = c(40,60), color = "black", mu = 47.3, sig = 9.3)
# Easily, we can substract the proportion of student that got a score of 60 minus the proportion of students that got 40
pnorm(60, mean = 47.3, sd = 9.3) - pnorm(40, mean = 47.3, sd = 9.3)
# 69.77% of students got a score between 40 and 60. 
# Graphically represented, we got:
par(mfrow = c(1,3))
shadenorm(below = 60, justbelow = TRUE, color = "black", mu = 47.3, sig = 9.3)
title("This Area")
shadenorm(below = 40, justbelow = TRUE, color = "black", mu = 47.3, sig = 9.3)
title("Minus THIS Area")
shadenorm(between = c(40,60), color = "black", mu = 47.3, sig = 9.3)
title("Equals THIS Area")