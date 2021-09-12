#dividing data into training and testing

library(caTools)#important package

# sample the input data with 70% for training and 30% for testing 
sample <-sample.split(data1$selling.price,SplitRatio=0.70) #selling.ratio = dependent variable
sample
train_data <- subset(data1,data1,sample==TRUE) #split of the data using subset command
test_data <- subset(data1,sample==FALSE)

model<- lm(selling.price ~., data = train_data) # dot(.) means all the independent variables
summary(model)

#estimate is the other name for slope

#prediction on testing data set
predtest<-predict(model,test_data)
head(predtest)

#attach it with the dataframe
predtest1<- data.frame(predtest)

#to bind the predicted data set with original data set by cbind function
final_data<-cbind(test_data,predtest1)

#to export the file
write.csv(final_data,"linear_output.csv")