# Question 2: Continue the same with minimum support of 20% and 
# the minimum confidence of 50%.


# Loading Libraries
library(arules)
library(arulesViz)
library(RColorBrewer)

# import dataset
data("Groceries")

# looking into the dataset
View(Groceries)


# Question 1(b):
#  Apply apriori algorithm and mine the frequent itemsets and association rules. Use
#  the default values of minimum support and minimum confidence.

# using apriori() function
rules2 <- apriori(Groceries,
                 parameter = list(supp = 0.1, conf = 0.5))

# using inspect() function
inspect(rules2[1:10])

# using itemFrequencyPlot() function
arules::itemFrequencyPlot(Groceries, topN = 20,
                          col = brewer.pal(8, 'Pastel2'),
                          main = 'Relative Item Frequency Plot',
                          type = "relative",
                          ylab = "Item Frequency (Relative)")
