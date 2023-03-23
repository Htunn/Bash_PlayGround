#!/usr/bin/env bash

# a simple shell script to determine if the given number is a negative or a positive number :

read -p "Enter a number : " n 
if [ $n -gt 0 ]; then
    echo "$n is a positive."
elif [ $n - lt o ]
then   
    echo "$n is a negative."
elif [ $n - eq 0 ]
then 
    echo "$n is zero number."
else
    echo "Oops! $n is not a number."
fi