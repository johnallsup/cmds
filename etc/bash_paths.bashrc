# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#PATH="$(tidypath -c "$HOME/bin" /usr/local/cygbin /usr/jda/bin2 /usr/jda/bin /usr/npm/bin -p /usr/jda/stuff /usr/jda/apps "$HOME/perl5/bin")"
. /usr/jda/stuff/pathif.stuff
for s in /usr/jda/apps /usr/jda/stuff /usr/npm/bin /usr/jda/cmds/*/ "$HOME"/bin; do
  if [[ "$s" =~ etc/$ ]]; then continue; fi
  pathif -p "$s"
done
for s in "$HOME/perl5/bin"; do
  pathif -a "$s"
done
PATH="$(tidypath -c -p)"
export PYTHONPATH="$(tidypath -c "$HOME/.python:$PYTHONPATH")"
export VISUAL=vim EDITOR=vim
