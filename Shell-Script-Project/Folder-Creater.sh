#!/bin/bash
#
####################################
#Create a file using shell script
#
#Name: Mani Kevala
#Project: Here I have used if condition, do while
#
####################################

echo""
echo"...Welcome to for loop condition..."
echo""

while true; do
	echo""
	echo "Do you want to execute File Creater or Command Runner "
	echo "1) File Creater"
	echo "2) Command Runner"
	echo "3) Exit"
	
	read -p "Enter your choice" CHOICE

	case $CHOICE in
		1) 
			File_Creater
			;;
		2)
			Command_Runner
			;;
		3)
			echo "Existing..!"
			break
			;;
		*) 
			echo "Invalid Choice"
	esac

	done


if [ "$CHOICE" == File_Creater ]; then
	echo "You choosed File Creater"
	echo ""
	echo "Enter File Name" 
	read "FILE_NAME"
	touch "$FILE_NAME"
	echo "$FILE_NAME file is created!"

else [ "$CHOICE" == Command_Runner ]; then
	echo "You choosed Command Runner"
	
while true; do
	echo ""
	echo "choose a command to run"
	echo "1) Show desk usage"
	echo "2) Show memory usage"
	echo "3) Show current user"
	echo "4) Exit"

	read -p "Enter you choice [1-4]: " CHOICE_CMD
	
	case $CHOICE_CMD in 
		1) 
			df -h
			;;
		2)
			free -h
			;;
		3)
			who
			;;
		4) 
			echo "Exiting... Bye!"
			break
			;;
		*) 
			echo "Invalid choice. Please enter 1-4. "
			;;

	esac

	done

fi

