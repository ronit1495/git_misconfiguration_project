#!/bin/bash

#A script which is used to check for git misconfirations on various domains supplied by user in a file



echo
read -p "Enter the location of file to read: "
echo "${REPLY}"

INPUT=${REPLY}

COUNT=0
echo
echo
read -p "Enter the location of .git files to Store (if not found,it will create the directory): "
INPUT2=${REPLY}

#################################################################

#Check if user supplied a valid path

echo
echo
if [[ -f "${INPUT}" ]]
then
  echo "File located succesfully..."
else
  echo "Enter correct path! "
  exit 1
fi
echo
echo
###################################################################

#Count number of webistes to check for Git Misconfiguration

for http in $(cat ${INPUT})
do
((COUNT++))
done

echo "Number of websites to process: ${COUNT}"
echo
###################################################################

#___Check and download for .git directory on all domains___########


#Create a temporary file of domain names

echo "Creating a temporary file...."
echo
(cat ${INPUT} > tmp_domain_names.txt)


#Append /.git/ on the domain names of temporary file

echo "Appending .git on supplied domains "

(awk '{print $0"/.git/"}' tmp_domain_names.txt > tmp_append_git.txt)

echo

#Catch and download .git folders of domains supplied in the file
echo
echo "Looking for exposed .git folders...."
echo
(wget -r -P ${INPUT2}website_output -i tmp_append_git.txt)
echo
echo "Check Download_location/website_output folder for any git catches"

#Still working on using a sudomain enumeration tool to look for other .git access#
