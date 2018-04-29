#!/bin/bash


#--------------------------------------
# Arrays
#--------------------------------------


#--------------------------------------
# Access elements in array with index
# Start at 0
#--------------------------------------
numbers=(3.14 2.7 3.4 5)
echo "Pi si equals to ${numbers[0]}"


#--------------------------------------
# Add to the array by specifying index
#--------------------------------------
numbers[4]=99
echo "New number is ${numbers[4]}"


#--------------------------------------
# Add a number or multiple numbers to the end without specifying index
# Get all the elements in the array by expanding it 
# ${array[*]} expands all element into one 
# ${array[@]} expands each element separately
#--------------------------------------
numbers+=(1 7)
echo "All the numbers in the array: ${numbers[@]}"


#--------------------------------------
# Use for loop to loop through array (need to expand the array)
#--------------------------------------
for i in ${numbers[@]}; do
  echo $i
done


#--------------------------------------
# Use for loop with counter:
# Get the length of the array with ${#array[@]}
#--------------------------------------
echo "Using for loop with a counter"
len=${#numbers[@]}
for (( i=0; i<$len; i++ )); do
  echo "$((i+1)) of $len : ${numbers[$i]}"
done


#--------------------------------------
# Use for loop with counter:
# Get the indecies of the array with ${!array[@]}
#--------------------------------------
echo "Using for loop for indecies"
for index in ${!numbers[@]}; do
    echo $index/${#numbers[@]}
done


#--------------------------------------
# To print on the same line use printf
#--------------------------------------
printf "Printing with printf: \n"
for i in ${numbers[@]}; do
  printf "$i, "
done
echo


#--------------------------------------
# Find length of the array and length of array's element with ${#array[@]}
#--------------------------------------
echo "Array Length is: " ${#numbers[@]}
echo "Length of element in index 2 (3.4) is :" ${#numbers[2]}


#--------------------------------------
# Sort array by piping to bash sort 
#--------------------------------------
sorted_arr=($(for i in "${numbers[@]}"; do echo $i; done | sort))
echo "sorted array is ${sorted_arr[*]}"


#--------------------------------------
# Delete element in array with unset
#--------------------------------------
unset 'sorted_arr[1]'

for i in ${sorted_arr[*]}; do
  echo $i
done


#--------------------------------------
# END
#--------------------------------------
