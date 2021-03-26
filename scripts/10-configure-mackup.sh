#!/bin/bash

echo "Symlinking mackup..."
ln -s ~/iCloud/.storage/.mackup.cfg ~/.mackup.cfg
ln -s ~/iCloud/.storage/.mackup ~/.mackup

echo "Restoring mackup..."
mackup restore
