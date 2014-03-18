
# Fix path issues for homebrew postgresql under lion/etc
PATH=/usr/local/sbin:/usr/local/bin:$PATH

# rbenv (https://github.com/sstephenson/rbenv)
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Bash-Completion (http://bash-completion.alioth.debian.org/)
# Normal Location: /usr/local/etc/bash_completion.d
# Brew Location: /usr/local/share/bash-completion/completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
# Theoretically shouldn't need to manually do this..?
# if [ -f /usr/local/etc/bash_completion.d ]; then
#   . /usr/local/etc/bash_completion.d/brew
# fi
### Bash Completions
# Vagrant-Bash-Completion (https://github.com/kura/vagrant-bash-completion)
# Should be loaded by bash-completion automagically
# if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
#     source `brew --prefix`/etc/bash_completion.d/vagrant
# fi

# Load bash aliases
source ~/.bashrc
