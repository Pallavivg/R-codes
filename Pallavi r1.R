#if else statement - conditional-assignment operator
age<- 30
if (age>20){
  print("major")
} else {
  print("minor")
}

#nested if 

x<-4
if (x<0){
  print("negative number")
} else if (x>0){
  print("positive number")
} else {
  print("zero")
}

#for loop : execute code for specific number of times
data1<- c(1,2,3,4,5,6) #we use c when we want to combine more than one value
data1
for (xyz in vec){
  print(xyz)
}

#while loop : if the test expression remains true loops keeps on executing 
i<-1
while(i<6){
  print(i)
  i=i+1
}

#repeat loop: iterates a code multiple number of times,since there is no conditional check to exit
#so we must specify ot inside the body of the loop
x<-1
repeat {
  print(x)
  x=x+1
  if (x==6){
    break
  }
    }

#break statement: it stops the iteration from executing and forces the flow
#to jump off the loop

num<-1:5
for (val in num) {
  if (val==5){
    break
  }
 print(val) 
}

#next statement: it helps in skipping the current iteration of a loop

num<- c(1,2,3,4,5,6,7)
for (val in num) {
  if (val==5){
    next
  }
 print(val) 
}


















