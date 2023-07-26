#!/usr/bin/bash

#create a function for the script
search() {
	echo "searching for package name: $name"
	apt search $name
}
install() {
	echo "installing package called $name"
	sudo apt install $name
}
remove() {
	echo "removing package called $name"
	sudo apt remove $name
}

#Ask user to choose a method

echo "choose a method: search or install or remove"

read method

#ask user to Enter a package name

echo "Enter a package name:"
read name


#write a if statement to verify the fuction

if [[ $method == "search" ]]
then 
	search

elif [[ $method == "install" ]]
then
	install

elif [[ $method == "remove" ]]
then 
	remove
else
	echo "please select valid method"
fi


