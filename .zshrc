# Path to your oh-my-zsh installation.
export ZSH=/Users/matthew.freeman/.oh-my-zsh
#export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cacert.pem

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="freeman"

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
DISABLE_AUTO_TITLE="true"

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
plugins=(git rails)

# User configuration

export PATH="$PATH:~/.rbenv/bin:~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias startZuul='cd $HOME/zuul; SKIP_NUVI=true bundle exec rails s;'

alias startGute='cd $HOME/gutenberg; bundle exec rails s -p 3003 -b 0.0.0.0'

alias startgav='cd $HOME/gavin; bundle exec rails s -p 1804'

alias startRedis='cd $HOME/gutenberg; redis-server'

alias ukiq="bundle exec sidekiq --verbose"

alias startUhf='cd $HOME/uhf; bundle exec rails s -p 3004'

alias npmstart='npm run watch'

alias openPorts='lsof -i -P | grep -i "listen"'

alias gs='git status'
alias gcm='git commit -m'
alias gss='git stash save'
alias gaa='git add .'
alias master='git checkout master'

alias cdgute='cd $HOME/gutenberg'
alias cdzuul='cd $HOME/zuul'
alias cdxtend='cd $HOME/xtend/chrome' 
alias cdu='cd $HOME/uhf'
alias min='cd $HOME/minaret’
alias smith='cd $HOME/smithers’
alias cdg='cd $HOME/gavin'

alias gdiff='git difftool'

alias startRerun='ssh mongo01-stage.awse.nuviapp.com'
alias startHistory='mongo mongo-system-live.nuviapp.com/nuvis_log -unuvicorp -pnuvitweets1337'

alias h='cd $HOME'

alias stageRabbit='ssh -L 15673:localhost:15672 rabbit01-core-stage.awse.nuviapp.com'
alias prodRabbit='ssh -L 15673:localhost:15672 rabbit01-core-prod.awse.nuviapp.com'

# FUNCTIONS
function nt() { echo -e '\033];'$1'\007' ; }

export GOPATH=$HOME/go_go_gadget
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(rbenv init -)"
