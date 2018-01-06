# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/andy/.config/yarn/global/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/andy/.config/yarn/global/node_modules/tabtab/.completions/electron-forge.zsh

export PATH="$HOME/.nodenv/shims:$PATH"
eval "$(nodenv init -)"
# export PATH="$(yarn global bin):$PATH"