#!/bin/bash
# $Revision : 001$
# $ FRI Dec 20 20:20:00 IST 2024$
#
#
# Variables

BASE1="/c/Users/HARSH RANJAN/project/logfile.log"
BASE="/c/Users/HARSH RANJAN/project"
DAYS=30
DEPTH=1
RUN=0
date=DATE

#starting the scripts
echo "Starting Archive Script @ $(date)" >> "$BASE1"


#check if the directory is present 

if [ ! -d "$BASE" ]
then
	echo "Directory doesnot exist: $BASE"
	exit 1
fi

#create the archive folder if not present

if [ ! -d "$BASE/archive" ]
then
	mkdir "$BASE/archive"
fi

# creating the logfile f not present
if [ ! -f "$BASE1" ]
then
	touch $BASE1
fi


#find the list of files larger than 20 MB


find "$BASE" -maxdepth $DEPTH -type f -size +10M -print0 | while IFS= read -r -d '' i
do
	 if [ $RUN -eq 0 ];
	 then
		 echo "Archiving the file $i....."
		 echo "Archiving the file $i" >> "$BASE1"
		 sleep 1s
		 gzip "$i" || exit 1
		 mv "$i.gz" "$BASE/archive/" || exit 1
		 echo "Moving the file $i.gz to Archive folder " >> "$BASE1"
	 fi


done
#
#
#
#Automating the script
# use contab for linux
#
#for WINDOWS
# use taskschd.msc

