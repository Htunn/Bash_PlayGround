#!/usr/bin/env bash

#set var
PASSWD_FILE=/etc/passwd 

#get user name
read -p "Enter a username : " username

#try to locate username in /etc/passwd

#grep "^$username" $PASSWD_FILE > /dev/null

#store exit status of grep
# if found grep will return 0 exit status
# if not found, grep will return a non-zero exit status

#status=$?

#if [ $status -eq 0 ]

if grep "^$username" $PASSWD_FILE > /dev/null
then
    echo "User '$username' found in $PASSWD_FILE file."
else
    echo "User '$username' not found in $PASSWD_FILE file."
fi