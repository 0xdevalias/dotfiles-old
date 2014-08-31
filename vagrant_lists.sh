cd ~/.dotfiles

echo Updating vagrant plugin list file..
vagrant plugin list > vagrant-plugin.list

# echo Staging in git..
# git add brew.list
# git add brew-tap.list
# git add brew-cask.list

echo Diffs..
git diff vagrant-plugin.list
git status
