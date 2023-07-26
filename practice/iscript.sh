#!/usr/bin/bash

#Ask the user to Enter a Num

echo -n "Enter a num:"
read n

factorial=1
#Use the while loop to generate a factorial of the given number by the user input

while [ $n -gt 1 ]
do
	factorial=$((factorial * n))
#where
        n=$((n-1))
done

echo $factorial
