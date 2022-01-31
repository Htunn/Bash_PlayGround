#!/usr/bin/env bash
# Reading a Text file with seperate fields (or) positional arguments

file=/etc/resolv.conf
# set field seperator to a sngle white space
while IFS=' ' read -r f1 f2
do
    echo "Field # 1 : $f1 ==> Field # 2 : $f2"
done < "$file"

