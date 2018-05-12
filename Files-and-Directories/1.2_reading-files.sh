#!/bin/bash


#--------------------------------------
# Looping through a file and printing 
#--------------------------------------

while read year month day; do
  printf "Year: ${year}  Month: ${month}  Day: ${day}\n"
done < test_file1



