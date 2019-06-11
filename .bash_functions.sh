#ls directory once inside it
function cd {
    builtin cd "$@" && ls
}

#cds into projects folder with all YGT repos
function p {
 builtin cd ~/Documents/workspace && ls
}

#shorthand for git add all and commit
gac() {
  git add .
  git commit -m "$*"
}

# change local github email in project
gitchange(){
  git config --local user.email "$*"
}

# pass argument to pipe grep to find aliases quicker
ali(){
  alias | grep "$*"
}

f(){
  type "$*"
}

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

port(){
  lsof -i TCP:$1
}

removeswp(){
  find . -name "*.swp" | xargs rm -f
}


