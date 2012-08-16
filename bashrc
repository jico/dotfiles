source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

# load RVM into shell session
[[ -s "/Users/jico/.rvm/scripts/rvm" ]] && source "/Users/jico/.rvm/scripts/rvm"

NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

# tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# load grc for moar colors
source "`brew --prefix grc`/etc/grc.bashrc"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
