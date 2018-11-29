alias be='bundle exec'
alias cl='clear'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias ls='ls -Gp'
alias bsh='vim ~/.dotfiles/.bash_profile'
alias vimrc='vim ~/.dotfiles/.vim/rcfiles'
alias tmc='vim ~/.dotfiles/tmux_conf'
alias ..='cd ..'
alias p='cd ~/Documents/workspace'

# GIT ALIASES
alias gco='git checkout'
alias fuckit='git stash'
alias gperm='ssh-add ~/.ssh/ygt_id_rsa'
alias gst='git status'
alias gd='git diff'
alias gb="git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"
alias gp='git pull'
alias gl='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short -10'
alias gpush='git push origin HEAD'
alias gap='git add --patch'
alias gbclean='git branch --merged master | grep -v "master$" | xargs git branch -d'

