#!/bin/bash


#--------------------------------------
# Backs up a single project directory
# Provide a directory as an argument
# First check to see if the directory exists 
#--------------------------------------

# Declare a relative path directory
declare -r DIR=$( cd "$(dirname '$0')" && pwd)

# If directory name is not provided as an argument (argument is not 1)
if [ $# != 1 ]; then
    echo "Provide single argument which is the directory to backup"
    exit
fi

# If the directory provided to back up does not exist
if [ ! -d $DIR/$1 ]; then
    echo "The given directory does not exist"
    exit
fi


#--------------------------------------
# Backing up
#--------------------------------------

# Assign a date to $date
date=`date +%F`
echo $1_$date

# Check to see if today's back up already exists
if [ -d $DIR/$1_$date"_backup" ]; then 
    echo "This project has already been backed up today, overwrite it?"
    read answer
    if [ $answer != 'y' ]; then 
        exit
    fi
else
    mkdir -p $DIR/$1_$date"_backup"
fi

cp -R $DIR/$1 $DIR/$1_$date"_backup"
echo Backup of $1 completed


#--------------------------------------
# END
#--------------------------------------
