#! /bin/sh

echo 'Updating Ruby Gems..'
sudo gem update

echo 'Updating Homebrew..'
brew update

echo 'Updating Homebrew Lists..'
~/.dotfiles/brew_lists.sh

echo 'Updating npm List..'
~/.dotfiles/npm_list.sh

#echo 'Updating RVM'
#rvm get stable
