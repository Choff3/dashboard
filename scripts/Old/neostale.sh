#!/bin/bash
while [ true ]
do
  neofetch
  H=$(date +%H)
  if (( 6 <= 10#$H && 10#$H < 20 )); then 
    cat messages/break.txt
  else
    cat messages/night.txt
  fi
  for i in {1..39}
  do
    sleep 0.5
    printf "/"
    sleep 0.5
    printf "\\"
  done
  echo
  #sleep 40
done

