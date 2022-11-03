#!/bin/bash

echo "Symlinking mackup..."
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Mackup/.mackup.cfg ~/.mackup.cfg
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Mackup/.mackup ~/.mackup

echo "Restoring mackup..."
mackup restore
