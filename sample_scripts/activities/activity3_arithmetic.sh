#!/bin/bash

#Arithematic activity script

read -p 'enter first value  : ' val1
read -p 'enter second value : ' val2

echo $(let "$val1*$val2")
echo $(expr $val1*$val2)
echo $(($val1*$val2))
today=$(date +"%d")
echo tomorrow date is $(( $today + 1 )) -_-

# random with max limit of 100
echo $(( $RANDOM % 100 ))

# random within given boundaries 
read -p 'min boundary :' min
read -p 'max boundary :' max
range=$(( $max-$min))
result=$RANDOM
let "result %= $range"
result=$(( $result+$min))
echo $result



