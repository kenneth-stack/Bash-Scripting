#!/usr/bin/bash

#ask the user to input a package name

echo "Enter a package name:"
read name

echo "searching for package name: $name"

apt search $name
