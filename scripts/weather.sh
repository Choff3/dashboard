#!/bin/bash

while [ true ]
do
  curl https://wttr.in/Atlanta?F1Q
  time=$(date +"%T")
  echo "Atlanta, GA"
  echo -n "Last updated at $time"
  sleep 3600
  echo
done
