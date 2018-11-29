for file in ~/.{bash_prompt,bash_aliases,bash_functions.sh}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source ~/git-completion.bash
export PATH="$HOME/.rbenv/bin:$PATH"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

eval "$(rbenv init -)"
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
export HISTCONTROL=ignoredups
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

bind '"\C-b":backward-word' #map Ctrl-b to back one word
bind '"\C-f":forward-word' # map Ctrl-w to forward one word

