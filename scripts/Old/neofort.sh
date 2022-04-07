#!/bin/bash
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
while [ true ]
do
  neofetch
  lolcat -a -d 60 messages/dailyfortune.txt
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
done
