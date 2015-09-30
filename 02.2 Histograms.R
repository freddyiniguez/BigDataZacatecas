# * Histograms (hist function in R) use quantitative data and is a collection of numbers that represent frequencies (or counts) of events or outcomes that fall into different bins.
# * Each of the bins has a quantitative lower bound, and a quantitative upper bound.
# * Histograms are used to visualize distributions of quantitative values.
# * Lets plot a Histogram generating randomly values, alpha = 5, beta = 2
x <- rbeta(5000, 5, 2)
summary(x)
sd(x)
var(x)
# * The simplest way to plot a Histogram is:
hist(x)

# * We can draw a Histogram in terms of:
# 1) Frequency: the number of times you observe a value in a particular bin.
# 2) Density: draw a curve on top which shows the kernel density estimation.
# * We draw an example of each one next:
# Set the Plot ARea to 1 row and 2 columns
par(mfrow = c(1,2))
hist(x, col = "gray", xlab = "Our Randomly Sampled Values", ylab = "Frequency of Occurence", main = "Frequency")
# * The 'freq' attribute set up in FALSE plot in terms of density, not frequency.
hist(x, col = "gray", xlab = "Our Randomly Sampled Values", ylab = "Density", main = "Density", freq = FALSE)
# This line adds to the second histogram a curve on top
lines(density(x), lty = "dotted", lwd=3)