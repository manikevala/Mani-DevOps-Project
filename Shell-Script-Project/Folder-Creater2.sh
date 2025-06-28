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
        echo "Do you want to execute File Creater or Command Runner "
        echo "Type File Creater"
        echo "Type Command Runner"

        read -p "Enter your choice" CHOICE


if [ "$CHOICE" == File_Creater ]; then
        echo "You choosed File Creater"
        echo ""
        echo "Enter File Name"
        read "FILE_NAME"
        touch "$FILE_NAME"
        echo "$FILE_NAME file is created!"

elif [ "$CHOICE" == Command_Runner ]; then
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

else 
	echo "Invalid Choice"
fi

