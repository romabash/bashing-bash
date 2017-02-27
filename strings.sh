#!/bin/bash

#Strings

str1=""
str2="Sad"
str3="   "
str4="Happy"

#To test is string is empty
if [ "$str1" ]; then 
  echo "str1 is not null"
else
  echo "str1 is null"
fi

#to test if length of string is 0, -z
if [ -z $str1 ]; then
  echo "str1 has no value"
else
  echo "str1 has value"
fi
 
if [ -z $str2 ]; then
  echo "str2 has no value"
else
  echo "str2 has value"
fi

#To check if string is empty but with spaces
#Remove spaces and test for -z
if [[ -z "${str3// }" ]]; then
  echo "str3 string has only spaces"
else
  echo "str3 string is not empty"
fi

if [[ -z "${str2// }" ]]; then
  echo "str2 string has only spaces"
else
  echo "str2 string is not empty"
fi

#Testing equality
if [ "$str2" == "$str3" ]; then
  echo "str2 equals to str3"
elif [ "$str2" != "$str3" ]; then
  echo "str2 does NOT equal to str3"
fi

#Using double brackets [[
#No need for quotes around varibale name
if [[ $str2 == $str3 ]]; then
  echo "str2 equals to str3"
elif [[ $str2 != $str3 ]]; then
  echo "str2 does NOT equal to str3"
fi

#Comaparing string
if [[ $str2 > $str4 ]]; then
  echo "str2 is greater than str4"
else
  echo "str2 is not greater than str4"
fi
