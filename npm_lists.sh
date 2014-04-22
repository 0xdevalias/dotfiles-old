cd ~/.dotfiles

echo Updating npm list file..
npm list -g -json > npm.list

# echo Staging in git..
# git add brew.list
# git add brew-tap.list
# git add brew-cask.list

echo Diffs..
git diff npm.list
git status
