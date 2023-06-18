#!/bin/bash

# This script substitutes the word
echo "Enter the word you would like to replace."
read word
echo "Enter the word that you would like to be replaced."
read replaceWord
echo "Enter filename"
read fileName

# To check if the file exists
if [[ -f $fileName ]]
then
	sed -i "s/$word/$replaceWord/gI" "$fileName"
else
	echo "$fileName does not exist"
fi

#Display the changes made in the file
echo "Word got replaced in $fileName:"
cat $fileName
