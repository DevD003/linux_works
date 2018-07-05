#!/bin/bash

echo Hello, who am I talking to?
read varname
echo It\'s nice to meet you $varname

# Ask the user for login details
read -p 'Username: ' uservar   # prompt
read -sp 'Password: ' passvar  # silent prompt read
echo
echo Thankyou $uservar we now have your login details

# Demonstrate how read actually works
echo What cars do you like? - enter 3 .max 
read car1 car2 car3
echo Your first car was: $car1
echo Your second car was: $car2
echo Your third car was: $car3

# A basic summary of my sales report - READING FROM STDIN
echo Here is a summary of the sales data:
echo ====================================
echo
cat /dev/stdin | cut -d' ' -f 2,3 | sort #cat the file representing STDIN, cut setting the delimiter to a space, fields 2 and 3 then sort the output.


