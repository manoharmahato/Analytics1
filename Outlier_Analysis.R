#Outlier Analysis
#Outlier not predicted well in by fitted regression model

marks=c(1:80,100,1000)
marks2=c(1:80,100)
marks
par(mfrow=c(1,2))#parameter, deviding 1 row into 2, and '2,2 for dividing into 4'
boxplot(marks2)
summary(marks2)
abline(h=c(1,21,25,41,41.23,61,100))
boxplot(marks)
abline(h=c(1,21,41.5,52.93,61.75,1000))

mean(marks2):mean(marks)
median(marks2):median(marks)
par(mfrow=c(1,1))
summary(marks)





##identify
set.seed(482)
y=rnorm(100)
boxplot(y)
identify(rep(1,length(y)),y,labels=seq_along(y))#click on outlier points with vertical line two three places and press'finish' 
y[86]


