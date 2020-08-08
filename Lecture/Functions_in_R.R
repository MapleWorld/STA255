##########
#Writing a function with one argument.
##########
my_function=function(x){
  y=x^2
  return(y)
}


#calling the function
my_function() # it will show error msg

my_function(3) # this will give you 9 back



###################
#writing a function with an argument but not using the argument
###################
my_new_function=function(){
  y=5^2
  return(y)
}


#calling this function (which will give 25 as output everytime we run it)
my_new_function()    


####################
#Writing a function which samples some observations from a Normal distribution
####################

sample_4m_normal=function(){
  
  s=rnorm(30, mean=10,sd=2)        # drawing 30 random numbers from N(10,2^2)
  x_bar=mean(s)
  
  return(x_bar)                  # returning the mean of my sample of size 30

}


#calling this function
sample_4m_normal()        

#calling it again
sample_4m_normal()





####################
# Calling a faunction many times
####################

replicate(5, sample_4m_normal())        #the number 5 represents how many times we want to call the function.



X_bar=replicate(1000000, sample_4m_normal())



mean(X_bar)                   # This is same as calculatig E(X_bar) as long as X_bar has many values

plot(density(X_bar))          # A quick way to checkthe  distribution of any set of numbers.





########################
### CLT using R
########################

sample_4m_poisson=function(){
  
  s=rpois(30, lambda=5)        # drawing 30 random numbers from Pois(lambda=5)
  x_bar=mean(s)
  
  return(x_bar)                  # returning the mean of my sample of size 30
  
}


X_bar= replicate(100000, sample_4m_poisson())

mean(X_bar)

var(X_bar)

plot(density(X_bar))