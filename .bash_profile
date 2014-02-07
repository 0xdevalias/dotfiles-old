
# Fix path issues for homebrew postgresql under lion/etc
PATH=/usr/local/bin:$PATH

# Load bash aliases
source ~/.bashrc

# RVM
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
