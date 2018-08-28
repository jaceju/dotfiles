# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="taybalt"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git wd laravel5)

##############################
# Oh my zsh
##############################
source $ZSH/oh-my-zsh.sh

##############################
# Functions
##############################
ld () {
	FILE=${1}
	if [ -f "$FILE" ]; then
		source $FILE
	fi
}
ld "$HOME/.dotfiles/zsh/partials/function.sh"

##############################
# Alias
##############################
ld "$HOME/.dotfiles/zsh/partials/alias.sh"

##############################
# Environment Variables
##############################
export PATH=/usr/local/sbin:bin:vendor/bin:node_modules/.bin:$HOME/.composer/vendor/bin:$HOME/.bin:$PATH
export REDIS_HOST="127.0.0.1"
export REDIS_PORT=6379
export APP_ENV="local"

##############################
# Iterm 2
##############################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

##############################
# added by travis gem
##############################
[ -f /Users/jaceju/.travis/travis.sh ] && source /Users/jaceju/.travis/travis.sh

##############################
# Fzf settings
##############################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
