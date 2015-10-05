# * Box Plots are pretty useful to visualize the distribution of a quantitative variable, but it can be more useful to compare between different distributions

# SAMPLE: We're gonna take a sample data set to represent a compare box plot
# This data is about a distribution that shows pre-score test of students from three different statistics classes
# We need to copy this data to a file and save it with a 'txt' extension:

#year score
#2010 50
#2010 47.5
#2010 77.5
#2010 83.5
#2010 79
#2010 65
#2011 30
#2011 55
#2011 62.5
#2011 70
#2011 72
#2011 67.5
#2012 80
#2012 60
#2012 55
#2012 59.5
#2012 55

# Now you can just uncomment the data and save the file. Then we need to load it in our working directory, specifying the attribute 'header' to say R that the first row ccontains our headers titles:
allscores <- read.table("test-scores.txt", header = TRUE)
# Let's plot our data. Next line represent this: "plot the distributions of scores, but separe them according to years, and use whatever data is stored in the variable I've called 'allscores'"
boxplot(score~year, data = allscores)
# Lets understand the plot below: (Radziwill, 2015)
#       "This plot is informative,
#   in the sense that theres a lot of information we can get out of this comparative box plot.
#   First, you can see that the test scores for 2010 are much more scattered than in either of the
#   two later years. The standard deviation is definitely bigger.
#   The 2010 distribution is skewed a little towards the left (that is, towards lower scores) and
#   there are no outliers. The 2011 distribution has the least variability, but the median (that
#   dark line in the center) is lower than in 2010. Also, there's a really low outlier in the 2011
#   data. For 2012, the median is even lower, but the distribution is skewed towards the right
#   (that is, towards higher values)."

# We are going to order the data, in order to graph a better-understand plot:
allscores$year <- ordered(allscores$year, levels = c("2012", "2011", "2010"))
boxplot(score~year, data = allscores, main = "Statistics Pre-Test Score Distributions", xlab = "Years", ylab = "Pre-Test Scores", ylim = c(0,100), col = c("white", "lightgray", "darkgray"))
# To got a better view of the plot, you can set 'horizontal = TRUE', so in this way 'skewed to the right' becomes more obvious.