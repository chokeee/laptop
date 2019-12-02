#!/bin/bash

if [ -a /Volumes/Keybase/private/*/gpg/private.asc ]; then
  echo "Importing gpg key"
  gpg --import /Volumes/Keybase/private/*/gpg/private.asc
fi
