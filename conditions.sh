#!/bin/bash

#set input name equal to user input
read -p "What is your name? " name
echo "Hello $name"

read -p "How old are you? " age

#-eq: equals, -ne: not equal, -le: less than or equal
#-lt: less than, -ge: greater or equal, -gt greater than
#-lt, -le, -eq, -gt, -ge, -ne

if [ $age -ge 16 ]; then # -ge greater than or equal to
  echo "You can drive"
elif [ $age -eq 15 ]; then # -eq equal to
  echo "You can drive next year"
else
  echo "You can't drive"
fi #end of the if statement

#Another way of using comparison
read -p "Enter a number: " num

if ((num == 10)); then
  echo "Your number is 10"
elif ((num < 10)); then
  echo "You number is less than 10"
else
  echo "Your number is greater than 10"
fi

if (( ((num % 2)) == 0));then 
  echo "It is even"
else
  echo "It is odd"
fi 

if (( ((num > 0)) && ((num < 11)) )); then
  echo "Yout number is between 1 and 10"
else
  echo "Your number is between 10 and infiniti"
fi


