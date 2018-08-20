#!/bin/bash/

{
 printf 'Cluster_name: \n'
 while read -r -a line; do 
 [[ ${line[0]} ]] || continue          #skip blank lines
 [[ ${line[0]} = "#"* ]] && continue   #skip comments
 [[ ${line[0]} = 127.0.0.1 ]] continue #skip local-host
 
 set -- "${line[@]}"
 ip=$1; shift
 for name; do
    printf " %s \n ip: '%s'\n " "$name" "$ip"
  done
done 
} </etc/hosts >etc_hosts_`date +"%R_%F"`.yaml
