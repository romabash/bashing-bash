#!/bin/bash 

#--------------------------------------
# Strings
# Single brackets [ vs. double brackets [[
# Single brackets [ is an alias for the test command (need to quote the variable)
# Double brackets [[ is a synthax but they are not supported by all POSIX shells
#--------------------------------------

str1=""
str2="   "
str3="Sad"
str4="Happy"

#--------------------------------------
# To test if string is empty or null
# Output: str1 is null 
#--------------------------------------
if [ "$str1" ]; then 
  echo "str1 is not null"
else
  echo "str1 is null"
fi


#--------------------------------------
# To test if length of string is 0, -z
# -z returns true when string is null
# -z returns false if string contains only spaces, since the string has non-zero length
# Output: str1 has no value, and length is 0
#--------------------------------------
if [ -z "$str1" ]; then
  echo "str1 has no value, and length is 0"
else
  echo "str1 has value, and length is not 0"
fi

 
#--------------------------------------
# Test -z on a string with only spaces
# Since str2 has only spaces, -z will return false
# Output: str2 has value, and length is not 0
#--------------------------------------
if [ -z "$str2" ]; then
  echo "str2 has no value, and length is 0"
else
  echo "str2 has value, and length is not 0"
fi

#--------------------------------------
# To check if string is empty but with spaces, remove spaces and test for -z
# Using ${var/pattern/string} to replace spaces with nothing
# Output: str2 has only spaces
#--------------------------------------
if [ -z "${str2// /}" ]; then
  echo "str2 has only spaces"
else
  echo "str2 is not empty"
fi

#--------------------------------------
# Remove spaces and test for -z on a string with characters
# Using ${var/pattern/string} to replace spaces with nothing
# Output: str3 is not empty
#--------------------------------------
if [[ -z "${str3// }" ]]; then
  echo "str3 has only spaces"
else
  echo "str3 is not empty"
fi

#--------------------------------------
# Testing equality
# Output: str3 does NOT equal to str4
#--------------------------------------
if [ "$str3" == "$str4" ]; then
  echo "str3 equals to str4"
elif [ "$str3" != "$str4" ]; then
  echo "str3 does NOT equal to str4"
fi

#--------------------------------------
# Using double brackets [[
# No need for quotes around varibale name
# Output: str3 does NOT equal to str4
#--------------------------------------
if [[ $str3 == $str4 ]]; then
  echo "str3 equals to str4"
elif [[ $str3 != $str4 ]]; then
  echo "str3 does NOT equal to str4"
fi

#--------------------------------------
# Comaparing string, by alphabetical order
# Output: str3 is greater than str4
#--------------------------------------
if [[ $str3 > $str4 ]]; then
  echo "str3 is greater than str4"
else
  echo "str3 is not greater than str4"
fi


#--------------------------------------
# END
#--------------------------------------
