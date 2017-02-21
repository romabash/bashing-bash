#!/bin/bash

#Function that returns formatted date
getDate(){
  date +%F

  return
}

getDate

#Function with arguments to add two numbers 
getSum(){
  local num1=$1  #first argumenst of the function
  local num2=$2  #second argument of the function
  local sum=$((num1+num2))
  
  echo "$sum"
}

#Call the getSum function
num3=3
num4=21
sum=$(getSum num3 num4)
echo "The sum is $sum"
