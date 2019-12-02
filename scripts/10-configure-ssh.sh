#!/bin/bash

if [ -d /Volumes/Keybase/private/*/ssh/ ]
then
  echo "Importing ssh key(s) and configuration..."
  if [ ! -d ~/.ssh/ ]
  then 
    mkdir -p ~/.ssh
  fi
  ln -s /Volumes/Keybase/private/*/ssh/* ~/.ssh
  chmod -R 700 ~/.ssh
fi
