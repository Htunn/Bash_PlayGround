#!/usr/bin/bash
# Script that shows how to make sure that user input is provided

HHOME=/Data/work/code/backup

if [ -z $1 ]
then 
   echo provide filenames
   read FILENAMES
else
   FILENAMES="$@"
fi

echo the following filenames have been provided: $FILENAMES
for i in $FILENAMES
do
	cp $i $HHOME/${i##*/}.$(date +%d-%m-%y)
  echo ${FILENAMES##*/} is copy $HHOME
done

