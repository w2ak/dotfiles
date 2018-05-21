#!/usr/bin/env bash

if [ -z "${DISPLAY:+x}" ]; then
  exit 0;
fi

script_dir=$( cd "$( dirname "$0" )" && pwd)

if [[ `uname` == 'Darwin' ]]; then
  # MacOS
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.local/share/fonts"
fi

if [ ! -f "$font_dir/.powerline.ok" ]; then
  source "$script_dir/powerline/install.sh" &&
  touch "$font_dir/.powerline.ok"
fi
