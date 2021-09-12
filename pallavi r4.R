View(mtcars)

#data visualization
counts <-table(mtcars$gear) #verticle by default
barplot(counts) #bar chartbfor displaying the character var

#horizontal graph
barplot(counts,horiz = TRUE)

#a verticle bar chart with tittle and colours
counts<- table(mtcars$gear)
barplot(counts,
        main = "Simple Bar Plot",
        xlab = "Improvement",
        ylab = "Frequency",
        legend = rownames(counts),
        col=c("red","yellow","green")
        )

#crreating a stacked bar chart

counts<- table(mtcars$vs,mtcars$gear)
barplot(counts,
        main = "car display by vs and gears",
        xlab = "no of gears",
        ylab = "frequency",
        legend = rownames(counts), #legend is always based on the first varible i.e vs here
        col=c("grey","green")
        )

#grouped bar chart

counts<- table(mtcars$vs,mtcars$gear)
barplot(counts,
        main = "car display by vs and gears",
        xlab = "no of gears",
        ylab = "frequency",
        legend = rownames(counts),
        beside = TRUE,
        col=c("grey","green")
)

#pie chart
slices <-c(10,12,4,16,8)
lbls <-c("uk","aus","india","america","engl")
pie (slices,labels = lbls,main = "simple pie chart")

#pie chart with percentage and colours
slices<- c(10,12,4,16,8)
pct<- round(slices/sum(slices)*100)
pct
lbls<- paste(c("uk","aus","india","america","engl")," ",pct,"%",sep="")
pie(slices,labels = lbls,
    col = rainbow(5),main = "pie chart with percentages")

# 3 dimensional pie chart
library(plotrix)
slices<- c(10,12,4,16,8)
lbls <-paste(c("uk","aus","india","america","engl"),"",pct,"%",sep="")
pie3D(slices,labels=lbls,explode=0.5,main="3D pie chart")


#creating the histogram for displaying the continuous data

mtcars$mpg
hist(mtcars$mpg,labels = TRUE) #to add no at the top of the histogram use labels = TRUE

#colored histogram

mtcars$mpg
hist(mtcars$mpg,breaks = 8,col = "darkgreen",labels = TRUE)
hist(mtcars$mpg,breaks = 10,col = "darkgreen",labels = TRUE)

#kernel density plots:these displays the dis of continuous var much more efficiently used than histogram
density_data<-density(mtcars$mpg)
plot(density_data)

#colored kernel density plots
density_data<-density(mtcars$mpg)
plot(density_data,main = "kernel density of miles per gallon")
polygon(density_data,col = "skyblue",border = "black")

#line charts:usually to visualize the data that changes over time, we can't use mtcars data because no time in the data 
#line charts needs time data so we create the data here
weight <-c(2.5,2.8,3.2,4.8,5.1,5.9,6.8,7.1,7.8,8.1)
months <-c(0,1,2,3,4,5,6,7,8,9)
plot(months,weight,type="b",xlab= "months",ylab = "weight", main="baby weight chart")

#create the boxplot:also known as whisker diagram
#dist of data based on summary of min,max,median,first quartile,third quartile
vec <- c(3,2,5,6,4,8,1,2,3,2,4)
summary(vec)
#if varwidth = true the boxes are drawn with widths proportional
#to the square root of the number of obs in the group
boxplot(vec, varwidth = TRUE)

#comparison between mpg and cyl from mtcare data
boxplot(mtcars$mpg~ mtcars$cyl,
        main= "no of cylinder",
        xlab = "miles per gallon",
        ylab = "cylinder",
    
        col=c("red","yellow","green")
        )


colours() #displays all the colors available in  studio

#to change the background color use parameter as
par(bg="skyblue")

boxplot(mtcars$mpg~ mtcars$cyl,
        main= "no of cylinder",
        xlab = "miles per gallon",
        ylab = "cylinder",
        
        col=c("red","yellow","green")
)


plot(mtcars$mpg)
plot(mtcars$mpg,mtcars$drat)
plot(mtcars$mpg,mtcars$disp)
par(bg="white")

par(mfrow = c(2,2)# dividing the single plotting panel into grid of 2 by 2 it means 2 rpws 2 columns

plot(mtcars$mpg, type="l")
plot(mtcars$mpg, type = "h")
plot(mtcars$mpg, type = "b")
plot(mtcars$mpg, type = "s")

par(mfrow = c(1,1)) #to exit from grid so it will give only one graph in plotting window

#correlation

cor(mtcars$mpg,mtcars$disp)
plot(mtcars$mpg,mtcars$disp)
cor(mtcars)

cor(mtcars$vs,mtcars$qsec)
plot(mtcars$vs,mtcars$qsec)

cor(mtcars$carb,mtcars$am)
plot(mtcars$carb,mtcars$am)

cor(mtcars$mpg,mtcars$wt)
plot(mtcars$mpg,mtcars$wt)



































