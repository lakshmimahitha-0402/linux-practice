#!/bin/bash

if [ "$1" = "production" ]; then
   echo "Production deployment started"
elif [ "$1" = "testing" ]; then
   echo "Testing deployment started"
elif [ "$1" = "development" ]; then
   echo "Development deployment started"
else
   echo "Unknown environment"

fi
