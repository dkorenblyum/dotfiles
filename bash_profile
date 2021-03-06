if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# OSX Sierra ssh woes http://apple.stackexchange.com/questions/254468/macos-sierra-doesn-t-seem-to-remember-ssh-keys-between-reboots
ssh-add -A 2>/dev/null;

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#lets use the latest vim. install macvim, then alias it
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

alias curl-stats=~/dotfiles/scripts/curl-stats.sh

alias start-postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop-postgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias purge-cache=~/dotfiles/scripts/purge-cache.sh

alias simple-server='python -m SimpleHTTPServer'

# this assumes that ive cloned tmux, and compiled it. see https://deductivelabs.com/en/2016/03/using-true-color-vim-tmux/
alias tmux-tc='~/source/tmux/tmux'

# colors for terminal
source ~/dotfiles/.git-ps1.sh

# git autocomplete scripts. 
source ~/dotfiles/.git-prompt.sh
source ~/dotfiles/.git-completion.sh
source ~/dotfiles/.git-flow-completion.sh

# and more colors for the terminal, maybe move to .git-ps1.sh
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#rbenv -- needed
eval "$(rbenv init -)"

#title for the bash window/tab
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# http://stackoverflow.com/questions/10158508/lose-vim-colorscheme-in-tmux-mode
alias tmux='TERM=screen-256color-bce tmux'

