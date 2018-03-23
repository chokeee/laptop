#!/bin/bash

echo "Configuring mackup..."
[ -f ~/.mackup.cfg ] && echo "Mackup config present" || printf '[storage]\nengine = icloud' > ~/.mackup.cfg

echo "Restoring mackup..."
mackup restore