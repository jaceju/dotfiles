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
plugins=(
    artisan
    brew
    git
    wd
    zsh-autosuggestions
    zsh-syntax-highlighting
    composer
    ssh-agent
)

##############################
# Shortcut Keys
##############################
bindkey \^K kill-line

##############################
# Artisan plugin variables
##############################
ARTISAN_OPEN_ON_MAKE_EDITOR=pst # PHPStorm

##############################
# Dotfiles partials
##############################
PARTIALS="$HOME/.dotfiles/zsh/partials"

##############################
# ssh-agent
##############################
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa_kkbox
zstyle :omz:plugins:ssh-agent lifetime 30d

##############################
# Oh my zsh
##############################
source $ZSH/oh-my-zsh.sh

##############################
# Functions
##############################
source "$PARTIALS/function.sh"

##############################
# Alias
##############################
source "$PARTIALS/alias.sh"

##############################
# Environment Variables
##############################
export GOPATH="$HOME/go"
export CURL_CA_BUNDLE=${HOME}/.config/valet/CA/LaravelValetCASelfSigned.pem
export PATH=$HOME/Projects/kkbox/web/maintain-tools:$PATH
export PATH=$HOME/Projects/kkbox/web/ci-docker-image/docker-tools:$PATH
export PATH=$HOME/Projects/kkbox/jaceju/kkbox-shell-tools:$PATH
export PATH=$GOPATH/bin:$HOME/.composer/vendor/bin:$HOME/.bin:$HOME/.deno/bin:$PATH
export PATH=/usr/local/sbin:bin:vendor/bin:node_modules/.bin:$PATH
#export REDIS_HOST="127.0.0.1"
#export REDIS_PORT=6379
export APP_ENV="local"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export HISTTIMEFORMAT="%d/%m/%y %T "
export EDITOR="vim"

##############################
# Iterm 2
##############################
[ -f "${HOME}/.iterm2_shell_integration.zsh" ] && source "${HOME}/.iterm2_shell_integration.zsh"

##############################
# Z jump
##############################
[ -f "/usr/local/etc/profile.d/z.sh" ] && . /usr/local/etc/profile.d/z.sh

##############################
# added by travis gem
##############################
[ -f "${HOME}/.travis/travis.sh" ] && source ${HOME}/.travis/travis.sh

##############################
# Fzf settings
##############################
[ -f "${HOME}/.fzf.zsh" ] && source ${HOME}/.fzf.zsh

##############################
# Thefuck
##############################
[ -f "/usr/local/bin/thefuck" ] && eval $(thefuck --alias)

##############################
# HashiCorp
##############################
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C $(which vault) vault
complete -o nospace -C $(which nomad) nomad
export VAULT_ADDR='http://127.0.0.1:8200'
export NOMAD_ADDR='http://127.0.0.1:4646'
