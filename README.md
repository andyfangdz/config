# Dotfiles for mac

## Get Started

```bash
git clone git@github.com:andyfangdz/config.git dotfiles
~/dotfiles/setup.sh
echo "source ${HOME}/dotfiles/index.sh" > .zshrc
```


## Setup GPG
https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65
```
git config --global user.signingkey ED5CDE14
git config --global commit.gpgsign true
```
https://stackoverflow.com/a/30467819/4944625
