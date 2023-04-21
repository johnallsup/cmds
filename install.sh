#!/bin/bash
/bin/rm -f /usr/jda/bin/*
for s in /usr/jda/cmds/*; do
  [[ "$s" =~ ^install|stuff|etc|sbin ]] && continue
  for t in "$s"/*; do
    [ -x "$t" ] && ln -s "$t" /usr/jda/bin
  done
done
