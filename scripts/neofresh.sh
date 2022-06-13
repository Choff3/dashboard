#!/bin/bash
while [ true ]
do
  neofetch
  H=$(date +%H)
  if (( 6 <= 10#$H && 10#$H < 20 )); then 
    figlet -c "relax" | lolcat -a -d 100 #-f small.flf 
  else
    figlet -c "g'night" | lolcat -a -d 100
  fi
done