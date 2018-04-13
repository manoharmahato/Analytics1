#Logistic regression
dataset = read.csv("./data/logr2.csv")
dataset = read.csv(file.choose())
summary(dataset)
View(dataset)

#split the dataset into the training set and Test set
#install.packages
library(caTools)
set.seed(2000)
split=sample.split(dataset$purchased,SplitRatio = 0.75)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
dim(dataset)
nrow(training_set)
dim(test_set)
length(dataset)


class(dataset$gender)
dataset$gender
names(training_set)
names(dataset)

#Fitting Logistic Regression to the training set
logitmodel1=glm(purchased~gender+age+salary,family = binomial,data=training_set)
summary(logitmodel1)

#Fitting Logistic Regression to the training_set~being insignificant is dropped here
logitmodel2=glm(purchased~age+salary,family=binomial,data=training_set)

summary(logitmodel2)$coefficient


test_set2=data.frame(age=c(40,65),salary=c(40000,50000))
prob_pred2=predict(logitmodel2,type='response',newdata=test_set2)
prob_pred2
cbind(test_set2,prob_pred2)

#predicting the testset results from testset
test_set
prob_pred=predict(logitmodel2,type='response',newdata=test_set)
df_prob_pred=as.data.frame(prob_pred)
summary(df_prob_pred)
head(df_prob_pred)

y_pred=ifelse(prob_pred>0.5,1,0)
y_pred
cbind(test_set$purchased,y_pred)

#Making the confusion mmatrix
cm=table(test_set[0.5],y_pred)
cm
caret::confusionmatrix(cm)
















