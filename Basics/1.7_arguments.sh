#!/bin/bash


#--------------------------------------
# Command Line Arguments
# $# number of arguments
# $* lists all arguments
# $1 first argument
#--------------------------------------

echo "There are $# command line arguments: " $*
echo "1st Argument is: " $1


#--------------------------------------
# Counting and listing provided arguments
# "shift" command shifts to the next argument, next argument becomes $1
#--------------------------------------
sum=0
args=$#
while [[ $sum -lt $(($args - 1)) ]]; do
  num=1
  sum=$((sum + num))
  shift
  echo "Next Argument is: " $1
done

echo "Total number of arguments is: " $(($sum + 1))

