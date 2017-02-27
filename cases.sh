#!/bin/bash

read -p "HOw old are you : " age

case $age in 
[0-4])
  echo "Too young for school"
  ;;
5)
  echo "Go to kindergarden"
 ;;
[6-9]|1[0-8])
  grade=$((age - 5))
  echo "Go to grade $grade"
  ;;
*)
  echo "You are too old for school"
  ;;
esac

#Tertiary conditions
vote=0

((age >= 18?(vote=1):(vote=0)))

if [[ $vote = 1 ]]; then
  echo "You can vote"
else
  echo "You cannot vote"
fi
