#!/bin/bash
# Authors : Aidan Baack
# Date: 2/1/2019

#Take user input
echo "Enter a regular expression: "
read regExp
echo "Enter a file: "
read file

#Test regular expression against the file
grep -E $regExp $file

#Find all phone numbers
echo "Total number of phone numbers: "
grep -c "[1-9][0-9]\{2\}-[0-9]\{3\}-[0-9]\{4\}" "regex_practice.txt"

#Find all emails
echo "Total number of emails: "
grep -c "\b[A-Za-z]\+\@[A-Za-z]\+\.[A-Za-z]\+" "regex_practice.txt"

#Create files with found information
#303 area code phone numbers
grep "303-[0-9]\{3\}-[0-9]\{4\}\$" "regex_practice.txt" > "phone_results.txt"

#geocities.com emails
grep "\b[A-Za-z]\+\@geocities.com$" "regex_practice.txt" > "email_results.txt"

#Command line results
echo "The command line argument is: $1"
grep -E $1 "regex_practice.txt" > "command_results.txt"
