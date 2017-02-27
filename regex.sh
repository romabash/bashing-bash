#!/bin/bash

#read -sp will not display the entry (passowrd)
read -p "Validate Date (yyyy/mm/dd) : " date

pattern="^[0-9]{4}/[0-9]{2}/[0-9]{2}$"

if [[ $date =~ $pattern ]]; then
  echo "$date is valid"
else
  echo "$date is NOT valid"
fi
