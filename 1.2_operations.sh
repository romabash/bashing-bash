#!/bin/bash

#--------------------------------------
# Math:
# Constant: use "declare -r", same as "readonly var1"
# $(...) means execute the command in a subshell and return its stdout
# (...) means run the commands listed in a subshell, variables changed inside (...) are not affected outside
# $((...)) means perform arithmetic and return the result of the calculation
#--------------------------------------

declare -r NUM1=5
num2=4  # Regular variable assignment


#--------------------------------------
# Use $((...)) to do operation 
# Use echo to print to the terminal
# Reference varibale inside echo quotes with $var
# Can also do operation outside of echo quotes and concatenate on the same line
#--------------------------------------
num3=$((NUM1+num2)) 
num4=$((NUM1-num2)) 
num5=$((NUM1*num2)) 
num6=$((NUM1/num2)) 

echo "5 + 4 = $num3" # 9
echo "5 - 4 = $num4" # 1
echo "5 * 4 = $num5" # 20
echo "5 / 4 = $num6" # 1, returns whole integer
echo "5 to the power of 5 = " $((5**5)) # 3125
echo "5 modulo 4 = " $((5%4)) # 1


#--------------------------------------
# Using let, similar to $((----))
#--------------------------------------
number=5
echo "number is $number" # 5

let number+=4
echo "adding 4 to number using let operator is: $number" # 9


#--------------------------------------
# Incrementing by one with $((++variable))
#--------------------------------------
echo "$((++number))" # 10
echo "$number" # 10


#--------------------------------------
# Using floats
# Adding will give an error: num9=$((num7+num8))
# Using python commands to use floats
#--------------------------------------
num7=1.2
num8=3.4
num9=$(python -c "print($num7+$num8)") # 4.6
echo "$num9"


#--------------------------------------
# End
#--------------------------------------

