alias ipy='jupyter qtconsole --ConsoleWidget.font_family="Consolas" --ConsoleWidget.font_size=13'
activate_conda() { export PATH=~/anaconda/bin:$PATH }
activate_conda2() { export PATH=~/anaconda2/bin:$PATH }
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

