# * To create a scatterplot (and grids of scatterplot) in R from two different continuous quantitative variables, and evaluate th scattered-ness of the points using covariance and correlation.
# * Covariance and correlation indicates the relationship between two quantitative variables. 
# * Quantitative variables are positively related if, when one increases, the other one also increases.
# * Quantitative variables are negatively related if, when one increases, the other one decreases.

# SAMPLE: Calculate the covariance and correlation for a small data set:
# Covariance:
# "For the first point in your data set, compute the difference between the x coordinate of that point and the mean of all the x coordinates,
# then do the same for y and multiply those two values together. Then, do that for all the rest of the points! Add up the n products that you computed.
# Then, when it's all added up, divide by one less than the total number if points (n - 1):"
i <- 1:10
xi <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
yi <- c(.8, 2.1, 2.9, 3.8, 5.3, 6, 6.9, 8.1, 9.3, 9.9)
xbar <- mean(xi)
ybar <- mean(yi)
xi.minus.xbar <- xi - xbar
yi.minus.ybar <- yi - ybar
xdiff.x.ydiff <-  xi.minus.xbar * yi.minus.ybar
# So, the covariance and correlation coefficient is:
calc.df <- cbind(i, xi, yi, xi.minus.xbar, yi.minus.ybar, xdiff.x.ydiff)
# Completing the formula, to find the covariance we can do this:
sum(xdiff.x.ydiff)/9
# * But there is an easier way! R generate the covariance just with the cov command, once given the original coordinates for our points:
cov(xi, yi)
# Now the we have the covariance, it's also easy to compute the correlation coefficient. We just need to divide the covariance by the standard deviation in x and in y (we can calculate this with cor R function too!!!).
cov(xi, yi) / (sd(xi) * sd(yi))
cor(xi, yi)

# Some useful characters to plot:
plot.new()
par(usr = c(-1, 21, 0, 1))
for(n in 0:20) { points(n, .5, pch = n, cex = 2); text(n, .45, n) }
box()