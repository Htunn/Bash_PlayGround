#!/usr/bin/env bash
# set n to 1

# The script initializes the variable n to 1, and then increments it by one. 
# The while loop prints out the "Welcome $n times" until it equals 5 and exit the loop. 

n=1     # Initialization

# continue until $n equals 5
while [ $n -le 5 ]      # condition 
do
    echo "Welcome $n times."
    n=$(( n + 1 ))  # Increments $n
done