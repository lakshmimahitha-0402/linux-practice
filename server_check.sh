#!/bin/bash

echo "server check started"
username=$(whoami)
current_directory=$(pwd)
current_date=$(date)
disk_space=$(df -h)
echo "Username: $username"
echo "Current Directory: $current_directory"
echo "Current Date: $current_date"
echo "Disk space"
echo "$disk_space"
echo "server check completed"

