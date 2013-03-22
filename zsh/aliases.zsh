alias reload!='. ~/.zshrc'

# Set up aliases
alias ln='nocorrect ln'       # no spelling correction on mv
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias grep='nocorrect grep' # no spelling correction on mkdir
alias vim='nocorrect vim' # no spelling correction on mkdir
alias aptitude='nocorrect aptitude' # no spelling correction on mkdir
alias j=jobs
alias pu=pushd
alias po=popd
alias d='dirs -v'
alias h=history
alias grep=egrep
alias ls='ls -B'
alias ll='ls -l'
alias la='ls -a'
alias last='last -a'

# List only directories and symbolic
# links that point to directories
alias lsd='ls -ld *(-/DN)'

# List only file beginning with "."
alias lsa='ls -ld .*'

# Global aliases -- These do not have to be
# at the beginning of the command line.
alias -g M='|more'
alias -g H='|head'
alias -g T='|tail'

alias a=alias

