# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/giulio/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
alias python='python3'
alias pip='pip3'

PATH="$(brew --prefix)/bin:$PATH"

PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"

# MAPP
alias mappd="source conf/dev.env; npm start"
alias mapp="mappd"

# VENV
alias venv="source venv/bin/activate"
# DAPI confs
alias confd="venv && source conf/test.env"
alias confl="venv && source conf/livestage.env"
alias confp="venv && source conf/secure-prod.env"
alias conf="confd"

# Gunicorn
alias dapip="gunicorn -w 10 startup:__hug_wsgi__"
# Hug
alias dapi="hug -f startup.py"

export EDITOR='subl'
export PATH=/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH
export PATH=/usr/local/bin:$PATH
alias charm="/Applications/PyCharm.app/Contents/MacOS/pycharm"
alias subl="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"


# DB
alias localdb='unset DATABASE_URL ; export DATABASE_URL=postgres://localhost/giuliolocal';
alias devdb="`unset DATABASE_URL ; cat ~/dev/dapi/conf/test.env| grep -i postgres`"
alias proddb="`unset DATABASE_URL ; cat ~/dev/dapi/conf/prod.env| grep -i postgres`"
alias livestagedb="`unset DATABASE_URL ; cat ~/dev/dapi/conf/livestage.env| grep -i postgres`"
alias db="psql $DATABASE_URL"
alias analyticsdb='`unset DATABASE_URL ; export DATABASE_URL=postgres://ublju9s0518fr7:pc7b507f637bf462a4fe0fe14cad63573d4aaa7a245c1b2e4cf29d7c5c211661b@ec2-52-0-80-78.compute-1.amazonaws.com:5432/dfujisbsqm5smr`';
# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
export HISTTIMEFORMAT="%d/%m/%y %T "

# Fastlane
export PATH="$HOME/.fastlane/bin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# React Native
alias rn='/Users/giulio/.nvm/versions/node/v8.11.1/bin/react-native';

alias ip='ipconfig getifaddr en0'
