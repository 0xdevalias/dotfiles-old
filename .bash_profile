
#echo Setting up ssh-agent..
#eval `ssh-agent -s`

# Enable rbenv shims, Fix path issues for homebrew postgresql under lion/etc
#PATH=~/.rbenv/shims:/usr/local/sbin:/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# jenv (http://www.jenv.be)
export JENV_ROOT=/usr/local/opt/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

# rbenv (https://github.com/sstephenson/rbenv)
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Bash-Completion (http://bash-completion.alioth.debian.org/)
# Normal Location: /usr/local/etc/bash_completion.d
# Brew Location: /usr/local/share/bash-completion/completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -f $(brew --prefix)/etc/bash_completion.d ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

complete -C aws_completer aws

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

export PATH="$PATH:/Applications/Muse"

export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/Applications/Muse"
