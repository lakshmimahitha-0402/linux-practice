#!/bin/bash

for file in employees.txt missing.txt server_check.sh deploy.sh
do
  if [ -f "$file" ]; then
     echo "$file exists"
  else
     echo "$file does not exists"
  fi
done
