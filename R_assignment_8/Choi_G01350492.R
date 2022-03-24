###--------------------------------------
#Student Name:Seunggyu Choi 
#GNumber:G01350492
###--------------------------------------

rm(list=ls())

data <- read.csv('~/git/data/EmployeeAttrition.csv') #error : cannot open file 'C:/Users/Simon/Documents/git/data/EmployeeAttrition.csv': No such file or directory
data <- read.csv('EmployeeAttrition.csv')
data1 <- read.csv('Acme.csv')

# this is just for testing to use "print" statement.
print(data[1,])

#Part1

# a. Find the number of rows and columns in the dataset (5 points)
print(nrow(data))
print(ncol(data))

# b. Find the maximum Age in the dataset (5 points)
print(max(data$Age))

# c. Find the minimum DailyRate in the dataset (5 points)
print(min(data$DailyRate))

# d. Find the average/mean MontlyIncome in the dataset (5 points)
print(mean(data$MonthlyIncome))

# e. How many employees rated WorkLifeBalance as 1 (5 points)
print(sum(data$WorkLifeBalance==1))

# f. What percent of total employees have TotalWorkingYears less than equal to 5? Also calculate the percentage for TotalWorkingYears greater than 5 (5 points)
print((sum(data$TotalWorkingYears<=5)/nrow(data))*100)
print((sum(data$TotalWorkingYears>5)/nrow(data))*100)

# g. Print EmployeeNumber, Department and MaritalStatus for those employees whose Attrition is Yes and RelationshipSatisfaction is 1 and YearsSinceLastPromotion is greater than 3 (10 points)
a<-subset(data,select = c(EmployeeNumber,Department,MaritalStatus),Attrition=='Yes'&RelationshipSatisfaction==1&YearsSinceLastPromotion>3)
print(a)

# h. Find the mean, median, mode, standard deviation and frequency distribution of EnvironmentSatisfaction for males and females separately. (Hint: For frequency distribution use table() function (10 points)
library(dplyr)
su<-data%>%
  group_by(Gender)%>%
  summarise(Mean=mean(EnvironmentSatisfaction), Median=median(EnvironmentSatisfaction),Mod=mode(EnvironmentSatisfaction), Std=sd(EnvironmentSatisfaction))
print(su)


mfreq=table(subset(data,Gender=='Male',select = c(EnvironmentSatisfaction))$EnvironmentSatisfaction)
ffreq=table(subset(data,Gender=='Female',select = c(EnvironmentSatisfaction))$EnvironmentSatisfaction)

print(mfreq)
print(ffreq)


#Part2
#1. Identify data types for each attribute in the dataset (5 points)
print(class(data1$Years))
print(class(data1$StSalary))
print(class(data1$Gender))
print(class(data1$Degree))
#2. Produce a summary statistic for each attribute in the dataset (5 points)
summary(data1)
#3. Produce visualizations for each attribute (Hint: use hist() function) (5 points)
print(hist(data1$Years))
print(hist(data1$StSalary))
print(plot(data1$Gender,main='Gender'))
print(plot(data1$Degree,main='Degree'))
#4. Display the relationship between

  #a. Years of Experience and Starting Salary for all employees (5 points)
  install.packages("ggplot2")
  library(ggplot2)
  ggplot(data1, aes(x=Years,y=StSalary))+geom_point()+ggtitle(' Years of Experience and Starting Salary for all employees')

  #b. Years of Experience and Starting Salary for each gender (5 points)
 
  ggplot(data1, aes(Years, y=StSalary,color=Gender))+ggtitle('Years of Experience and Starting Salary for each gender')+geom_point()
  
  #c. Years of Experience and Starting Salary for each degree (5 points) (Hint: use Scatter Plots)
  
  ggplot(data1,aes(Years,y=StSalary,shape=Degree,color=Degree))+geom_point()+ggtitle('Years of Experience and Starting Salary for each degree')
 
  
#5. Find the correlation between Starting Salary and Years of Experience? (5 points)
  attach(data1)
  print(cor(Years,StSalary,method='pearson'))
  
  #a. Is the correlation different for each gender? (5 points)
  library(dplyr)
  f<-data1%>%
    filter(Gender=='F')
  
  print(cor(f$Years,f$StSalary,method='pearson'))
  
  m<-data1%>%
    filter(Gender=='M')
  
  print(cor(m$Years,m$StSalary,method='pearson'))
  
  #b. Is the correlation different for each degree? (5 points)
  bs<-data1%>%
    filter(Degree=='BS')
  print(cor(bs$Years, bs$StSalary, method = "pearson"))

  ms<-data1%>%
    filter(Degree=='MS')
  print(cor(ms$Years, ms$StSalary, method = "pearson"))
  
  phd<-data1%>%
    filter(Degree=='PhD')
  print(cor(phd$Years, phd$StSalary, method = "pearson"))

  
  
#6. What can you conclude about Acme with respect to gender bias after your overall analysis? (5 points)

#Years worked and employee salaries show a positive correlation. Correlation coefficient = 0.7054665
#Men's and women's salaries roughly show in the scatterplot that men outperform women slightly.
#Also, It can be seen through scatterplot that there is a difference in salary depending on the degree of study.