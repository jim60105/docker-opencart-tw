#!/bin/bash

# Switch to root privileges. my system is set to only run Docker as root 
echo "Stopping Container..."
su - root -c "docker stop  \$(docker ps -a -f 'label=opencart' -q)"
su - root -c "docker stop  \$(docker ps -a -f 'label=proxy' -q)"
