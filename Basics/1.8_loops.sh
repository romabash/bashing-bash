#!/bin/bash


#--------------------------------------
# Loops
#--------------------------------------


#--------------------------------------
# While Loop
# Single brackets vs Double brackets vs Double parentheses
# With double brackets [[, there's no need for quotes around varibale name
# [[ can use && and || instead of -a and -o, as with single brackets [
# Double parentheses are used for arithmetic operations
#--------------------------------------
echo "Using single brackets: "
num=1
while [ $num -le 5 ]; do
  echo $num
  num=$((num + 1))
done

echo "Using double parentheses: "
num=1
while (( num <= 5 )); do
  echo $num
  ((num++))
  #let num+=1 #same as above
done


#--------------------------------------
# Printing only odd numbers and using break
# Using Double parentheses for arithmetic operations
#--------------------------------------
echo "Printing only odd numbers until 15: "
num=1
while [ $num -le 20 ]; do
  if (( ((num % 2 )) == 0 )); then #if even, add 1 and continue to the next step in loop
    num=$((num + 1))
    continue 
  fi

  if ((num >= 15)); then #if greter than 15, break out of loop
    break
  fi

  echo $num #else echo the number, then add 1
  let num+=1
done


#--------------------------------------
# Until Loop is same as in Ruby
#--------------------------------------
echo "Using until loop: "
num=1
until (( $num > 5 )); do
  echo $num
  let num+=1
done

#--------------------------------------
# For Loop
#--------------------------------------
echo "Using for-loop: "
for (( i=0; i <= 5; i++ )); do
  echo $i
done


#--------------------------------------
# For Loop through a Range
# Inclusive start and end
# Synthax: in {start..end..step}
#--------------------------------------
echo "Using for-loop with a range on numbers: "
for i in {1..10..2}; do
  echo $i
done

echo "Using for-loop with a range on letters: "
for i in {A..Z..2}; do 
  echo $i
done


#--------------------------------------
# Using Select
# Array of options to choose from
# PS3: Prompt
# Need to specify a break point
#--------------------------------------
options="One Two Three Quit"
PS3="Select character: "
select option in $options; do
  if [ $option == 'Quit' ]; then
    break
  fi
  echo "You chose $option"
done

echo "Goodbye"


#--------------------------------------
# End
#--------------------------------------


