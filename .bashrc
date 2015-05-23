#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

complete -cf sudo

export PATH=$PATH:/home/awilhelm/Frameworks/play-2.2.1
alias play2='bash /home/awilhelm/Frameworks/play-2.2.1/play'

seekampfGet() {
   curl -v -X GET -H "Authorization: Basic QXZlZG86YjY3c2k5" "https://www.seekampf.de/api/api2.php?server=1&$1"
}

alias seeget=seekampfGet

leoGet() { lang=en; IFS=+; Q="${*// /%20}"; curl -s "https://dict.leo.org/${lang}de/?search=${Q//+/%20}" | html2text | grep -EA 900 '^\*{5} ' | grep -B 900 '^Weitere Aktionen$';}

alias leo=leoGet

export PYTHONPATH=$PYTHONPATH:/opt/kano-toolset
