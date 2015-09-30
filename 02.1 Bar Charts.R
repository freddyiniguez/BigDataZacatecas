# * Bar Charts are useful when need to plot categorical data.
# * Bar Charts are different from Histograms.
# * In Bar Charts, the horizontal axis (x) list categories.
# * In Histograms, the horizontal axis (x) contains ranges of numbers that represent a continuum (e.g. 0-10, 10-20, 20-30)
# * In Bar Charts, there is some space between the bars to indicate that categories are separete one from another. Histograms' bars don't contain space between each other.
# * All you need to plot a Bar Chart is a vector (or array) of numbers OR a column selected from a data frame.
# EXAMPLE: using a vector to plot a Bar Chart (M&Ms sample)
mm.counts <- c(12, 6, 8, 10, 6, 7)
names(mm.counts) <- c("blue", "brown", "green", "orange", "red", "yellow")
# In order to give some colors to the bars, we called a variable mm.colors
mm.colors <- c("blue", "brown", "green", "orange", "red", "yellow")
barplot(mm.counts, main = "My M&M Color Distribution", xlab = "M&M Colors", ylab = "Number of M&Ms in Bag", col = mm.colors)

#EXAMPLE: using a data frame to plot a Bar Chart (M&Ms sample)
mm.df <- read.csv("mnm-clean.csv", header=T)
# Use a table to collect all the data about the individual M&Ms and tallies 'em up according to the variable 'color'.
count.colors <- table(mm.df$color)
count.colors
barplot(count.colors, main = "My M&M Color Distribution", xlab = "M&M Colors", ylab = "Number of M&Ms in Bag", col = mm.colors)

# * Bar Charts are used to visualize the distribution of proportions (or counts) of observation in categories.