#MLR using mtcars data set
#mtcars
mtcars #mtcars dataset
data() #available dataset in R through libraries
?mtcars #help on mtcars
#Factors to predict mileage

mtcarsfit1=lm(mpg~cyl~disp~hp~drat~wt~qsec~vs~am~gear~carb, data=mtcars)
names(mtcars)
summary(mtcarsfit1)
mtcarsfit2=lm(mpg~.,data=mtcars)
summary(mtcarsfit2)

library(MASS)
model1a=lm(mpg~.,data=mtcars))#used to consider all the parameters
model1b=lm(mpg~1,data=mtcars))#consider only intercept

summary(model1a)
summary(model1b)

stepboth=stepAIC(model1a,direction = 'both')
fit1=lm(mpg~wt~qsec~am,data=mtcars)
summary(fit1)

stepfwd=stepAIC(model1b,direction = 'forward',scope = list(upper=model1a,lower=model1b))
stepback=stepAIC(model1a,direction = 'backward')
"stepAIC"

#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
library(olsrr)
model<=lm(mpg~disp~hp~wt~qsec,data=mtcars)
k<=ols_step_all_possible(model)
plot(k)
k



