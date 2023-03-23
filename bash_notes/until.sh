#!/usr/bin/env bash

i=1     # initialize 
until [ $i -gt 6 ]
do
    echo "Welcome to $i times."
    i=$(( i + 1 ))  # increment
done