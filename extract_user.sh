#!/usr/bin/bash

# extract the user names
for i in $(cat $(read filename))
do
      USER=${i%%,*}
      USER=${USER#*=}
      echo $USER >> users
done

# show the user creation will work

for j in $(cat users)
do 
      echo useradd $j
done

exit 0
