#managing in /home/yasu17/dotfiles/

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
    PS1='\u@mobile:\w$ '
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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

#PATH_2_~/shell
export PATH="$PATH":/home/yasu17/shells

#shells

alias srcd=". srcd.sh"

#coloring
eval `dircolors ~/dotfiles/mycolors`
alias ls='ls -F --color=auto'

#untypo

alias ks='ls'

alias sl='ls'

alias xs='cd $1'


#motion

cd(){
   builtin cd "$@" && ls -avF --color=auto
}

alias ws='cd ~/workspace'
alias workspace='ws'
alias sound="cd /usr/share/sounds/ubuntu/stereo"

alias web='cd ~/workspace/web' 
alias js='cd ~/workspace/web/js' 
alias html='cd ~/workspace/web/html'

alias robots='cd ~/workspace/robots' 
alias src='cd catkin_ws/src' 
alias dc='cd ~/Documents/' 
alias dw='cd ~/Downloads/' 
alias practice='cd ~/workspace/practice/' 
alias sandbox='cd ~/sandbox' 
alias dotfiles='cd ~/dotfiles' 
alias shells="cd ~/shells"
alias cirkit5="cd ~/workspace/robots/cirkit5"
alias drive="cd /media/yasu17/DATA"
alias data="cd /media/yasu17/DATA"
#specify image as your xxxing loving ha-ha
#$alias notify="echo -e シェルメッセージ:できたよ\\nステータス1 && paplay /usr/share/sounds/ubuntu/stereo/desktop-login.ogg && eog ~/dotfiles/images/notify_default "
#$alias notify_failue="echo -e "シェルメッセージ:ダメでした\n" && paplay /usr/share/sounds/ubuntu/stereo/dialog-question.ogg && eog ~/dotfiles/images/notify_failue && p"

#settingFiles
alias bashrc='vi ~/dotfiles/.bashrc' 
alias sb='source ~/.bashrc' 
alias vimrc='vi ~/dotfiles/.vimrc' 

# rbenv setting
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

#ROS
source /opt/ros/kinetic/setup.bash
source /home/yasu17/workspace/robots/fifth_robot_pkg/devel/setup.bash

PATH="$PATH"://home/yasu17/workspace/processing-3.2.3

alias rc="roscore"

#Network
kitssh(){
    ssh -l $1 $2 remote-t.isc.kyutech.ac.jp
}
alias kitscp='echo -e "[USAGE:]\n>kitscp_dl remote_target local_destination\n>kitscp_up local_target remote_destination" '

kitscp_dl(){
    scp kit:/home/t/p111026h/$1 $2
}
kitscp_up(){
    scp $1 kit:/home/t/p111026h/$2
}

#notify_sucess(){
#   if [ $?=0 ]; then notify
#      else notify_failue
#   fi
#}

#Git

alias g='git'
alias gl="git log"
alias stat="git status"
alias st="git status"
#gedit (){
#   gedit $1 
#}

alias bye="exit"

alias elog="vi /var/log/syslog"
