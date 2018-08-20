#!/bin/bash/

file_name=$1

echo $file_name

read -p "Enter object to get properties for: " objectname

all_properties=($(awk -F '=' -v input="${objectname}" '$1 ~ input{flag=1; next} $1 ~ /\[object/{flag=0; next} flag && NF {split($0,arr,"="); print arr[2] }  $file_name))

output=$(awk '/^\[[a-z0-9]*:children\]$/ { obj=$0 } /^property=.*/ { print obj $0 }' $file_name)

echo $output
