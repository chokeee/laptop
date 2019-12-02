#!/bin/bash

if [ -d /keybase/private/*/ssh/ ]
then
  echo "Importing ssh key(s) and configuration..."
  if [ ! -d ~/.ssh/ ]
  then 
    mkdir -p ~/.ssh
  fi
  ln -s /keybase/private/*/ssh/* ~/.ssh
  chmod -R 700 ~/.ssh
fi
