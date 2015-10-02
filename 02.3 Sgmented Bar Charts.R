# * We can create Segmented or Stacked Bar Charts in R using the barplot function, but it is neccesary that data
#   is organized in terms of TWO categorical variables.
# * All you need to plot a segmented bar chart is a contingency table.
# EXAMPLE: using M&Ms data frame
# Load the data from local machine
setwd("/Users/freddyiniguez/Documents/GitHub/BigData/BigDataZacatecas/data/")
mnm.df <- read.csv("mnm-clean.csv")
# Use table command to generate a contingency table from the data frame:
# "I am creating a contingency table whose rows will be the color data from the data frame mnm.df, and whose columns will be the defect data from the data frame mnm.df"
mnm.ct <- table(mnm.df$color, mnm.df$defect)
# Then, we need to choose wht kind of variable we want to plot, this because we have ROWS representing the distribution of defects by color or COLUMNS representing the distribution of colors by defect.
# Segmented Bar Chart using COLUMNS (the number 2 indicates that we are using the columns):
mnm.colors <- c("blue", "brown", "green", "orange", "red", "yellow")
barplot(prop.table(mnm.ct,2),
        main = "Distribution of M&M Colors by Defect Category",
        xlab = "defect",
        ylab = "percent",
        col = mnm.colors)

# Segmented Bar Chart using ROWS (the number 1 indicates that we are using the rows):
# In this case we have to tranpose the table porportions using the t command.
barplot(t(plot.table(mnm.ct,1)), 
        main = "Distribution of M$M Defects by Color",
        xlab = "color",
        ylab = "proportion",
        ylim = c(0, 1.4))

# In conclusion, segmented bar charts are usde to visualize conditional distributions, which show the distribution
# of one variable for only the cases tht match a second condition. 