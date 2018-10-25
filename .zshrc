# 
#
# ~/.zshrc 
#
#
#

# common settings
source ~/.profile
source ~/.alias
source ~/.colors


#export PS1=$'\n\uf100 %~ %T\uf101\n\uf300 \ue224\ue216\ue216 '
export PS1=$'~ %d %T\n$ '

function precmd {
    print -Pn "\033]0; %~\a"
}

autoload -Uz compinit promptinit
compinit
promptinit

setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.

bindkey -e

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

zmodload -i zsh/mathfunc


#source ~/.startup

export RISCV=/opt/riscv
export PATH="/home/liviu/dev/uarch/topamax/modafinil/cores/wb_intercon/sw:$PATH"
#export VIMRUNTIME="/usr/share/vim/vim81"
export THOR_SHELL=Basic 



function soc {
    cd $SOC
}

function linux {
    cd $LINUX
}

function papers {
    cd $PAPERS
}


function music {
    cd ~/.windows/TMD/music
}



#. /home/liviu/torch/install/bin/torch-activate

PATH="/home/liviu/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/liviu/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/liviu/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/liviu/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/liviu/perl5"; export PERL_MM_OPT;
