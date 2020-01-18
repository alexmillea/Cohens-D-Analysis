# The Kruskal-Wallis H test (sometimes also called the "one-way ANOVA on ranks")
# is a rank-based nonparametric test that can be used to determine if there are 
# statistically significant differences between two or more groups.

setwd("C:/Users/Alexander/OneDrive - National College of Ireland/4th Year/Semester 2/Advanced Business Analysis/samples/Kruskal Wallis")
kw <- read.csv("KWgroups.csv", sep = ",", header = TRUE)

#shapiro wilk test - test for normality 
shapiro.test(kw$ï..Group.1)
shapiro.test(kw$Group.2)
shapiro.test(kw$Group.3)

#Shapiro-Wilk normality test results
#data:  kw$ï..Group.1
#W = 0.48568, p-value = 6.036e-07
#
#Shapiro-Wilk normality test Group 2
#data:  kw$Group.2
#W = 0.67843, p-value = 4.53e-05
#
#Shapiro-Wilk normality test Group 3
#data:  kw$Group.3
#W = 0.74043, p-value = 0.0002454

#visualisation
hist(kw$ï..Group.1)
hist(kw$Group.2)
hist(kw$Group.3)

boxplot(kw)
boxplot(kw$ï..Group.1)
boxplot(kw$Group.2)
boxplot(kw$Group.3)

#kruskal wallis test
kw.test =  kruskal.test(kw)
kw.test

#Kruskal-Wallis rank sum test
#
#data:  kw
#Kruskal-Wallis chi-squared = 7.3553, df = 2, p-value = 0.02528

#Decision - reject / fail to reject 
#p is low, reject the null hypothesis ..... p < 0.05

#NOTE: Tukey test can be carried out as there is a difference between the groups
# the tukey test is used to identify where the difference with each group 








