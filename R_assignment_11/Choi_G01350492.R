###------------------
###Visualization
###------------------

###Students Name:
###GNumber:

getwd()
rm(list=ls())

data <- read.csv('../data/EmployeeAttrition.csv')

hist(data$Age)

#Histogram by age

plot(data$MonthlyIncome~data$Age)

#Scatterplot by age and monthly income