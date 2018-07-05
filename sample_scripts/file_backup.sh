#!/bin/bash

# File to be copied as the first argument
source_file=$1
echo Copying ..... $1

# Isolating file name from extension 
src_basename=$(basename -s .sh $source_file)
echo File_name: $src_basename

# Registering the extension
complete_basename=`basename $source_file`
echo File: $complete_basename

src_extension="${complete_basename##*.}"
echo file-extension: $src_extension

# Time Stamp
copy_gen_timestamp=$(date +"%R_%F")
echo Copying at .... $copy_gen_timestamp

# Copying the File 
#copy_file_with_timestamp=$(cp  $1  $src_basename_$copy_gen_timestamp.$src_extension)

# Diplay Summary
echo File     :   $1
echo Copied on:   $copy_gen_timestamp 
echo Saved as :   $src_basename'_'$copy_gen_timestamp.$src_extension
