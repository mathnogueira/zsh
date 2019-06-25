# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matheus/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme agnoster
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)

# Git powerline colors
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='231'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='166'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='231'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='088'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='016'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='002'

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

POWERLEVEL9K_STATUS_ERROR_BACKGROUND='088'
POWERLEVEL9K_STATUS_OK_BACKGROUND='000'

antigen theme bhilburn/powerlevel9k powerlevel9k


# Tell Antigen that you're done.
antigen apply

