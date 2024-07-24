#!/bin/bash

DATE=$(date +"%Y-%m-%d-%H-%M-%S")

Source_Dir="/home/eko/AutomationTool/Backups/Source/Work_Files"
Dest_Dir="/home/eko/AutomationTool/Backups/Destination"

if [ ! -d "$Dest_Dir/$DATE" ]; then
	mkdir "Dest_Dir/$DATE"
fi
cp -r "$Source_Dir" "$Dest_Dir/$DATE"

echo "Directory Backed Up Sucessfully to $Dest_Dir/$DATE"

#the first error message is intentional, the program will realise there isn't yet the desired directory, and will make one in the given date format, 'YMDHMS'
