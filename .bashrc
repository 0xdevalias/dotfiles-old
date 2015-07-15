### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH:/usr/local/Cellar/ruby/2.1.2/lib/ruby/gems/2.1.0/gems/genghisapp-2.3.11/bin"

# http://www.berserkcomputers.co.uk/save-time-machine-backups-to-a-network-share-on-another-computer/
# TODO: Write better functions for these:
# sudo tmutil setdestination /Volumes/{mounted-disk-image}
# alias enableUnsupportedDrives="defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1"
# http://hints.macworld.com/article.php?story=20080420211034137
# hdiutil create -library SPUD -size $SIZESPEC -fs Journaled HFS+ -type SPARSEBUNDLE -volname darklink1.sparsebundle

alias reloadbash="echo .bash_profile Reloading.. && exec bash -l" #"source ~/.bash_profile && echo .bash_profile reloaded."
alias plainpaste="(pbpaste | pbcopy) && echo Clipboard content converted to plaintext"

showlocked() {
  if [ -z "$1" ]
    then
      local dir="."
    else
      local dir="$1"
  fi

  find "$dir" -flags uchg
}

unlock() {
  if [ -z "$1" ]
    then
      local dir="."
    else
      local dir="$1"
  fi

  chflags -R nouchg "$dir"
}

alias unlocktrash="unlock ~/.Trash && echo All files in trash unlocked"

# http://superuser.com/questions/443989/mac-per-kext-memory-extension-aka-which-kext-is-leaky#comment1037660_448665
kernelMemory() {
  kextstat | awk 'NR==1{ printf "%10s %s\n", $5, $6; } NR!=1{ printf "%10d %s\n", $5, $6; }' | sort -n
}

title() {
  echo -n -e "\033]0;$1\007"
}

# SSH

ssh-keyinit() {
  cd ~/.ssh
  ssh-add github_alias1_rsa bitbucket_devalias_rsa
}

# Git
alias gl1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gl2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gl="gl1"

# Homebrew
alias brewdir="cd $(brew --prefix) && pwd"
alias brewcellardir="cd $(brew --prefix)/Cellar && pwd"
alias brewcachedir="cd /Library/Caches/Homebrew && pwd"
alias caskdir="cd $(brew --prefix)/Library/Taps/phinze-cask && pwd"

### Hosts
alias hosts="sudo vi /private/etc/hosts"
alias edit_hosts="sudo vi /private/etc/hosts"
alias cat_hosts="cat /private/etc/hosts"

### OSX Hibernation Modes
alias hibernateon="sudo pmset -a hibernatemode 25"
alias hibernateoff="sudo pmset -a hibernatemode 3"
alias hibernatecheck="pmset -g | grep hibernate"

# Pentest
# alias decode_bigip="echo 1577258443.36895.0000 | perl -ne'print join ".", map {hex} reverse ((sprintf "%08x", split /\./, $_) =~ /../g);'"

### SSH
alias sshlist="cat ~/.ssh/config | grep \"Host \""

### SSHFS
alias unsshfs="umount -f ~/mnt/ssh/"
alias sshfs-wlpc-staging="sshfs wlpc-staging:/ ~/mnt/wlpc && sleep 1 && cd ~/mnt/wlpc && pwd && ls"
alias sshfs-wlpc-demodashboard="sshfs wlpc-demodashboard:/var/www/html/dashboard ~/mnt/wlpc && sleep 1 && cd ~/mnt/wlpc && pwd && ls"
alias sshfs-wlpc-demodashboard-staging="sshfs wlpc-demodashboard-staging:/var/www/html/dashboard-staging ~/mnt/wlpc && sleep 1 && cd ~/mnt/wlpc && pwd && ls"
alias unsshfs-wlpc="umount -f ~/mnt/wlpc/ && ls ~/mnt/wlpc"

### Sublime Text Editor
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias sublime="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias edit="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

# RVM
# rvm autolibs homebrew

# Lair
alias lairstart="cd /Users/alias/pentest/lair-v1.0.2-darwin-x64 && pwd && ./start.sh 0.0.0.0"
alias lairstop="cd /Users/alias/pentest/lair-v1.0.2-darwin-x64 && pwd && ./stop.sh"
export MONGO_URL='mongodb://lair:s3cUr3l41r@127.0.0.1:11014/lair?ssl=true'

# Muse
export PATH="$PATH:/Applications/Muse"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/Applications/Muse"
alias muse-start="muse-io --osc osc.udp://localhost:5001,osc.udp://localhost:5002"
