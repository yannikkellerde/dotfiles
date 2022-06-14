#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ 1 -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/opt/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

function detach(){
	nohup "$1" >/dev/null 2>&1 &
}

export PATH=$PATH:/home/kappablanca/.local/bin

export PS1="\[\e[31m\]\u\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[1;32m\]\$\[\e[m\] "
