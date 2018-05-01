#!/bin/bash


#--------------------------------------
# tput
# Displaying a message in the middle of the terminal
#--------------------------------------


#--------------------------------------
# Get number of columns in current terminal with "tput cols"
# Get number of rows in current terminal with "tput lines"
#--------------------------------------
cols=$(tput cols)  #how many columns terminal has
rows=$(tput lines) #how many lines/rows terminal has


#--------------------------------------
# Display the script's argument in the middle of the terminal
#--------------------------------------

#Message to display
message="$cols Columns by $rows Rows"

#find the length of the message
input_length=${#message} 

#To center, get half of length
half_input_length=$(( $input_length / 2 )) 

#Get middle of row (height)
middle_row=$(( $rows / 2))

#get get middle of width minus half of the length (each side) 
middle_col=$(( ($cols / 2) - $half_input_length )) 

#clear terminal
tput clear 

#put "cursor" at given location
tput cup $middle_row $middle_col 

#Make text bold
tput bold 

#Echo the message
echo $message

#Turns bold and other changes off
tput sgr0 

#Place the prompt at the bottom of the screen after 2 seconds
sleep 2
tput cup $( tput lines ) 0 


#--------------------------------------
# End
#--------------------------------------
