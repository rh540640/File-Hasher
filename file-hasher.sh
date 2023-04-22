#!/bin/bash

echo "Enter file path to hash:"
read file_path

if [ -f "$file_path" ]; then
  echo "Choose hash type (md5/sha256):"
  read hash_type

  if [ "$hash_type" == "md5" ]; then
    hash=$(md5sum "$file_path" | cut -d ' ' -f 1)
    echo "MD5 hash of file $file_path is $hash."
  elif [ "$hash_type" == "sha256" ]; then
    hash=$(sha256sum "$file_path" | cut -d ' ' -f 1)
    echo "SHA256 hash of file $file_path is $hash."
  else
    echo "Invalid hash type selected."
  fi
else
  echo "File $file_path does not exist."
fi
