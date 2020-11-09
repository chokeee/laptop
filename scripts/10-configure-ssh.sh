#!/bin/bash

if [ -d ~/Library/Mobile\ Documents/com~apple~CloudDocs/.storage/.ssh/ ]
then
  echo "Importing ssh key(s) and configuration..."
  if [ ! -d ~/.ssh/ ]
  then 
    mkdir -p ~/.ssh
  fi
  ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/.storage/.ssh/* ~/.ssh
  chmod -R 700 ~/.ssh
fi
