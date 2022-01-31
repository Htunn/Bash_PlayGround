#!/usr/bin/env bash
math=$1 # filename
found=0 # set to 1 if file found in the for loop

# show usage
[ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; }

# Try to find file in /etc
for f in /etc/*
do

    if [ $f == "$math" ]
    then
        echo "$math file found"
        found=1 #file found
        break   # break the for loop
    fi 
done

# noop file not found
[ $found -ne 1 ] && echo "$math file not found in /etc directory"