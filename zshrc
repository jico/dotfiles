. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

# Path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="bolt"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git osx brew ruby rvm node npm)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/bin:/usr/X11/bin:/usr/games:$HOME/.bin:/bin:/sbin:/usr/texbin:$HOME/.rvm/bin:/usr/local/rvm/bin:/usr/local/share/python

platform=`uname`

# load RVM into a shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# OS X specific stuff
if [[ "$platform" == "Darwin" ]]; then
  CC=/usr/bin/gcc-4.2
  export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

  # load grc for pretty colors
  source "`brew --prefix grc`/etc/grc.bashrc"
fi

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

