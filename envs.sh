export EDITOR="code -w"
export COLORS=1
ulimit -n 8192
export BYOBU_PREFIX=/usr/local

# Circumvent https://github.com/direnv/direnv/issues/210
#
shell_session_update() { :; }
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
