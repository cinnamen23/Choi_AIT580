###------------------
###Regression and Clustering
###------------------

###Students Name:Seunggyu Choi
###GNumber:G01350492


rm(list=ls())

install.packages(ggplot2)

library(ggplot2)

data <- read.csv('EmployeeAttrition.csv')



# Your answers here...

#Regression
  #a
  scatter.smooth(data$TotalWorkingYears,data$MonthlyIncome)
  #It is judged that there is a correlation between the two variables.
  
  #b
  scatter.smooth(data$Age,data$DistanceFromHome)
  #when looking,It is judged that there is no correlation between the two variables.
  
  #c
  cor(data$TotalWorkingYears,data$MonthlyIncome)
  #correlation coefficient:0.7728932 
  #therefore the coefficient tells those two variable has positive correlation between both
  cor(data$Age,data$DistanceFromHome)
  #correlation coefficient:-0.00168612 
  #therefore, the convergent correlation coefficient to zero tells that two variables do not correlate with each other
  
  #d
  
  print(lm(TotalWorkingYears~MonthlyIncome,data=data))
  summary(lm(TotalWorkingYears~MonthlyIncome,data=data))
  #in terms of P-value ( < 2.2e-16)  those two variables have a significant relationship between them, therefore we can judge that "TotalWorkingYears" and "MonthlyIncome"  has an effect between each of them 

#Clustering
  
  #a
  set.seed(123)
  km<- kmeans(data[,c("TotalWorkingYears","HourlyRate")], 3)
  print(km)
  km$size
  km$centers
  #when looking centroid of each group, all three groups have a similar centroid of TotalWorkingYears however the centroid of HourlyRate it distinctly different group 1: 42.55131, group 2:65.84582, group 3:88.85771
  #therefore according to K mean classification those 3 groups are mainly divided by different of HourlyRate.
  
  #b
  
  i<-data[,c("TotalWorkingYears","HourlyRate")]
  set.seed(123)
  km2<- kmeans(i, 5)
  i$cluster<-as.character(km2$cluster)
    
  print(km2)
  km2$centers
  library(ggplot2)
  
  ggplot() +
    geom_point(data = i, 
               mapping = aes(x = TotalWorkingYears, 
                             y = HourlyRate, 
                             colour = cluster))
  #As a result of performing K mean classification with K=5, one group was added in a similar form to the existing three groups. And the values of the right edge are added to the other one group in a different way than before.
  
  
  
  
  
  