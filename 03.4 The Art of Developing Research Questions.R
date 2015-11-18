# The Objective of this chapter is to 1) construct well-formed research questions that can be explored using various methods for statistical hypothesis testing,
# and 2) deconstruct research questions to determine which statistical methodology should be used.

# The statistical test we will review for this chapter are:
# * One-sample t-test
# * Two-sample t-test
# * Paired t-test
# * One-way Analysis of Variance (ANOVA)
# * One proportion z-test
# * Two proportion z-test
# * Chi-Square Test of Independence
# * F Test for Equality of Variances

# ---One-sample t-test---
# For this test, we only need a quantitative variable for our sample. We will compare the measurement we get from our sample with a standard, typical or expected value, or a recommended value.
# It is important to say that all recommendations that made comes from a reputable and valid source and we need to mentions always we talk or present our results.
# For this test, research questions are of the form:
# * Is the value of [QUANTITATIVE VARIABLE] for [ENTITIES WE ARE INTERESTED IN] [GREATER THAN, LESS THAN, DIFFERENT THAN] [THE VALUE OF THE STANDARD, TYPICAL/EXPECTED VALUR, OR RECOMMENDATION FOR THE QUANTITATIVE VARIABLE]?
# * Do [ENTITIES WE ARE INTERESTED IN] [MEET, EXCEED, OR FALL SHORT OF THE STANDARD, TYPICAL/EXPECTED VALUE, OR RECOMMENDATION FOR THE QUANTITATIVE VARIABLE], on average?
# For example:
# * Is the average body temperature [quantitative variable] of students on our campus [entities] different than the expected value of 98.6 degrees F for healthy individuals [expected value for the quantitative variable]?
# * Do cars on this road [entities] drive faster than the posted speed limit [Standard for the quantitative variable]?
# * Did students in this class [entities] do better than students in last year's class [typical value for the quantitative variable] on Exam 1[quantitative variable]?
# Because this is a t-test, the Test Statistics (T.S.) that you will calculate will be a t.

# ---Two-sample t-test---
# This test compares the mean of a quantative variable between two groups. so, we need at least ONE categorical variable and one quantitative variable.
# For this test, research questions are of the form:
# * Is the average of [QUANTITATIVE VARIABLE] [GREATER, LESS, DIFFERENT] for [CATEGORY 1] than it is for [CATEGORY 2]?
# * Do [ENTITIES IN CATEGORY 1] have [GREATER, LESS, DIFFERENT] average [QUANTITATIVE VARIABLE]s than [ENTITIES IN CATEGORY 2]?
# For example:
# * Is the average number of nights a person drinks each month [Quantitative Variable] greater for male students in the College of Business [Category 1] than it is for male students in the College of Technology [Category 2]?
# Because this is a t-test, the Test Statistics (T.S.) that you will calculate will be a t.

# ---Paired-test---
# This test is pretty similar to the one above, the two-sample t-test, just with ONE big difference: the quantitative variable must be measured at two different times or under two different conditions.
# For this test, research questions are of the form:
# * Is the average difference of the [QUANTITATIVE VARIABLE] from the beggining to the end of the evaluation period [GREATER THAN, LESS THAN, DIFFERENT] than zero?
# * Did performance [QUANTITATIVE VARIABLE] improve from the beginning of the period to the end?
# Because this is a t-test, the Test Statistics (T.S.) that you will calculate will be a t.

# ---One-way Analysis of Variance (ANOVA)---
# This test is similar to the two-sample t-test, because you need a categorical variable and a quantitative variable.
# Nevertheless, the categorical variable must to have three or more groups, so instead the quantitate variable is compare with only two groups, you are able to compare the mean of a quantitative variable between three or more groups.
# For this test, research questions are of the form:
# * Is the average value of [QUANTITATIVE VARIABLE] the same [IN ALL N CATEGORIES]?
# * Do [ENTITIES IN CATEGORY 1], [ENTITIES IN CATEGORY 2], or [ENTITIES IN CATEGORY N] report different [QUANTITATE VARIABLE]?
# * Which of the n treatments works best to achieve [A PARTICULAR GOAL]?
# * Was the average [QUANTITATIVE VARIABLE] different at any of the n time periods when it was measured?
# Because tis is NOT a t-test, the Test Statistics (T.S.) that you will calculate will be an F.

# ---One proportion z-test---
# This test able you to compare a a proportion that you have observed in your sample with a standard or recommended proportion.
# For this test, research questions are of the form:
# * Is the proportion of [SUBJECTS WHO MEET A PARTICULAR CONDITION OR ARE MEMBERS OF A PARTICULAR CATEGORY] [GREATHER THAN, LESS THAN, DIFFERENT] than [THE STANDARD OR RECOMMENDED VALUE WE EXPECT]?
# * Do a majority of subjects [MEET THIS PARTICULAR CONDITION]?
# Because this is a z-test, the Test Sttistic (T.S.) that you will calculate will be a z.

# ---Two proportion z-test---
# Similar to One proportion z-test, this this test helps you to compare a proportion observed in one group in your sample, with
# a proportion observed in another group.
# For this test, research questions are of the form:
# * Is the proportion of [SUBJECTS WHO MEET A PARTICULAR CONDITION OR ARE MEMBERS OF A PARTICULAR CATEGORY] [GREATER THAN, LESS THAN, DIFFERENT] than the proportion of [SUBJECTS WHO MEET A PARTICULAR CONDITION OR ARE MEMBERS OF A PARTICULAR CATEGORY]?
# * Is there a difference between the proportion of [SUBJECTS WHO MEET ONE CONDITION] and [SUBJECTS WHO MEET ANOTHER CONDITION]?

# ---Chi-Square Test f Independece---
# This test helps you to compare counts of observations that have been classified according to EXACTLY two categorical variables to see if they are distributed evenly
# between all the combinations of categories. If these categorical variables are not distributed evenly, that indicates a relatonship of some kind could exists, but there
# is not way to identify exactly what kind of relationship is it.
# For this test, research questions are of the form:
# * Are [CATEGORICAL VARIABLE 1] and [CATEGORICAL VARIABLE 2] independent?
# * Is there some relationship between [CATEGORICAL VARIABLE] and [CATEGORICAL VARIABLE 2]?
# Because this is a Chi-square test, the Test Statistics (T.S.) that you will calculate will be a X^2.

# ---F Test for Equality (Homogeneity) of Variances---
# Helpful test to compare a variance observed in one group with a variance observed in another group in your sample.
# This test can be used to check assumptions for other tests that require groups with equal variances.
# For tis test, research questions are of the form:
# * Is the variance of [A QUANTITATIVE VARIABLE] in [SUBJECTS WHO MEET A PARTICULAR CONDITION OR ARE MEMBERS OF A PARTICULAR CATEGORY] [GREATER THAN, LESS THAN, DIFFERENT] than the variance of [A QUANTITATIVE VARIABLE] in [SUBJECT WHO MEET A PARTICULAR CONDITION OR ARE MEMBERS OF A PARTICULAR CATEGORY]?
# * Has the variance of a particular physical value changed since a process improvement effort was implemented?
# Because this is an F-Test, the Test Statistics(T.S.) that you will calculate will be a F.