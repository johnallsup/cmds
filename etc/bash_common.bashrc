# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

.if() { for s; do [ -f "$s" ] && { . "$s"; }; done; }
.stuff() { 
  if [ $# = 0 ]; then
    ( cd /usr/jda/stuff; ls *.stuff | cut -f1 -d.; )
  else
    for s; do 
      [ -e /usr/jda/stuff/"$s".stuff ] && . /usr/jda/stuff/"$s".stuff; 
    done; 
  fi
}
alias .s=.stuff
. dircolors.stuff
. completion.stuff
. cd.stuff
. mpd.stuff
. hist.stuff
. mvdesc.stuff
. saferm.stuff
. cygwin.stuff
. antlr.stuff
. python.stuff
. x11.stuff
. shopt.stuff
. perl.stuff
complete -c viw catw batw lessw
. my_prompt
. my.stuff
. aliases.stuff

.if . "$HOME/.cargo/env"
PATH="$(tidypath "$PATH")"


