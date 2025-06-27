#!/bin/bash
#
##############################################
# This is my first Shell Scripting file
#
# Name: Mani Kevala
# Date: 27-June-2025
#
# File Number: 01
#
# ############################################
# 
# To see the executing commands
set -x

# If error the executing process will stop 
set -e

# Ask user name
echo "Enter Your Name"

read "NAME"

# Welcome Meaage 
echo "Hello "$NAME", this my the first Shell Script file"

# Check the desh usage
df -h

# Check the memory usage 
free -h

# list the files and folders 
ls 

