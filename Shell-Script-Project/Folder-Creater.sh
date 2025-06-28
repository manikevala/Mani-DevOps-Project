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
	echo "Do you want to execute File Creater or Command Runner "
	echo ""
	echo "Main Manu"
	echo ""
	echo "1) File Creater"
	echo "2) Command Runner"
	echo "3) Delete File"
	echo "4) Exit"
	echo ""
	read -p "Enter your choice: " CHOICE

	case $CHOICE in
		1) 
			echo "You choose File Creater"
			echo ""
			read -p "Enter File Name: " File_Name
			touch "$File_Name"
			echo ""
			echo "'$File_Name' file is created..!"
			;;

		2)
			echo "You choose Command Runner"

			while true; do
				echo ""
				echo "choose a command to run"
				echo "1) Show desk usage"
				echo "2) Show memory usage"
				echo "3) Show current user"
				echo "4) Exit"
				
				read -p "Enter your choice: " CHOICE2

			case $CHOICE2 in
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
					echo "Exesting...Bye!"
					break
					;;
				*) 
					echo "Invaild Choice"
					;;

				esac
			done
			;;
		3)
			echo "You choose Delete file"
			echo""
			echo "list of files"
			echo ""
			ls 
			echo ""
			read -p "Enter the File Name: " DELETE_FILE
			rm "$DELETE_FILE"
			echo "$DELETE_FILE is deleted..!"
			;;

		4)
			echo "Exiting...Bye"
			break
			;;

		*)
			echo "Invalid Choice"
			;;
	esac
done
