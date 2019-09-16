#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
else
apt update && apt dist-upgrade -y && apt autoremove -y && apt clean
fi
