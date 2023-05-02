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
.s dircolors
.s completion
.s cd
.s mpd
.s hist
.s mvdesc
.s saferm
.s cygwin
.s antlr
.s python
.s x11
.s shopt
.s perl
.s stuff
.s my.stuff
.s aliases
.s dot_commands
.s clip
.s cargo
. my_prompt
complete -c viw catw batw lessw

PATH="$(tidypath "$PATH")"

.if "$HOME/.bash_aliases"
