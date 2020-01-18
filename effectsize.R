# 
# Cohen's d is an effect size used to indicate the difference between two means.
# Effect size is broken into the follow: 0.2 (Small), 0.5 (Medium), 0.8 (Large)
# Visualization of Effect Size and Calculation of Cohen's d tutorial.
#

#1. creating our own datasets
dataTom <- c(2,36,44,41,35,45,30,49,24,10,29,48,27,31,48,40,32,7,12,4,6,25,1,45,35,27,10,13,36,10)
dataDick <- c(57,74,37,48,36,52,72,56,32,30,69,67,70,35,30,51,33,65,60,35,38,52,52,42,70,75,43,65,27,60)
dataHarry <- c(98,76,71,77,61,77,65,69,72,80,63,74,62,63,89,79,99,60,63,90,80,53,80,94,54,62,57,76,70,72)


#2. individual histograms
hist(dataTom, breaks=30, xlim=c(0,100), col="Red", main="Tom" )
hist(dataDick, breaks=30, xlim=c(0,100), col="Yellow", main="Dick" )
hist(dataHarry, breaks=30, xlim=c(0,100), col="blue", main="Harry" )


#3. Join together
hist(dataTom, breaks=30, xlim=c(0,100), col="Red", main="Overlapping Histograms", xlab = "Score" )
hist(dataDick, breaks=30, xlim=c(0,100), col="Yellow", add=T)#add = T: adds histograms together
hist(dataHarry, breaks=30, xlim=c(0,100), col="Blue", add=T)
legend("topright", legend=c("Tom","Dick", "Harry"), col=c("Red","Yellow", "Blue"), pt.cex=2, pch=15 )


#4.Calculate Effect Size
install.packages("effsize")
library(effsize)
cohen.d(dataTom, dataDick)   # Tom vs Dick
cohen.d(dataTom, dataHarry)   # Tom vs Harry
cohen.d(dataDick, dataHarry)   # Dick vs Harry

# if you find a difference - it is required to show the difference
# cohens D is the calculation to use to show this 
# use historgrams to show this clearly

