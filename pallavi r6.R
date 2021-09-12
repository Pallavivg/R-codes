str(mtcars)
mtcars$gear <-as.factor(mtcars$gear) #because data must be categorical for anova test
str(mtcars)
mtcars1<- aov(mtcars$mpg ~ as.factor(mtcars$gear))
summary(mtcars1)

mtcars1<- aov(mtcars$mpg ~ (mtcars$gear))

#tukeyhonestsignificant test
mtcars2<-TukeyHSD(mtcars1)
mtcars2

#chisquare test for independence of their exercise levels

#ho - smoking habits of students are independent of their exercise levels
#h1 - smoking habits of students are dependent of their exercise levels

survey<-survey
x<- table(survey$Smoke,survey$Exer)
x

chisq.test(x)

