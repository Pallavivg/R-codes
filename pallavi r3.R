#apply function: it takes 3 arguments : matrix/array, margin and function
m<-matrix(c(1,2,3,4),2,2)
m
apply(m,1,sum) #1 ind it is applied in row
apply(m,2,sum) # 2 ind it is applied in column
apply(m,2,mean)
apply(m,2,min)

#lapply : it takes list and function
l<-list(a=c(1,1),b=c(2,2),c=c(3,3))
l
lapply(l,sum)
lapply(l,mean)

#sapply:it is same as lapply but it simplifies the result
l<-list(a=c(1,1),b=c(2,2),c=c(3,3))
sapply(l,mean)

#tapply: it takes 3 arguments vector,factor of vector and function
age<-c(23,33,28,21,20,19,34)
gender<-c("m","m","m","f","f","f","m")
f<-factor(gender)
tapply(age,f,mean)
tapply(age,f,sum)

#dplyr package
install.packages("dplyr")
library(dplyr)

mtcars<-mtcars #to view the comp data
View(mtcars)

#select: to select column by name from complete large data set
select (mtcars,mpg,disp)
select(mtcars,mpg:drat) #to select range of columns by name

#filter: used for filtering
#sample filter
filter(mtcars,cyl<-8)
filter(mtcars,cyl<-6)
filter(mtcars,cyl<-6)

#multiple criteria filter
filter(mtcars,cyl<6 & vs==1)
filter(mtcars,cyl<6|vs==1) #| means or

#arrange function:helps arrange data in a specific order

arrange(mtcars,desc(disp)) #descending order
arrange(mtcars,disp) # by default ascending order

#mutate function:it helps in addding new var to an existing data

mutate(mtcars,new_disp = disp/1.2037)

#summerise function: it summerizes the whole data
summerise(mtcars,mean(mpg))

#summerise with group function: grouping is done based on cyl var :4,6,8 values
summerise(group_by(mtcars,cyl),mean(mpg))

install.packages("readxl")
library("readxl")

#text file
data1<-readLines("file") #readline command is used for text file

library(foreign)
getwd()

data8<-read.spss("C:/Users/Pallavi V G/Documents")

#attach it to data frame 
data9<- as.data.frame(data8)
View(data9)















