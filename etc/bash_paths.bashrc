# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

PATH="$(tidypath -c "$HOME/bin:/usr/local/cygbin:/usr/jda/bin2:/usr/jda/bin:/usr/npm/bin:$PATH:/usr/jda/stuff:/usr/jda/apps:$HOME/perl5/bin")"
. pathif.stuff
export PYTHONPATH="$(tidypath -c "$HOME/.python:$PYTHONPATH")"
export VISUAL=vim EDITOR=vim
