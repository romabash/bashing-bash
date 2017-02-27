#!/bin/bash

#Parameter Expansion

name="Roma"
echo "${name}'s script"

text="The dog climed a tree"
echo "${text//dog/cat}"

#Assign value to variable if doesn't exist
echo "I am ${age:-32} years old"

#Length of the string
str="A random string"
echo "String length of str is : ${#str}"

#Slice from specific index (inclusive both ends)
echo "${str}"
echo "${str:2}"
echo "${str:2:7}"

#Slice everything after certain word or letter
echo "${str#*A r}"
