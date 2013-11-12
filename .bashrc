
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Sublime Text Editor
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias sublime="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias edit="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

### OSX Hibernation Modes
alias hibernateon="sudo pmset -a hibernatemode 25"
alias hibernateoff="sudo pmset -a hibernatemode 3"
alias hibernatecheck="pmset -g | grep hibernate"

# Pentest
# alias decode_bigip="echo 1577258443.36895.0000 | perl -ne'print join ".", map {hex} reverse ((sprintf "%08x", split /\./, $_) =~ /../g);'"

# Git
alias gl1="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gl2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gl="gl1"

# Homebrew
alias brewdir="cd $(brew --prefix) && pwd"
alias brewcachedir="cd /Library/Caches/Homebrew && pwd"
alias caskdir="cd $(brew --prefix)/Library/Taps/phinze-cask && pwd"
