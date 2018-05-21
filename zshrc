# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=pygmalion
#ZSH_THEME=ys
#ZSH_THEME=gentoo

# Example aliases
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git screen python colored-man colorize capistrano fabric pip virtualenv virtualenvwrapper debian virtualenv-prompt vagrant)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export PYTHONIOENCODING="utf_8"

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

source ~/.aliases

## Setup zsh-autosuggestions
#source ~/.zsh-autosuggestions/autosuggestions.zsh

## Enable autosuggestions automatically
#zle-line-init() {
    #zle autosuggest-start
#}
#zle -N zle-line-init

## use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
## zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle
#
#
#http://stackoverflow.com/questions/3964068/zsh-automatically-run-ls-after-every-cd
function list_all() {
    emulate -L zsh
    ls -a
}
chpwd_functions=(${chpwd_functions[@]} "list_all")

cd ~/

#http://www.howtogeek.com/howto/44997/how-to-use-bash-history-to-improve-your-command-line-productivity/
HISTCONTROL=ignoreboth
source ~/git-subrepo/.rc

#https://docs.npmjs.com/getting-started/fixing-npm-permissions#option-2-change-npms-default-directory-to-another-directory
export PATH=~/.npm-global/bin:~/.local/bin:$PATH
