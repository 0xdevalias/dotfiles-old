#! /bin/sh

echo 'Updating Homebrew..'
brew update

echo 'Updating Ruby Gems..'
sudo gem update

echo 'Updating RVM'
rvm get stable
