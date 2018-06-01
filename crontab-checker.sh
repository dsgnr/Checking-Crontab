#!/bin/bash
# Define colors for output
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`
echo ${yellow}"Checking Crontab for each user..."${reset}
for user in $(cut -f1 -d: /etc/passwd); do echo ${green}'Crontab for user:' $user ${reset} && crontab -u $user -l; done
