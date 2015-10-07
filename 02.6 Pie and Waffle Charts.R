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
# First we obtain the percents of each color, and then, using the 'paste' command, assigned the labels according to the percents. 
# It is important to notice that there is a blank space between te labels and the percents. This because the default behaviour adds two or three adittional spaces, and we don't want this.

# * Waffle Charts are an alternative to Pie Charts, but they are still useful to communicate how parts of a data set are related to the whole.
# * To be able to plot Waffle Charts, we need to install the packages or imported directly from GitHub repo.
install.packages("devtools")
library(devtools)
devtools::install_github("hrbrmstr/waffle")
# * All we need to plot a waffle chart, we need a vector of values and use the waffle function:
# * There is an important thing that in the book does not mention. To correctly use the waffle function, you need to use waffle::waffle() functions instead waffle(). Like this:
waffle::waffle(mm.counts, rows = 7, colors = names(mm.counts), title = "M&M Colors", xlab = "1 square = 1 M&Ms")
