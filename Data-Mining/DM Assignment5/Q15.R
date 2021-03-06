
setwd("C:\\Users\\HARIKA\\Desktop\\DataScience_2019501065\\Data-Mining\\DM Assignment5")
exams <- read.csv("spring2008exams.csv")
model <- lm(exams$Midterm.2 ~ exams$Midterm.1)
plot(exams$Midterm.1, exams$Midterm.2, pch=19,xlab="Exam 1", ylab="Exam2",xlim=c(10,100),ylim=c(10,100))
abline(model)
sort(model$residuals)