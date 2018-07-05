#!/bin/bash

#Read Name to display on welcome screen
 
read -p "Enter Name to Display on welcome note: " display_name
echo Welcome Note Display Name: $display_name
read -p "Enter the Logged in | Message " Log_message
echo Log in Message: $Log_message

sed -i '2 i \echo ***********************************************************************************************************************************************************'
sed -i '3 i \echo ***********************************************************************************************************************************************************'

sed -i "4 i \echo Welcome back ~~~~ ------- \"`$display_name`\" -------- ~~~~"
sed -i '5 i \echo "Date: $(date +%A) \necho "Time: $(date "+%K:%M")" \n \ncowsay -f bud-frogs " $(fortune -s) "'
sed -i "6 i \cowsay -f tux " LOGGED IN  \"`$Log_message`\" ""

sed -i '7 i \echo ***********************************************************************************************************************************************************'
sed -i '8 i \echo **********************************************************************************************************************************************************'

echo "Done Changing .bashrc --- Custom Login Screen Created"

