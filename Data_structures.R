# Data structures in R

#vectors----
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





#Arrays----

#Matrix----

#List----

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



