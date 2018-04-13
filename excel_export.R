#Creating a data frame|
rollno=paste('S',1:30,sep = "_")# separator
name=paste0('student',1:30,'-xyz')# no sep in paste 0
name
gender=sample(c('M','F'),size = 30,replace=T,prob=c(.5,.5))
course=sample(c('btech','mtech','phd'),size = 30,prob=c(.5,.3,.2),replace = T)
marks=floor(rnorm(30,mean=50,sd=20))
age=floor(runif(30,20,40))
married=sample(x=c(TRUE,FALSE),size=30,replace = T,prob = c(.2,.8))
df=data.frame(rollno,name,gender,age,course,marks,married)
df

#subset the data
sample(nrow(df),3)
df1=df[sample(nrow(df),3),]
(df2=subset(df,age>=20&age<27,select=c(rollno,name)))
(df2b=subset(df,marks>=55&marks<70,select=c(name,marks)))
library(dplyr)
(df3=sample_n(df,10))
(df4=sample_frac(df,.5))

df5=df[which(gender=='F'&age>25),]

#save this data for export
write.csv(df,'./data/students1.csv')

library(xlsx)
#library(rJava)#rJava also to be installed, if java not there in PC
Sys.setenv(JAVA_HOME="C:\\Program Files\\java\\jrel.8.0_144")
write.xlsx(df,'./data/students1.xlsx',sheetname="IITG1",row.names=F,append=T)
write.xlsx(df2,'./data/students1.xlsx',sheetname="IITG2",row.names=F,append=T)



?paste

v1=1:30
v1
class(v1)



v1=c('A','B','C') # create a vector
v1 # Print the vector
class(v1) #Print the class of vector
(v2=c(1,2,3)) #Assign and Print
v2
class(v2)
(v3=c(TRUE, FALSE, TRUE))

class(v3)
v3
v3a=c(T,F,T)
v4=100:200
v4
v5=seq(1,10,2)
v4: v5
v4[-c(1,3,4)]
v4[v4>150]
v7=c('A','C')
v1
v1[v1%in% v7]
v1['A'] #wrong/error
v1[1]

v8=10:15



?`dim,itemMatrix-method`

#Arrays----
(myarray=array(101:124,dim=c(4,3,2))) # row coloumn matrix

(myarray=array(1:24,dim=c(4,3,2),dimnames=list(c('S1','S2','S3','S4'),c('sub1','sub2','sub3'),c('Dept1','Dept2'))))
?array
apply(myarray,1,sum)
apply(myarray,2,mean)
apply(myarray,3,sum)
apply(myarray,c(2,3),mean)
apply(myarray,c(1,3),sd)
apply(myarray,c(1,2),max)







#Matrix----
1:24
(mymatrix=matrix(1:24,ncol=6,byrow=T))
(mymatrix=matrix(11:34,nrow=6,byrow=T))
length(11:35)
mymatrix[2:4,3:4]
mymatrix[5,3]
mymatrix
?matrix
(mymatrix=matrix(1:24,ncol=4,byrow=TRUE))
paste('R',1:6, sep='_')
dimnames(mymatrix)=list(c(paste('R',1:6, sep='_')), c(paste('c',1:4,sep='_')))
mymatrix
paste('c',1:4,sep='_')
mymatrix
?dimnames
mymatrix[c('R-1'),]
mymatrix[c('c-3')]
mymatrix[c('R-1','R-3'),]
mymatrix[c(1,3),]

mymatrix
colsums(mymatrix)
rowsums(mymatrix)
rowMeans(mymatrix)
colMeans(mymatrix)










#List----
listL1=list(v1,students,mymatrix,myarray)
list1


#?1s
1s()
rm(list=1s())
1s()


#Factors----

#DataFrame----
rollno=c(1,2,3)
name=c('Rohit','Lalit','Hitesh')
course=c('MBA','BBA','MCA')
dept=c('Dept1','Dept1','Dept2')
marks=floor(rnorm(3,50,10)) #marks of 3 students normally distributed mean50 stdDev10
?rnorm
rnorm(3,50,10)
students=data.frame(rollno, name, course, dept, marks)
students
class(students)
str(students)
summary(students)
df=data.frame(rollno=c(1,2,3), name=c('Rohit',))
















#Factors
name=c('S1','S2','S3','S4','S5')
course=c('PhD','MTech','BTech','BTech','PhD')
gender=c('M','F','M','F','M')
grade=c('A','B','C','A','F')
marks=c(runif(5,50,100))

marks=floor(rnorm(5,75,10))
rnorm(5,75,10)
df=data.frame(name, course, gender, grade, marks)
df
str(df)
df[1:2,]
df[,1:3]
df$course
df$name=as.character(df$name)
str(df)
df$grades=factor(df$grades,ordered=T,levels=c('A','B','C','D','E','F'))
str(df)
df$grades
df$gender=factor(df$gender,ordered=T,level=c('M','F'))
df$gender



#Base Package
letters[1:26]
(L1=letters[1:26])
(L2=LETTERS[1:26])
(M1=month,abb[1:12])
(M2=month,name[1:12])

sample(L1,2)
sample(L1,30)
sample(L1,30,replace=T)
sample(M1,5)
set.seed(10)
