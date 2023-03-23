#!/usr/bin/env bash

read -s -r -p "Enter a password: " pass
if test "$pass" = "jerry"
then 
    echo "Password Verified"
else
    echo "Wrong Password"
fi
