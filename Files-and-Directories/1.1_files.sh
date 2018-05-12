#!/bin/bash


#--------------------------------------
# Files
#--------------------------------------


file1="./test_file1"


#--------------------------------------
# Test to see if file exists and list its properties
#--------------------------------------

if [[ -e $file1 ]]; then 
  echo "file 1 exists"

  if [[ -f $file1 ]]; then
    echo "file1 is a normal file"
  fi  

  if [[ -r $file1 ]]; then
    echo "file1 is a readable file"
  fi  

  if [[ -w $file1 ]]; then
    echo "file1 is a writable file"
  fi
 
  if [[ -x $file1 ]]; then
    echo "file1 is executable file"
  else
    echo "file1 is not executable"
  fi
 
fi #ends original if statement


#--------------------------------------
#  Other tests include: 
#--------------------------------------
# -d: directory
# -L: symbolic link
# -p: pipe
# -S: network socket
# -G: owned by Group
# -O: owned by Others

