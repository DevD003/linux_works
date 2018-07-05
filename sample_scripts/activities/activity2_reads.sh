#!/bin/bash

echo Hello! Who are you ?
read user 

echo Hi! $user, Welcome ... 
echo
echo Logged in to $(echo $HOSTNAME) HOST Machine, as $(echo $USER) USER
echo
echo Current time is $(date +"%R") on $(date +"%F")
echo
echo Current dir: $(pwd)





