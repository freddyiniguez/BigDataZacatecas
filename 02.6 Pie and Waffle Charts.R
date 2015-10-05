# * In order to display your collection of categorical numbers as a 'part relate to the whole', we can plot Pie Charts.
# * We use Waffle Charts as an alternative to Pie Charts.

# * A Pie Chart is a circular plot divided into sectors, also called slices. Each slide of the pie is proportional to the amount of observations in that category. The sum of all parts should be the 100%.
# * To create a pie chart all you need is a collection of numbers in a vector.

# SAMPLE: We'll create a Pie Chart using a collection of M&Ms colors.
mm.counts <- c(12, 6, 8, 10, 6, 7)
names(mm.counts) <- c("blue", "brown", "green", "orange", "red", "yellow")
# Now we can create our pie chart. Let's set the labels first and then plot the chart:
percents <- round(mm.counts/sum(mm.counts)*100)
my.labels <- paste(names(mm.counts), " ", percents, "%", sep = "")
pie(mm.counts, labels = my.labels, main = "My M&M Color Distribution", col = names(mm.counts))