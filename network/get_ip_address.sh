#!/bin/bash

#################################
# Author: Marc Lopez Rubio      #
# e-mail: marc5.12@outlook.com  #
# GitHub: marclop               #
# date: 02/12/2015              #
#################################

# Check which unix family the os belongs to
unix_family=$(uname -s)

if [[ ${unix_family} == 'Darwin' ]]; then
  # Get the default route interface
  interface=$(route get 8.8.8.8 | grep interface | awk '{print $2}')

  # Print the actual IP
  echo $(ifconfig $interface | grep 'inet ' | awk '{print $2}')
elif [[ ${unix_family} == 'Linux' ]]; then
  #statements
  which ip
  if [[ $? -ne 0 ]]; then
    echo "This script cannot be run in this computer. Reason: No \'ip\' command found"
    echo "Exiting..."; exit 1
  fi
  # Get the default route interface
  interface=$(ip route | grep default | awk '{print $NF}')

  echo $(ip addr show ${interface} scope global | grep 'inet' | awk '{print $2}' | cut -d '/' -f1)
else
  echo "Distribution not supported."; exit 1
fi
