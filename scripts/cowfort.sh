#!/bin/bash
echo "-----------" | lolcat
echo "-----------" | lolcat
echo "-----------" | lolcat
echo "-----------" | lolcat
echo "-----------" | lolcat
while [ true ]
do
  fortune | cowsay | lolcat
  sleep 86400
done
