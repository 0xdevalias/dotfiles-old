
# Fix path issues for homebrew postgresql under lion/etc
PATH=/usr/local/bin:$PATH

# Load bash aliases
source ~/.bashrc

# RVM
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# http://edapx.com/2013/05/23/switching-from-rvm-to-rbenv/

# brew install ruby193
# rvm mount /usr/local/Cellar/ruby193/1.9.3-p448

# rvm install 1.9.3 --autolibs=enable

# rvm autolibs homebrew
# rvm automount
