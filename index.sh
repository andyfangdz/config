#!/bin/bash

script_dir=$(dirname $0)

fpath+=${script_dir}/completions

source ${script_dir}/utils.sh
source ${script_dir}/vendor/antigen.zsh
export SPACESHIP_PROMPT_ADD_NEWLINE=false
antigen init ${script_dir}/.antigenrc

source ${script_dir}/aliases.sh
source ${script_dir}/envs.sh
source ${script_dir}/functions.sh
source ${script_dir}/paths.sh

source ${script_dir}/node.sh
source ${script_dir}/python.sh
source ${script_dir}/ruby.sh
source ${script_dir}/golang.sh

# source ${script_dir}/gpg.sh
source ${script_dir}/man-utils.sh

# iTerm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_COMMAND} ${PROMPT_TITLE}; "
source ${script_dir}/vendor/fzf.zsh

source ${script_dir}/java.sh
