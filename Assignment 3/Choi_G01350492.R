###------------------
###Hypothesis Testing
###------------------

###Students Name:Seunggyu Choi
###GNumber:G01350492

setwd("~/git/AIT580/")

rm(list=ls())

data <- read.csv('data/EmployeeAttrition.csv')


# Your hypothesis testings here...

# 1

MonthlyIncome_M = data$MonthlyIncome[data$Gender=='Male']
MonthlyIncome_F = data$MonthlyIncome[data$Gender=='Female']

print(t.test(MonthlyIncome_M,MonthlyIncome_F,conf.level = 0.95,alternative = 'greater'))

#H0:MonthlyIncome_M = MonthlyIncome_F
#H1:MonthlyIncome_M > MonthlyIncome_F
#p-value=0.8891
#Therefore, the alternative hypothesis that men's monthly income is greater than women's monthly income cannot be accepted.

# 2
WorkLifeBalance_M =data$WorkLifeBalance[data$Gender=='Male']
WorkLifeBalance_F =data$WorkLifeBalance[data$Gender=='Female']

print(t.test(WorkLifeBalance_M,WorkLifeBalance_F,conf.level = 0.95,alternative = 'less'))

#H0:WorkLifeBalance_M = WorkLifeBalance_F
#H1:WorkLifeBalance_M < WorkLifeBalance_F
#p-value=0.4577
#Therefore, the alternative hypothesis that men's WorkLifeBalance is less than women's WorkLifeBalance cannot be accepted.

# 3
YearsAtCompany_S=data$YearsAtCompany[data$MaritalStatus=='Single']
YearsAtCompany_M=data$YearsAtCompany[data$MaritalStatus=='Married']

print(t.test(YearsAtCompany_S,YearsAtCompany_M,conf.level = 0.95,alternative = 'less'))

#H0:YearsAtCompany_S = YearsAtCompany_M
#H1:YearsAtCompany_S < YearsAtCompany_M
#p-value=0.004973
#Therefore, the alternative hypothesis that single employee's YearsAtCompany is less than married employee's YearsAtCompany can be accepted.

# 4
EnvironmentalSatisfaction_Y=data$EnvironmentSatisfaction[data$Attrition=='Yes']
EnvironmentalSatisfaction_N=data$EnvironmentSatisfaction[data$Attrition=='No']

print(t.test(EnvironmentalSatisfaction_Y,EnvironmentalSatisfaction_N,conf.level = 0.95,alternative = 'less'))

#H0:EnvironmentalSatisfaction_Y = EnvironmentalSatisfaction_N
#H1:EnvironmentalSatisfaction_Y < EnvironmentalSatisfaction_N
#p-value=0.0001046
#Therefore, the alternative hypothesis that the EnvironmentalSatisfaction of Attrition=Yes is less than the EnvironmentalSatisfaction of Attrition=No can be accepted.

# 5
MonthlyIncome_MG= data$MonthlyIncome[data$JobRole=='Manager']
MonthlyIncome_LT=data$MonthlyIncome[data$JobRole=='Laboratory Technician']

print(t.test(MonthlyIncome_MG,MonthlyIncome_LT,conf.level = 0.95,alternative = 'greater'))

#H0:MonthlyIncome_MG = MonthlyIncome_LT
#H1:MonthlyIncome_MG > MonthlyIncome_LT
#p-value< 2.2e-16
#Therefore, the alternative hypothesis that the MonthlyIncome of Manager is greater than the MonthlyIncome of Laboratory Technician can be accepted.

# 6
print(cor.test(data$YearsAtCompany,data$DailyRate))

#H0:The YearsAtCompany variable and the DailyRate variable are unrelated.
#H1:The YearsAtCompany variable and the DailyRate variable are related.
#p-value = 0.1919
#cor= -0.03405477
#Therefore, the alternative hypothesis that the YearsAtCompany variable and the DailyRate variable are related cannot be accepted.

# 7
print(cor.test(data$YearsAtCompany,data$MonthlyIncome))

#H0:The YearsAtCompany variable and the MonthlyIncome variable are unrelated.
#H1:The YearsAtCompany variable and the MonthlyIncome variable are related.
#p-value < 2.2e-16
#cor= 0.5142848 
#Therefore, the alternative hypothesis that the YearsAtCompany variable and the MonthlyIncome variable are related can be accepted.

# 8
print(summary(aov(YearsAtCompany~MaritalStatus,data=data)))
#H0:There is no difference between each group of MaritalStatus.
#H1:There is difference between each group of MaritalStatus.
#p-value = 0.0247
#Therefore, the alternative hypothesis that there is a difference between groups of MaritalStatus can be accepted.


#9
data$PerformanceRating=as.factor(data$PerformanceRating)
print(summary(aov(MonthlyIncome~PerformanceRating,data=data)))
#H0:There is no difference between each group of PerformanceRating.
#H1:There is difference between each group of PerformanceRating.
#p-value = 0.512
#Therefore, the alternative hypothesis that there is a difference between groups of PerformanceRating cannot be accepted.


#10
data$WorkLifeBalance=as.factor(data$WorkLifeBalance)
print(summary(aov(MonthlyIncome~WorkLifeBalance,data=data)))
#H0:There is no difference between each group of WorkLifeBalance.
#H1:There is difference between each group of WorkLifeBalance.
#p-value = 0.607
#Therefore, the alternative hypothesis that there is a difference between groups of WorkLifeBalance cannot be accepted.


