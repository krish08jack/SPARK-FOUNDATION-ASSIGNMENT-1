Sparks Foundation - Data Science & Analytics Internship!
#Task_1 - Prediction using Supervised Machine Learning Level Begineer!
Description of the task1:-

Predict the percentage of marks of an student based on the number of study hours.

This is a simple linear regression task as it involves just 2 variables.

Platform Used-R

student.dat<-read.csv(" http://bit.ly/w-data ")
student.dat
scatter.smooth(student.dat$hours,student.dat$score,col = "blue",main = "Score & Hours Regression")
student.regression<-lm(score~hours,data=student.dat)
summary(student.regression)
library(caTools)
split<-sample.split(student.dat,SplitRatio=0.25)
split
train<-subset(student.dat,split=="TRUE")
test<-subset(student.dat,split=="FALSE")
train
test
model<-lm(score~ .,data=train)
summary(model)
pred<-predict(model,test)
pred
a <- data.frame(hours= 9.25)
result <-  predict(model,a)
print(result)

