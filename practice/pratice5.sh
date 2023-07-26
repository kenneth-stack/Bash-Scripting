#!/usr/bin/bash
#if number of argument is > or < one(1) then the sxript should exit with error

if [ $# -ne 1 ]
then
	echo "invalid parameters"
	exit 1
fi

#check if the argument exsist on local directory

if [[ $(command -v $1) ]]
then
	echo "YES, $1 is found on local directory"

else
	echo "$1 is Not found on local directory"
fi


