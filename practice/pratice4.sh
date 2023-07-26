#!/usr/bin/bash

#set a PS3 prompt
PS3="choose a method:"

#list of methods
method=("Search" "Install" "Remove")

#display the method and prompt the user for input

select meth in "${method[@]}"; do

	case $meth in
		Search)
			echo "you have choosen to $meth for a package"
			echo "Enter the package name:"
			read name
			echo "searching for package name: $name"
			apt search $name
			break

			;;
			
		Install)
			echo "you have choosen to $meth a package"
                        echo "Enter the package name:"
                        read name
                        echo "installing package: $name"
                        apt install $name
			break

                        ;;

		Remove)
			echo "you have choosen to $meth a package"
                        echo "Enter the package name:"
                        read name
                        echo "searching for package name: $name"
                        apt search $name
			break

                        ;;
		Quit)
			break

			;;
		*)
			echo "you have Entered an INVALID METHOD"

			;;
	esac
done	


		
			

