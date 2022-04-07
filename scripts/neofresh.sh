#!/bin/bash
while [ true ]
do
  neofetch
  H=$(date +%H)
  if (( 6 <= 10#$H && 10#$H < 20 )); then 
    figlet -c "take a break" | lolcat -a -d 100 #-f small.flf 
  else
    figlet -c "good night" | lolcat -a -d 100
  fi
done