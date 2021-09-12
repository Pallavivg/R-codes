#splitting data set into training and testing
train_obs <- floor (0.8*nrow (data1))
print(train_obs)

train_ind <-sample(seq_len(nrow(data1)),size=train_obs)
test = -train_ind

train_data<-data1[train_ind,] #no of obs in train dataset
test_data<-data1[-train_ind,] #no of obs in test dataset

testing_high <- data1$Remiss[test]
testing_high

model<-glm(remiss ~., data = train_data, family = binomial())
summary(model)

#rerun the model : if there are two or more significant variables
#model2<glm(remiss~cell+smear+li, data = train_data,family = binomial())
#summary(model2) # consider this as your final model

#predicting the model using test data
prob<-predict(model,test_data,type="response") #type="response because we are predicting the probability 
prob1<-data.frame(prob)

results <- ifelse(prob1 >0.5,1,0)#setting the cutoff for probability values
results

table(testing_high,results) #confusion matrix: it tells us how well the model is performing
(3+2)/(3+1+2+1) #to check the accuracy of the model divide the diagonals by all the other 4 numbers

#to bind the predicted data set with original data set by cbind function
final_data<-cbind(test_data,prob1)

write.csv(final_data,"logistic_output.csv") #to export the file

#telecom industry
#import the data set

data3<- data2[, -c(1,2,3)] #we are deleting 1,2,3 columns because they not required for model bulding as they does not make any sense
names(data3)

library(caTools)#important package
#sample the input data with 70% for training and 30% for testing
sample<-sample.split(data3$churn,SplitRatio=0.70)
train_data <-subset(data3,sample==TRUE)
test_data<-subset(data3,sample==FALSE)


#to build decision tree by using rpart package(recursive partitioning decision tree)
library(rpart)

#to display it in diagram


library(rattle)

library(rpart.plot)

fancyRpartPlot(churn_model)

pred<-predict(churn_model,test_data,type="class")
pred
pred1<-data.frame(pred)

#confusion matrix is a technique for summerising the performance of a classification algorithms
table(test_data$churn ,pred)#create confusion matrix to see how many cus are correctly predicting

(1267+156)/(1267+21+56+156) #95% accuracy

#then combine the model and export the file







































