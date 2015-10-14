#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

complete -cf sudo

leoGet() { lang=en; IFS=+; Q="${*// /%20}"; curl -s "https://dict.leo.org/${lang}de/?search=${Q//+/%20}" | html2text | grep -EA 900 '^\*{5} ' | grep -B 900 '^Weitere Aktionen$';}
alias leo=leoGet

alias rst='echo -e "\0033\0143"'

export PATH=$PATH:$HOME/bin:$HOME/.gem/ruby/2.2.0/bin
