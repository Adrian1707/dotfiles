for file in ~/.{git-completion.bash,bash_aliases,bash_functions.sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# export PATH="$PATH:/Users/adrianbooth/Desktop/"

export GOPATH="/Users/adrianbooth/go/"
# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java"

# export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java"

export PATH="$JAVA_HOME/bin:$PATH"

bind '"\C-b":backward-word' #map Ctrl-b to back one word
bind '"\C-f":forward-word' # map Ctrl-w to forward one word
