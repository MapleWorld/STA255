################################
####  Introduction  to R  ######
################################


#try copying and pasting these lines one at a time to your console and then press enter
#If you are using R-studio, put the cursor in any line and press CTL+ENTER

#R doesn't read or execute any line that starts with "#". 

#######################
#R as simple calculator
#######################
6/2
log(12)
exp(log(12))
4^2
4**2
9^(3+4)
7%%2
6%%2



######################
# Creating scalar
######################
a=2
b=3

d=a+b

a*b

a=a+5  #adds 5 to the old value of "a" and saves it again under the name "a". Old value=2, New value = 7



#######################
# Vector and Indexing
#######################

# c( )  is the command in R for creating a vector. The elements goes inside the ( ).
# "c" stands for concatenate.

x=c(3,6,8)   #defines a vector of length 3 and saves it under "x"
x+2          #adds 2 with each element of vector "x"
x^3          #raises the power of each element to 3

y=c(x,10)

length(y)    #gives the length/number of elements of the vector

######
#Accessing the elements of a vector
######

x[1]        # prints the first element of the vector
x[2]        # prints the second element of the vector
x[1:2]      # prints the first two elements of x
x[2:3]      # prints the 2nd and 3rd element of x
x[-1]       # prints all the elements of x EXCEPT the first one


#Question
x[length(x)]   #
x[-c(1,3)]     #




#Some quick ways of defining a vector

x=rep(5,3)      # defines a vector of size 3 with 5 at each position (rep stands for repeat)
x

x=seq(1,10)     # sequence going from 1 to 10 (seq stands for sequence)
x

x=seq(1,10,by=2)    #sequence going from 1 to 10 but increasing by 2.
x



# couple of common vector operations

sum(x)    #adds all the elements of vector x
prod(x)   # calculates the product of all the elements of x




#############################################
#### Logic check and basic if statement #####
#############################################

x=4


x<5
x>5
x==4   #( == stands for euqal)
x!=4   #( != stands for not equal)


# basic if structure

# if(condition){ do...}

# if the condition in the ( ) is true, do the steps written in { }


if(x==3){print("x is 3")}



if(x==3){
  
  print("x is 3")
  
}else if(x>3){
  
  print("x is greater than 3")
  
}else{
  print("x is less than 3")
}






############################
#Drawing random numbers
############################
sample(c(1,2,3,4,5,6),size=1)    #draws a random sample from the list of 1 to 6

#try size=2 or size=3 and see what happens

sample(c(1,2,3,4,5,6),size=3,replace = TRUE) 


#set.seed() ensures that everytime we are getting the same sequence of random number
set.seed(999)    
sample(c(1,2,3,4,5,6),size=3,replace = TRUE) 


#drawing 30 random sample from N(0,1) distribution and saving it under "r"
r=rnorm(30)



###############################
#calculating summary statistics
###############################

mean(r)  #calculate the mean of a vector
sd(r)    #standard deviation of a vector
min(r)   #minimum of a vector
max(r)   #maximum of a vector
median(r)#median
range(r) #range

