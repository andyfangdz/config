export EDITOR="code -w"
ulimit -n 8192
# Circumvent https://github.com/direnv/direnv/issues/210
#
shell_session_update() { :; }
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
