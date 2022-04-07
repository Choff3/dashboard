#!/bin/bash
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
while [ true ]
do
  neofetch
  H=$(date +%H)
  if (( 6 <= 10#$H && 10#$H < 20 )); then 
    lolcat -a -d 1 messages/break.txt
  else
    lolcat -a -d 1 messages/night.txt
  fi
  for i in {1..39}
  do
    sleep 0.5
    printf "${CYAN}"
    printf "/"
    sleep 0.5
    printf "${PURPLE}"
    printf "\\" | lolcat -a | tr '\n' ' '
  done
  echo
  #sleep 40
done
