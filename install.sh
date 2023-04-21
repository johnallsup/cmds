#!/bin/bash
ME="$(readlink -f "$0")"
HERE="$(dirname "$ME")"
TARGET="$(dirname "$HERE")"
alias rm=/bin/rm
rm -rf $TARGET/{bin,etc,stuff}
mkdir -p /usr/jda/bin
for s in $HERE/*/; do
  [[ "$s" =~ ^install|stuff|etc|sbin ]] && continue
  for t in "$s"/*; do
    [ -x "$t" ] && ln -s "$t" "$TARGET"/bin
  done
done
ln -vs "$HERE"/etc "$TARGET"
ln -vs "$HERE"/stuff "$TARGET"
