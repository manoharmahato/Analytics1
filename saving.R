#Case study Denco

sales1=read.csv("./data/denco.csv")

#install.packages('gsheet')
sales2=read.csv(file.choose())
str(sales2)


#using gsheet

library(gsheet)
url="https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907"
sales3=as.data.frame(gsheet2tb1(url))
str(sales3)