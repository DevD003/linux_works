#!/bin/bash

first_arg=$1
second_arg=$2

echo "first arg is $first_arg" "second arg is $second_arg"

#select a random passwd
random_password=$(pwmake $first_arg)
echo Random passwd string with $first_arg charecters is : $random_password

#word length dpepndent on first arg
given_length_word=$(grep -o -w "\w\{$first_arg\}" /usr/share/dict/words | shuf -n 1)
echo Random Word with $first_arg Words is:  $given_length_word

#word-length of the variable as word 
word_length=$(echo -n $second_arg | wc -m)
echo Given Word Length: $word_length

# demonstrate variable 



# Let's verify their current value
echo $0 :: user : $given_length_word, password : $random_password
export var1 var2
./activity1a.sh

# Let's see what they are now
echo $0 :: user : $given_length_word, password : $random_password
