export EDITOR=/usr/bin/vim
alias vi="vim"

# Configure bash history.
HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILESIZE=200000A

# Enable zsh autosuggestions.
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# System search path.
# PATH=/opt/avr-toolchain/bin:$PATH

# Initialize the cargo build environment.
. "$HOME/.cargo/env"

# Initialize the starship prompt.
eval "$(starship init zsh)"
