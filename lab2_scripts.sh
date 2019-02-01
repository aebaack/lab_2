#!/bin/bash
# Authors : Aidan Baack
# Date: 2/1/2019

#Problem 1 Code:

#Take user input
echo "Enter a regular expression: "
read regExp
echo "Enter a file: "
read file

#Test regular expression against the file
grep $regExp $file


