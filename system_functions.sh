#!/bin/bash
current_date=$(date)
disk_usage=$(df -h)
show_date() {
  echo "Current Date: $current_date"
}

show_disk() {
  echo "Disk Usage:"
  echo "$disk_usage"
}

show_date
show_disk


