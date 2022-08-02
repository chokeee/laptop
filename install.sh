#!/bin/bash

if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew"
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/martinnemec/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
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
