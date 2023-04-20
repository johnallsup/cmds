#!/bin/bash

ME="$(readlink -f "$0")"
HERE="$(dirname "$ME")"
TARGET="$(dirname "$HERE")"
echo "$HERE $ME $TARGET"
cd "$TARGET"
alias rm=/bin/rm
rm -rf $TARGET/{bin,etc,stuff}
mkdir -p /usr/jda/bin
for s in $HERE/*/; do
  if [[ "$s" =~ etc|stuff|install ]]; then
    echo "Skipping $s"
    continue
  fi
 ln -sv "$s"* "$TARGET"/bin
done
ln -vs "$HERE"/etc "$TARGET"
ln -vs "$HERE"/stuff "$TARGET"
