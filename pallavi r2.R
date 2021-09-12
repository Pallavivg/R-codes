#vectors- one dimensional arrays are known as vectors
 a<- c(1,2,3,4,-5,-6)
 a

 b<- c("usa","india","uk") 
b 

d<- c(TRUE,FALSE,TRUE)
d

#scalar : one vector elements

x<- (1)
y<- ("one")

#accessing vector elements
t<- c(2,4,6,8,10,12,14)
t
t[3]
t[c(2,3)]

#matrices: these are two dimensional data strures

mat<- matrix(c(1,2,3,4),nrow=2,ncol=2) #by default column wise
mat
mat<- matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=TRUE) #if true matrix filled by rows
mat

#accessing matrix elements

mat[1,]
mat[,1]
mat[1,2]
mat[2,1]

#arrays: multidimentional, homogeneous
x1<- array(1:24,dim= c(2,3,4))
x1

#accessing array elements
print(x1[2,,2]) #print 2 rows of 2 matrix
print(x1[,2,3]) #print 2 column of 3 matrix
print(x1[,,3]) #print all rows and columns of 3 matrix

#list can be combination of multiple vector, multiple matrices etc...
p1<- 1:5
p1
 p2<- c(T,T,F,T,T)
p2
l1<-list(p1,p2)
l1

#how to access list
l1[[1]] #list is always displayed in double square brackets
l1[[2]]

#factor: to have numerical counterpart of character value

life_status<-c("alive","dead","alive","alive","dead")
life_status

class(life_status)

life_statusfact <-as.factor(life_status)
life_statusfact

class(life_statusfact)

#as.integer is displaying how our values as 1 and 2 are stored for alive and dead
# alive is 1 and dead is 2 as due to alphabetic order, as a comes first so 1

as.integer(life_statusfact)

class(life_statusfact)

#switch function 
switch(2,"apple","ball","cat")





