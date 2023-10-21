######################################
#Bashrc file ideas/examples          #
#by u0_a390/pranav10780              #
######################################
clear
#ascii art section(u can add ur own one"
echo  "Termux(from f-driod hopefully^=^)"
echo  "Version 4.0.5, Alpha E"
echo  "Ready..."
echo  "> access security"
echo  "access: PERMISSION DENIED."
echo  "> access security grid"
echo  "access: PERMISSION DENIED."
echo  "> access main security grid"
echo  "access: PERMISSION DENIED....and..."
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
echo  "YOU DIDN'T SAY THE MAGIC WORD!"
#btw this is a refernce to metasploit!
#just for fun   ^_^
author="u0_a390"
#also if anything doesn't work while modifiying/using this always remember god and google is woth u alwayas ^_^


# `grep default` highlight color
export GREP_COLOR="1;32"


#colored man
export MANPAGER="less -R --use-color -Dd+g -Du+b"

#append to history
shopt -s histappend

#loads history substitution
shopt -s histverify

#dosent duplicate lines and lines starting with space
HISTCONTROL=ignoreboth

#cycle through all matches with 'TAB' key
bind 'TAB:menu-complete'

# required program completion
shopt -s extglob

# cd when entering just a path
shopt -s autocd

#change the HISTSIZE and HISTFILESIZE
HISTSIZE=1000
HISTFILESIZE=2000

#the credit for this part of the code is by knightfal>
#################################№######
#color for ls and other stuff
if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip -color'
fi

#package suggestions
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi


#nnn "cd on quit"
n()
{
#Block nesting of nnn in subshells
if [ -n $NNNVL ] && [ "${NNNVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
fi
#The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
# If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
# see. To cd on quit only on ^G, remove the "export" and make sure not to
# use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
#   NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

# Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
# stty start undef
# stty stop undef
# stty lwrap undef
# stty lnext undef

 nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

#prompt
sym="㉿" #symbol of prompt
bar_cr="34" #color of bars
name_cr="37" #color of user & host
end_cr="37" #color of prompt end
dir_cr="36" #color of current directory

PS1='\[\033[0;${bar_cr}m\]┌──(\[\033[1;${name_cr}m\]${user_name}${sym}\h\[\033[0;${bar_cr}m\])-[\[\033[0;${dir_cr}m\]\w\[\033[0;${bar_cr}m\]]
\[\033[0;${bar_cr}m\]└─\[\033[1;${end_cr}m\]\$\[\033[0m\] '

#################################№######

#if ur wondering did u just copy and paster kinghtfall-cs,no well yes but all the aliases are mine(most of them) ^_^
#actual aliases

alias down="apt install $1 -y"
alias delt="apt remove $1 -y"
alias ports="nmap localhost"
alias dns="sudo systemd-resolve --status | grep 'DNS Servers'"
alias clr="clear"
alias h="history"
alias hs="history | grep $1"
alias reload="apt update && apt upgrade -y;clr"
alias ll="ls -al"
alias lf='ls -alF'
alias la='ls -A'
alias ls='ls -CF'
alias lt='ls --human-readable --size -1 -S --classify'
#    **Sort resources by _file_ size.**
alias lu='du -sh * | sort -h'
#    **Same as former but counting size from folders too.**   
alias lt='ls -t -1 -long'
#    **Gets an ordered list of files and folders by changes in time.**   
alias lc='find . -type f | wc -l'
#    **Gets a total recursirve count of existing files, no folders.**   
alias ld='ls -d */'
#    **Gets a list of existing directories from current folder.**   
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias untar='tar -zxvf $1'
#    **Open a tar.gz formated folder.**
alias tar='tar -czvf $1'
#    **Compressing a folder in tar.gz format.**
alias la='ls -alFh --group-directories-first'
alias l1='ls -1F --group-directories-first'
alias l1m='ls -1F --group-directories-first | more'
alias lh='ls -ld .??*'
alias lsn='ls | cat -n'
alias mkdir='mkdir -p -v'
alias cp='cp --preserve=all'
alias cpv='cp --preserve=all -v'
alias cpr='cp --preserve=all -R'
alias quit="exit"
alias q="quit"
alias count='find . -type f | wc -l'
alias df='df -Tha --total'
alias free='free -mt'
alias psa='ps auxf'
alias cputemp='sensors | grep Core'
alias myip='curl -s -m 5 https://ipleak.net/json/'

