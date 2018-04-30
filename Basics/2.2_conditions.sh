#!/bin/bash


#--------------------------------------
# Control Flow
# -eq: equals, -ne: not equal
# -lt: less than, -le: less than or equal, -gt greater than, -ge: greater or equal
# -lt, -le, -eq, -gt, -ge, -ne
#--------------------------------------

# Set input name equal to user input
read -p "What is your name? " name
echo "Hello $name"

read -p "How old are you? " age
echo "You are $age old"


#--------------------------------------
# Control Flow based on Age
# Using Single bracket [ 
#--------------------------------------
if [ $age -ge 16 ]; then 
  echo "You can drive"
elif [ $age -eq 15 ]; then 
  echo "You can drive next year"
else
  echo "You can't drive"
fi 


#--------------------------------------
# Another way of using comparison
# Using Double parentheses ((
#--------------------------------------

read -p "Enter your favorite number: " num

# Even or Odd
if (( ((num % 2)) == 0));then 
  echo "Your number is even"
else
  echo "Your number is odd"
fi 

# Less than or Greater than 10
if ((num == 10)); then
  echo "Your number is 10"
elif ((num < 10)); then
  echo "You number is less than 10"
else
  echo "Your number is greater than 10"
fi

# Logical and && 
if (( ((num > 0)) && ((num < 11)) )); then
  echo "Your number is between 1 and 10"
else
  echo "Your number is between 10 and infiniti"
fi


#--------------------------------------
# Using case:
# Set result for each case
#--------------------------------------
read -p "How old are you : " age

case $age in 
[0-4])
  echo "Too young for school"
  ;;
5)
  echo "About to enter school"
 ;;
[6-9]|1[0-8])
  grade=$((age - 5))
  echo "You are in grade $grade"
  ;;
*)
  echo "You are out of school"
  ;;
esac


#--------------------------------------
# Tertiary conditions
#--------------------------------------
vote=0
#if age is greater or equals to 18, then vote is 1, else vote is 0
(( age >= 18?(vote=1):(vote=0) )) 

if [[ $vote = 1 ]]; then
  echo "You can vote"
else
  echo "You cannot vote"
fi


#--------------------------------------
# End
#--------------------------------------



