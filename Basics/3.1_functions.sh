#!/bin/bash


#--------------------------------------
# Functions
#--------------------------------------


#--------------------------------------
# Function that returns formatted date
#--------------------------------------
getDate(){
  date +%F

  return
}

echo "Using getDate() function:"
getDate


#--------------------------------------
# Function with arguments
#--------------------------------------
print_something(){
  echo "Hello $1"
}

echo "Using a function with arguments:"
print_something Roma


#--------------------------------------
# Function with arguments to add two numbers 
# Have a function "return" a value with echo
# Assign function's echo using $(...) synthax
#--------------------------------------

getSum(){
  local num1=$1  #first argumenst of the function
  local num2=$2  #second argument of the function
  local sum=$((num1+num2))
  
  echo "$sum"
}

echo "Using the getSum() function and assigning it to a variable:"
num3=3
num4=21
sum=$(getSum num3 num4)
echo "The sum is $sum"


#--------------------------------------
# Using Return Status
# Using explicit return
# Get return with $?
#--------------------------------------

add(){
  local num1=$1  #first argumenst of the function
  local num2=$2  #second argument of the function
  local sum=$((num1+num2))
  return $sum
}
add 1 4
added=$?
echo "Result of the add function is: " $added


#--------------------------------------
# End
#--------------------------------------
