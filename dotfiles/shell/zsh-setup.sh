#!/usr/bin/env bash
if ! which zsh &>/dev/null; then
  echo "ZSH is not installed";
  exit 1;
fi

ZSH_BIN=$(which zsh)
USR_SHELL=$(getent passwd "$(id -nu)" | cut -d: -f7)

if [[ "$ZSH_BIN" == "$USR_SHELL" ]]; then
  echo "ZSH is already the user shell";
  exit 0;
fi

echo "Changing user shell from '$USR_SHELL' to '$ZSH_BIN'."
chsh -s $ZSH_BIN $(id -un)
