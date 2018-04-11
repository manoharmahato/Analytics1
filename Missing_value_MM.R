#Missing Values

v1=c(1,2,NA,NA,5)
#v1=NULL #No data
#v1
is.na(v1) #TRUE is missing and outlier
mean(v1)
mean(v1,na.rm=T)
vla=na.omit(v1)
sum(vla)
?na.omit
anyNA(v1)
#all
v1
mean(v1,na.rm=T)
v1[c(3,4)]
v1[is.na(v1)]

v1[is.na(v1)]=mean(v1,na.rm=T)
v1




#denoted by NA
library(VIM)
data(sleep,package = 'VIM')
head(sleep)
dim(sleep)
complete.cases(sleep)#all complete rows without any missing values
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
is.na(sleep$Dream)
sum(is.na(sleep$Dream))







