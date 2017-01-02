alias be='bundle exec'
alias cl='clear'
alias rs='bundle exec rails s'
alias fs='foreman start'
alias wp='cd ~/workspace/vagabond/workspace/projects/frontend/webpack;npm run start'
alias rc='bundle exec rails c'
alias ls='ls -Gp'
alias bsh='vim ~/dotfiles/.bash_profile'
alias vimrc='vim ~/dotfiles/.vimrc'
alias tmc='vim ~/dotfiles/tmux_conf'
alias tmkill='tmux kill-server'
alias couchlog='cd; tail -f /usr/local/var/log/couchdb/couch.log'
alias ..='cd ..'

#Sets up specific dev environment for YGT in Tmux session
# alias tm='$HOME/dotfiles/.tmux-dev.sh' old alias to run dev script in tmux
alias tm='tmux attach' #this is the new alias to start tmux and run the servers

# SSH ALIASES
alias stglb='ssh adrianbooth@lb-staging01.palatinategroup.com'
alias lb1='ssh www-data@lb03.palatinategroup.com'
alias lb2='ssh www-data@lb04.palatinategroup.com'
alias lb1cache='lb1 sudo varnishadm ban.url .'
alias lb2cache='lb2 sudo varnishadm ban.url .'
alias lb1t='echo Port forwarding to localhost:19999; lb1 -L19999:localhost:9999'
alias lb2t='echo Port forwarding to localhost:29999; lb2 -L29999:localhost:9999'
alias sshlbstg="ssh adrianbooth@lb-staging01.palatinategroup.com"
alias varnish="sshlbstg -t 'sudo varnishadm ban.url .'"
alias sshstaging='echo Port forwarding to localhost:4999;ssh www-data@ygt-staging02.yourgolftravel.com -L4999:localhost:5984'
alias salesdb='echo Port forwarding to localhost:5985;ssh www-data@wss-ygt-ui01.corp.palatinategroup.com -L5985:wss-ygt-db01:5984'
alias admin02='echo "Port forwarding couchdb02 to 5984:3999"; ssh www-data@admin-actual.yourgolftravel.com -L3999:couchdb02:5984'
alias admin01='echo "Port forwarding couchdb02 to 5984:3999"; ssh www-data@admin-actual.yourgolftravel.com -L3999:couchdb01:5984'
alias ssh03="ssh www-data@ygt-frontend03.yourgolftravel.com"
alias ssh04="ssh www-data@ygt-frontend04.yourgolftravel.com"

# GIT ALIASES
alias gco='git checkout'
alias fuckit='git stash'
alias gperm='ssh-add ~/.ssh/ygt_id_rsa'
alias gst='git status'
alias gd='git diff'
alias gb='git branch'
alias gp='git pull'
alias gl='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
alias gpush='git push origin HEAD'
__git_complete gco _git_checkout
alias gbclean="git branch --merged master | grep -v 'master$' | xargs git branch -d"


# YGT REPO ALIASES
alias notes='open ~/workspace/vagabond/workspace/frontend_notes'
alias vm="cd ~/workspace/vagabond/ && vagrant up ygt_frontend && vagrant ssh ygt_frontend -c 'cd workspace/searcher && jruby -S bundle exec rackup' -- -L5984:localhost:5984"

# YGT DEPLOYMENT
alias staging='bundle exec cap staging deploy'

