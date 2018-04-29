#!/bin/bash

#--------------------------------------
# Regular Expression
#--------------------------------------


#--------------------------------------
# Get User input with 
# Sythax: read -p
# read -sp: will not display the entry (passowrd)
#--------------------------------------
read -p "Validate Date (yyyy/mm/dd) : " date


#--------------------------------------
# Regular Expression: validate with pattern
# Example: 2018/04/28 or 2018-04-28
#-----------------------------------
pattern="^[0-9]{4}[/|-][0-9]{2}[/|-][0-9]{2}$"

if [[ $date =~ $pattern ]]; then
  echo "$date is valid"
else
  echo "$date is NOT valid"
fi


#--------------------------------------
# Format the date entered into a standard form
# Pipe $date into sed to substitute all the formats into one standard form with -
# Example: April 28 2018 converted to April-28-2018
#--------------------------------------

read -p "Enter a date: " date

clean_date=$( echo $date | sed 's/[ /:\^#]/-/g' )
echo $clean_date
