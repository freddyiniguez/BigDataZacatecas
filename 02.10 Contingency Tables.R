# * Contingency tables provide a way to display the frequency and relative frequencies of observations, which are classified according to two categorical variables.

# SAMPLE: Constructing a SIMPLE contingency table using table().
# For this example, let's load some data from a csv file
setwd("/Users/freddyiniguez/Documents/GitHub/BigData/BigDataZacatecas/data/")
mnms <- read.csv("mnm-clean.csv")
# Now that we have loaded into our R workspace the csv file, let's create a contingency table using the table function
table(mnms$color, mnms$defect)
# The first argument points to the categorical variable that will appear over the rows
# The second argument indicates which categorical variable you want to span the columns

# SAMPLE: Constructing a MORE FANCY contingency table using CrossTable().
# We can create an even more beautiful contingency table using CrossTable, contained in gmodels package. Let's download it and load it into our workspace:
install.packages("gmodels")
library(gmodels)
CrossTable(mnms$color, mnms$defect, prop.t = FALSE, prop.c = FALSE, prop.chisq = FALSE, chisq = FALSE)

# * Marginal distributions
# * When we talk about contingency tables, we can find what it's called marginal distributions. 
# * A marginal distribution shows the distribution of the edge (or margin) from a contingency tables. 
# * So, a contingency table has two marginal distribution for each categorical variable (in the M&Ms sample, one for colors and one for defects.)
# * Lets plot both marginal distributions for the M&Ms dataset.
count.colors <- table(mnms$color)
count.defects <- table(mnms$defect)
par(mfrow=c(1,2))
barplot(count.colors, main = "Marginal Distribution for M&Ms colors")
barplot(count.defects, main = "Marginal Distribution for M&Ms defects.")

# * Conditional distributions
# * Continuing talking about contingency tables, we can also find conditional distributions.
# * This means that we can tell R to set other categorical variable to assume a specific value and plot the distribution of this one.
# * Lets plot an example of this. We can easily set a new subset of the M&Ms dataset to plot the distributions of those defects for green M&Ms and the distribution of colors for those cracked/shipped M&Ms
defects.for.greens <- table(mnms[mnms$color=="G",]$defect)
colors.for.chippedorcracked <- table(mnms[mnms$defect=="C",]$color)
barplot(defects.for.greens, main = "Conditional Distribution of Defects(Green M&Ms)")
barplot(colors.for.chippedorcracked, main = "Conditional Distribution of colors (Chipped/Cracked)")
# * If we rexamine the next line of code, we can get a better understanding of what we are plotting:
defects.for.greens <- table(mnms[mnms$color=="G",]$defect)
# * Next command 'mnms$color == "G",' we are telling R to give us all columns from the dataset where color is equal to G (green)
# * Once we have gotten all the columns, we are telling R to give us just the rows where '$defect' is the specific value
# * 'table' command takes all this values and create a contingency table, which is store in the variable 'defects.for.greens'