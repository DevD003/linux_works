#!/bin/bash

echo STDIN --- Example '(Display all file names in current dir)'
echo
echo Usage: 'sudo ls -la | sh ./ativity2_stdin.sh'
echo ====================================
echo
cat /dev/stdin | cut -d ' ' -f 9,10 

