#!/bin/bash


#--------------------------------------
# tput Colors
# Text Colors and Background Colors
# Reset with \033[0m
# echo -e: enable interpretation of backslash escapes
#--------------------------------------

# Make text Bold
echo -e "\033[1mHello Wolrd\033[0m"

# Hightlight the text
echo -e "\033[7m====>\033[0m"

# Hightlight the text in Red
echo -e "\033[0;101m====>\033[0m"

# Hightlight the Cyan text in Red
echo -e "\033[0;101m\033[1;96m====>\033[0m"

# For loop with colors
for ((i=30; i<=37; i++)); do
  echo -e "\e[0;"$i"m Hello World!\033[0m"
done

echo -e "END"
