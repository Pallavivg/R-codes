install.packages(ggplot2)
library(ggplot2)

#two variables : continuous X, continuous Y
str(mtcars)
mtcars$cyl <- as.factor(mtcars$cyl)
data2<- mtcars[,c("wt","mpg","cyl")] #we use coma here because we access the column names of mtcars data
b <-ggplot2(data2, aes(x =   wt,y = mpg))
#basic plot
b+geom_point()
#change the color and the point by the levels of cyl variable
b + geom_point(aes(color = cyl, shape = cyl)) #geom_point is the geometry

#basic scatter plot
ggplot(data = mtcars, aes(x = wt,y=mpg))+
  geom_point()

#change the point size, and shape
ggplot(mtcars,aes(x=wt,y=mpg))+
  geom_point(size =4,shape=10,color="red")

p<- ggplot(mtcars, aes(x=cyl,y=mpg))+geom_boxplot()
p

#change the apperance and the orientation angle of axis tick labels
p + theme (axis.text.x = element_text(face="italic",size=14,angle=90),
           axis.text.y = element_text(face="italic",size=14,angle=90))

#hide x and y axis tick mark labels
p + theme(
  axis.text.x = element_blank(),
  axis.text.y = element_blank())

#remove axis ticks and tick mark labels
p + theme(
  axis.text.x = element_blank(),
  axis.text.y = element_blank(),
  axis.ticks = element_blank())

#customize a continuous axis
# scatter plot
sp<-ggplot(mtcars, aes(x = wt,y = mpg)) + geom_point()
sp

#change x and y axis labels and limits
sp + scale_x_continuous(name="wt_cars", limits = c(0,20))+
  scale_y_continuous(name="mpg_cars", limits=c(0,50))






















