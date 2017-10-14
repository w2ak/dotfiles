#!/usr/bin/env bash
SSHD="$HOME/.ssh"
mkdir -p "$SSHD"

if [ ! -f "$SSHD/id_ecdsa" ]; then
  comment="$(id -nu)@$(hostname)"
  ssh-keygen -q -t ecdsa -b 521 -N "" -C "$comment" -f "$SSHD/id_ecdsa"
fi

if [ ! -f "$SSHD/config" ]; then
  cat << EOF > "$SSHD/config"
Host *
  IdentityFile $SSHD/id_ecdsa
EOF
fi
