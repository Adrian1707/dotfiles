source ~/git-completion.bash
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# The next line updates PATH for the Google Cloud SDK.
source '/Users/adrianbooth/google-cloud-sdk/path.bash.inc'

# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc
# The next line enables shell command completion for gcloud.
source '/Users/adrianbooth/google-cloud-sdk/completion.bash.inc'

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

alias be='bundle exec'
alias cl='clear'
alias rs='bundle exec rails s'
alias wp='cd ~/workspace/vagabond/workspace/projects/frontend/webpack;npm run start'
alias rc='bundle exec rails c'
alias ls='ls -Gp'
alias bsh='vim ~/dotfiles/.bash_profile'
alias vimrc='vim ~/dotfiles/.vimrc'

#Sets up specific dev environemnt for YGT in Tmux session
alias dev='tmux source-file ~/dotfiles/tmux_conf'

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
alias salesdb='echo Port forwarding to localhost:5985;ssh www-data@sales01.palatinate.local -L5985:127.0.0.1:5984'
alias ygtdb='echo "Port forwarding couchdb02 to 5984:3999"; ssh www-data@admin-actual.yourgolftravel.com -L3999:couchdb02:5984'
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
__git_complete gco _git_checkout

# YGT REPO ALIASES
alias notes='open ~/workspace/vagabond/workspace/frontend_notes'
alias vm="cd ~/workspace/vagabond/ && vagrant up ygt_frontend && vagrant ssh ygt_frontend -c 'cd workspace/searcher && jruby -S bundle exec rackup' -- -L5984:localhost:5984"


#ls directory once inside it
function cd {
    builtin cd "$@" && ls
}

#cds into projects folder with all YGT repos
function p {
 builtin cd ~/workspace/vagabond/workspace/projects/$1 && ls
}

#shorthand for git add all and commit
gac() {
  git add .
  git commit -m "$*"
}

#Pull down from master all active git repositories in YGT
pull() {
ssh-add ~/.ssh/ygt_id_rsa
for dir in ~/workspace/vagabond/workspace/projects/*
do
  cd $dir
  git checkout master
  git pull
  echo Pulled From $dir
done
}

# pass argument to pipe grep to find aliases quicker
ali(){
  alias | grep "$*"
}

# Git branch in prompt.
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


export PATH="$PATH:/Users/adrianbooth/Desktop/"

