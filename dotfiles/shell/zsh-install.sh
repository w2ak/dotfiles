#!/usr/bin/env bash
if which zsh &>/dev/null; then
  echo "ZSH is already installed";
  exit 0
fi

brew_install () {
  brew install $@
}

apt_install () {
  sudo apt-get -y install $@
}

if [[ `uname` == "Darwin" ]]; then
  brew_install zsh;
else
  apt_install zsh;
fi
