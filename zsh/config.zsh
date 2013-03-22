if [[ -n $SSH_CONNECTION ]]; then
    #export PS1='%m:%3~$(git_info_for_prompt)%# '
    df_set_prompt '%m:%3~$(git_info_for_prompt)%# '
else
    #export PS1='%3~$(git_info_for_prompt)%# '
    df_set_prompt '%3~$(git_info_for_prompt)%# '
fi

#export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

# Use hard limits, except for a smaller stack and no core dumps
unlimit
limit stack 8192
limit core 0
limit -s

umask 002

# automatically remove duplicates from these arrays
typeset -U path cdpath fpath manpath

fpath=($ZSH/zsh/functions $fpath)

autoload -U $ZSH/zsh/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
#SAVEHIST=10000
SAVEHIST=0

#
# from previous zshrc file.
#
## Set/unset  shell options
#setopt   notify globdots correct pushdtohome cdablevars autolist
#setopt   correctall autocd recexact longlistjobs
#setopt   autoresume histignoredups pushdsilent noclobber
#setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash


setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
#setopt IGNORE_EOF # ignores ctl-d
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

MAILCHECK=30
HISTSIZE=200
DIRSTACKSIZE=20

# Watch for my friends
#watch=( $(<~/.friends) )       # watch for people in .friends file
watch=(notme)                   # watch for everybody but me
LOGCHECK=30                     # check every 30 secs for login/logout activity
#LOGCHECK=300                    # check every 5 min for login/logout activity
WATCHFMT='%n %a %l from %m at %t.'

# Set/unset  shell options
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash
# this is an attempt to stop some autocorrects w/ sudo
unsetopt correctall

# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile


zle -N newtab

MAILCHECK=30
HISTSIZE=200
DIRSTACKSIZE=20

# Watch for my friends
#watch=( $(<~/.friends) )       # watch for people in .friends file
watch=(notme)                   # watch for everybody but me
LOGCHECK=30                     # check every 30 secs for login/logout activity
#LOGCHECK=300                    # check every 5 min for login/logout activity
WATCHFMT='%n %a %l from %m at %t.'


# Autoload zsh modules when they are referenced
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zmodload -ap zsh/mapfile mapfile




# --- bindkey ---

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

# Some nice key bindings
#bindkey '^X^Z' universal-argument ' ' magic-space
#bindkey '^X^A' vi-find-prev-char-skip
#bindkey '^Xa' _expand_alias
#bindkey '^Z' accept-and-hold
#bindkey -s '\M-/' \\\\
#bindkey -s '\M-=' \|

# bindkey -v               # vi key bindings

bindkey -e                 # emacs key bindings
bindkey ' ' magic-space    # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand


