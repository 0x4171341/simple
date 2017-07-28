# .bashrc
#Personalize your prompt
#Cyberthrone y @heberth Ardila 
#aun no esta como lo queremos pero esta  hasta ahora  sencillo, pero funciona
#Source Global Definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


##########
## GENERAL
#
##Color Output
ColReset="\[\e[0m\]"  #Reset
Black="\[\e[0;30m\]"  #Black
Red="\[\e[0;31m\]"    #Red
Green="\[\e[0;32m\]"  #Green
Yellow="\[\e[0;33m\]" #Yellow
Blue="\[\e[0;34m\]"   #Blue
Purple="\[\e[0;35m\]" #Purple
Cyan="\[\e[0;36m\]"   #Cyan
White="\[\e[0;37m\]"  #White
# Bold
BBlack="\[\e[1;30m\]"         # Black
BRed="\[\e[1;31m\]"           # Red
BGreen="\[\e[1;32m\]"         # Green
BYellow="\[\e[1;33m\]"        # Yellow
BBlue="\[\e[1;34m\]"          # Blue
BPurple="\[\e[1;35m\]"        # Purple
BCyan="\[\e[1;36m\]"          # Cyan
BWhite="\[\e[1;37m\]"         # White

##Prompt
#PS1="\u [\W] \$"        #Default
PS1="$BYellow\u $Blue[$ColReset\W$Red]$ColReset $ " #Modified

##History
HISTSIZE=9999 HISTFILESIZE=9999	#size
HISTCONTROL=ignoredups   	#no duplicate lines stored
HISTCONTROL=ignoreboth   	#ignore same sucessive entries
HISTCONTROL=ignorespace  	#ignore spaced-refix commands => do not store in history
HISTTIMEFORMAT="[%m/%d/%y %T] "   #timestamp format

##########
## ALIAS
#
alias	ls="ls -GFh --color=yes"
alias   cp="cp -i"
alias   ll="ls -GFhla --color=yes"

alias myPerlTest='perl -MDevel::Cover';
alias myProveTest='HARNESS_PERL_SWITCHES=-MDevel::Cover prove';


##########
## EXPORTS
#
export PROMPT_COMMAND='history -a'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# Set LS_COLORS environment by Deepin
if [[ ("$TERM" = *256color || "$TERM" = screen* || "$TERM" = xterm* ) && -f /etc/lscolor-256color ]]; then
    eval $(dircolors -b /etc/lscolor-256color)
else
    eval $(dircolors)
fi
