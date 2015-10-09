# * In order to determinate if data youre collection is normally distributed or not, the normal probability plot (QQ Plot short for quantile-quantile plot) gives you a quick visual diagnostic that reveal whether the data are distributed normally - or not.
# * QQ Plot compares each point of your data with those some 'idealized' points to indicate if they match perfectly in normal distribution.
# * To create a QQ Plot, you need a variable with a data frame in it, so you can use read.table() and read.csv() functions or simple create a vector with c().
# SAMPLE: Plot a QQ Plot with a csv file
# * Let's create a QQ Plot with a colelction of data in a file. Let's locate it and load it into our workspace:
setwd("/Users/freddyiniguez/Downloads/")
mydata <- read.csv("matricula_ejercicio.csv", header = TRUE)
qqnorm(mydata$X2010.2011)
qqline(mydata$X2010.2011)
# * Each point is a representation of the difference between the actual test score and the test score we would have observed if that score came from a perfectly normal distribution.
# * So, in order to determine if our data could be normally distributed, we need to ask ourself: "is there a general pattern of linearity evident in this plot?" If answer's yes, data is normally distributed.

# * There exist an alternative method to determine if a collection of data is normally distributed or not. This is trying to reject the 'null hypothesis'. 
# * In statistical inference, a null hypothesis is a general statement or default position about two different phenomena. 
# * So, we can test this using shapiro.test() function. 
shapiro.test(mydata$X2010.2011)
# * It's common to reject the null hypothesis that the data are normal when the P-Value is less than 0.5.

# * Finally, if you really need to know for sure whether your data are normally distributed or not, try the Shapiro-Wilk test or the Anderson-Darling test.

# * Here is an example about what a really linear QQ Plot should look like (rnorm generates an idealized distribution):
normal <- rnorm(500, 46.85, 11.31)
par(mfrow = c(1,2))
hist(normal, breaks = 12, xlim = c(0,100), ylim = c(0, 100), main = "N(46.85, 11.31", col = "gray")
qqnorm(normal)
qqline(normal)