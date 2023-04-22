# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

. /usr/jda/stuff/pathif.stuff
for s in /usr/jda/stuff /usr/npm/bin /usr/jda/cmds/sbin /usr/jda/bin "$HOME/.local/bin" "$HOME"/bin; do
  if [[ "$s" =~ etc/$ ]]; then continue; fi
  pathif -p "$s"
done
for s in "$HOME/perl5/bin"; do
  pathif -a "$s"
done
PATH="$(tidypath -c -p)"
export PYTHONPATH="$(tidypath -c "$HOME/.python:$PYTHONPATH")"
export VISUAL=vi EDITOR=vi
