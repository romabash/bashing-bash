#!/bin/bash

#Constant: use declare -r
declare -r NUM1=5

#Regular variable assignment
num2=4

#Use $((---)) to do opperation 
num3=$((NUM1+num2))
num4=$((NUM1-num2))
num5=$((NUM1*num2))
num6=$((NUM1/num2))

echo "5 + 4 = $num3"
echo "5 - 4 = $num4"
echo "5 * 4 = $num5"
echo "5 / 4 = $num6"
echo "5 to the power of 5 = " $((5**5))
echo "5 modulo 4 = " $((5%4))

#Using let, similar to $((----))
number=5
let number+=4
echo "adding 4 to number using let operator is: $number"

#Incrementing by one with $((++variable))
echo "$((++number))"
echo "$number"

num7=1.2
num8=3.4
#Adding will give an error: num9=$((num7+num8))
#Using python commands to use floats
num9=$(python -c "print $num7+$num8")
echo "$num9"

cat << END
This is the end of the math 
Multi line
END
