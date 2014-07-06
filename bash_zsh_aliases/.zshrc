# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhistfile
HISTSIZE=40000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/shefuto/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#VWH use same aliases as bash
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#VWH
#export PS1="%T]%n:%~$ "
#export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
export PS1="%{%F{yellow}%}%T]%{%F{green}%}%n%{%F{yellow}%} %~ %{$%f%} "
#PS1="%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m %{%F{yellow}%}%~ %{$%f%}%% "

#Virtualenv(+wrapper) housekeeping
export WORKON_HOME=~/ve
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
#Activate default crappy environment
workon tmp2

#Git housekeeping (enable PS1 or any Prompt string to use __git_ps1 to show branch)
if [[ -e /etc/bash_completion.d/git-prompt ]]; then
	. /etc/bash_completion.d/git-prompt
fi
#enable prompt substitution - otherwise it executes RPROMPT only once, at `source .zshrc` time
setopt PROMPT_SUBST ;
export RPROMPT='%{%F{red}%}$(__git_ps1 2>/dev/null)'

#fix deleting backwards after reentering edit mode
bindkey "^?" backward-delete-char
