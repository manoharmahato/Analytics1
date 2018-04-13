#financial analytics case study
#finding how people take decisions to buy products
#creating decision tree
library(rpart)
library(rpart.plot)


#students:Gender~ (male and female) buy & product
#Rownames
rollno=paste('S',1:1000,sep = '')
rollno

#variable gender decision
set.seed(100)
gender=sample(x=c('male','female'),size=1000,replace = T,prob = c(0.5,0.5))
head(gender)
table(gender)
?replace

#variable buy decision
set.seed(3000)
buy=sample(x=c('Buy','Not Buy'),size=1000,replace = T,prob = c(0.5,0.5))
head(buy)
table(buy)
prop.table(table(buy))

#create data frame
students1=data.frame(gender,buy)
row.names(students1)=rollno
head(students1)

#Table
table(students1)
prop.table(table(students1))
addmargins(prop.table(table(students1)))
(t1=table(students1$gender,students1$buy))
addmargins(t1)
prop.table(table(students1$gender,students1$buy))
addmargins(prop.table(table(students1$gender,students1$buy)))

#Model1
fit1=rpart(buy~gender,data=students1,minsplit=4,minbucket=2)

#minsplit is 20 and determines the minimal number of observation per leaf('minbucket')
fit1 #print(fit1)

library(rpart.plot)
rpart.plot(fit1,main='classification tree',nn=T,type=4,extra=104)

fit1
predict(fit1,newdata=data.frame(gender='Female'))
predict(fit1,newdata=data.frame(gender='Female'),type='class')
predict(fit1,newdata=data.frame(gender=c('Male','Female',Male)))
        
        
 #add another column
set.seed(5000)
married=sample(x=c('married','single'),size=1000,replace=T,prob=c(0.5,0.5))
table(married)
students2=data.frame(gender,married,buy)
rownames(students2)=rollno
head(students2)
str(students2)
prop.table(ftable(students2))


library(rpart)
fit2=rpart(buy~gender+married,data=students2,minsplit=2)
summary(fit2)
fit2
rpart.plot(fit2,type=2,extra=104,tweak=1.2,under=T,shadow=c('brown','green','red'),nn=T)
fit2
prp(fit2)


#predict










        












           


