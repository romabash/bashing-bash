#!/bin/bash


#--------------------------------------
# Associative Array: Similar to Hash and Dictionary
# declare -A is for Associative Array
# Synthax: hash=( ["key1"]="value1" ["key2"]="value2" )
#--------------------------------------
declare -A animals=( ["moo"]="cow" ["woof"]="dog" )
echo "Animal that makes 'moo' sound is ${animals[moo]}"


#--------------------------------------
# Associative Array ina for-loop
# Loop through indicies (keys) using ${!hash[@]} synthax
#--------------------------------------
for sound in "${!animals[@]}"; do
  echo "$sound produced by ${animals[$sound]}"
done



#--------------------------------------
# Modifying values of Associative Array
#--------------------------------------
animals=( [moo]=bull [woof]=dog )

echo "Animal that makes 'moo' sound is ${animals[moo]}"

for sound in ${!animals[@]}; do
  echo "$sound produced by ${animals[$sound]}"
done
