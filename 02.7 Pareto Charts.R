# * To create a Pareto Chart in R from a collection of numbers that represnt frequencies (or counts) of events or outcomes that fall into different categories.
# * A Pareto Chart is a sorted Bar Chart in which each bar represents the frequeency of occurrences that fall in different categories, from the greatest to the least.
# * The vertical axis on the left represent frequency.
# * The vertical axis on the right represent cumulative percentage.
# * On Pareto Chart there is an overlaid line chart that plots this cumulative percentage of occurrences.
# * Once again, to create a Pareto chart, all you need is a vector (or array) of numbers.

# SAMPLE: Plot a Pareto Chart generating data about a survey applied to 50 people.
# Survey question: What are the top 2 reasons you are late to work?
# Survey available answers: 1) bad weather, 2) I overslept, 3) my alarm didn't go off, 4) confused by the time change to/from Daylight Savings Time, 5)  traffic was bad, 6) other.
# We can work our data as a vector:
defect.counts <- c(12, 29, 18, 3, 34, 4)
names(defect.counts) <- c("Weather", "Overslept", "Alarm Failure", "Time Change", "Traffic", "Other")
# Or as a data frame:
df.defects <- data.frame(defect.counts)
# Let's compare the two different data structures we have generated:
defect.counts
df.defects
# Now let's plot our pareto chart. In order to do this, we have a few options. The easiest one is to use the pareto.chart function from qcc package. We need to download this package first.
install.packages("qcc")
library(qcc)
# Plot a Pareto Chart using a vector:
pareto.chart(defect.counts)
# Plot a Pareto Chart using a data frame:
pareto.chart(df.defects$defect.counts)
# The next configuration is the favourite by the author of the book. Let's see:
pareto.chart(defect.counts, main = "My Pareto Chart", xlab = "Reasons", ylab = "Frequency", cex.names = 0.6, las = 1, col = topo.colors(length(defect.counts)))
# It is useful to add some lines to have a better representation of the chart. In the next line, we add a line on the y-axis that represent the 80% of the data:
abline(h=(sum(defect.counts)*0.8), col = "red", lwd = 4)
# the 'h' attribute means that we wanna plot a 'horizontal' line on the chart
