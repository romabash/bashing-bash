#!/bin/bash

#--------------------------------------
# Parameter Expansion
#--------------------------------------

#--------------------------------------
# Strings:
#--------------------------------------
name="Roma"
echo "${name}'s script"


#--------------------------------------
# Substituting substrings within a string
#--------------------------------------
text="The dog climed a tree"
echo "${text/dog/cat}"


#--------------------------------------
# Assign value to variable if doesn't exist
# Variable is not stored 
#--------------------------------------
echo "I am writing a ${language:-bash} script"


#--------------------------------------
# Length of the string
# Using ${#str} syntax, similar to finding length of expanded array: ${#array[@]}
#--------------------------------------
str="A random string"
echo "String length of str is : ${#str}"


#--------------------------------------
# Slice from specific index (inclusive both ends)
# Synthax: ${string:start:end}
#--------------------------------------
echo "${str}"
echo "${str:2}"
echo "${str:2:7}"


#--------------------------------------
# Slice everything after certain word or letter
#--------------------------------------
echo "${str#*A r}"


#--------------------------------------
# Array Expansion
#--------------------------------------
arr=("one" "two" "three")
echo "${arr}"  # one
echo "${arr[@]}"  # one two and three


#--------------------------------------
# Array Expansion
# Inside a for-loop
# Difference between ${array[@]} and ${array[*]}
#--------------------------------------
for x in "${arr[*]}"; do
        echo "array[*]: '$x'"
done

for x in "${arr[@]}"; do
        echo "array[@]: '$x'"
done


#--------------------------------------
# End
#--------------------------------------


