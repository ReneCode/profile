
# path to homebrew
export PATH=$PATH:/opt/homebrew/bin


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

autoload -U colors && colors
# %S .... %s  with background color
PROMPT='%n@%S%{$fg[yellow]%}${PWD/#$HOME/~}%s%{$fg[cyan]%}%S ${vcs_info_msg_0_} %s %{$reset_color%}>'


# https://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
export CLICOLOR=1
export LSCOLORS=adFxBxDxFxegedabagacad
