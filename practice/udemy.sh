#!/usr/bin/bash

#create two(2) directory name "even and odd"

mkdir even odd

#generate empty files into the the directories using "for loop" and "if statement"

for (( n=1; n<=20; n++ ))
do
	if ((n%2==0))
	then
		touch even/$n.txt
	else
		touch odd/$n.txt
	fi
done
