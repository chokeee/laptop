#!/bin/bash

ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs ~/iCloud

if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew"
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v git > /dev/null 2>&1; then
  echo "Installing git"
  yes | brew install git
fi

if [ ! -d ~/Documents/.laptop ]; then
  git clone https://github.com/chokeee/laptop.git ~/Documents/.laptop
fi

chmod +x ~/Documents/.laptop/scripts/*

for s in ~/Documents/.laptop/scripts/0*.sh; do source $s; done
for s in ~/Documents/.laptop/scripts/1*.sh; do source $s; done

zsh
