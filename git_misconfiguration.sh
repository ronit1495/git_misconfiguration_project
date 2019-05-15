#!/bin/bash

#A script which is used to check for git misconfirations on various domains supplied by user in a file

read -p "Enter the location of file to read: "
echo "${REPLY}"

INPUT=${REPLY}

COUNT=0

read -p "Enter the location of .git files to Store (if not found,it will create the directory): "
INPUT2=${REPLY}

#################################################################

#Check if user supplied a valid path


if [[ -f "${INPUT}" ]]
then
  echo "File located succesfully..."
else
  echo "Enter correct path! "
  exit 1
fi

###################################################################

#Count number of webistes to check for Git Misconfiguration

for http in $(cat ${INPUT})
do
((COUNT++))
done

echo "Number of websites to process: ${COUNT}"

###################################################################

#Check and download  for .git directory on all domains

WEBSITE=0

for http in $(cat ${INPUT})
do

((WEBISTE++))
(wget -r -P ${INPUT2}website${WEBSITE}_output ${INPUT})

done
