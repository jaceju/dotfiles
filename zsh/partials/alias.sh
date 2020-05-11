#!/bin/bash

####################
# Mac
####################
alias ls="exa"
alias bps="brew-php-switcher"
alias bench="hyperfine"
alias readlink="greadlink" # from coreutils

####################
# Composer
####################
alias comopser='env composer'
alias co='comopser'
alias cocc='comopser clear-cache'
alias coi='comopser install'
alias cou='comopser update'
alias cor='comopser require'
alias cos='comopser show'
alias cod='comopser dump'
alias coe='comopser run-script'
alias coc='comopser create-project'
alias cow='composer why'
alias cogi='comopser global install'
alias cogu='comopser global update'
alias cogr='comopser global require'
alias cogs='comopser global show'

####################
# Linux
####################
alias cls='clear'
alias l1="ls -1"
alias t2="tree -L 2"
alias cat="bat"
alias ping="prettyping"
alias top="sudo htop"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help="tldr"

####################
# Laravel
####################
alias lln='laravel new'
alias llzn='laravel-zero new'
alias art='php artisan'

####################
# Docker
####################
alias dk="docker"
alias dkc="docker-compose"

####################
# PHPUnit
####################
alias pu="phpunit"
alias puf="phpunit --filter"
alias puw="phpunit-watcher watch"
alias puwf="phpunit-watcher watch --filter"
alias pucw="phpunit-watcher watch --coverage-html=coverage-report"
alias puc="phpunit --coverage-html=coverage-report"
alias psp="phpspec"
alias bh="behat"

####################
# Git
####################
alias gcot="git checkout testing"
alias gcos="git checkout staging"
alias gcom="git checkout master"

####################
# Npm
####################
# alias nb="npm run build"
# alias nbf="npm run build:force"
# alias nbr="npm run test:browser"
# alias nc="npm run test:cover"
# alias nd="npm run dev"
# alias ndm="npm run dev:mock"
# alias ne="npm run test:e2e"
# alias nt="npm test"
# alias ntn="npm test test/node/**/*.test.ts"
# alias nu="npm run test:unit"
