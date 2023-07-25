#!/usr/bin/env bash

function e {
  ARGS="$*"
  # see https://support.apple.com/en-us/HT210595
  # EMACS_BIN="/usr/local/Cellar/emacs-plus@27/27.2/Emacs.app"
  # EMACS_BIN="/usr/local/Cellar/emacs-plus@27/27.2/bin/emacs"
  EMACS_BIN="/usr/local/bin/emacs"
  # EMACS_BIN="$HOME/prof/Applications/Emacs.app"
  # EMACS_BIN="$HOME/prof/Applications/Emacs.app"
  cmd="open -a $EMACS_BIN --args $ARGS"
  echo $cmd
  eval $cmd
  unset EMACS_BIN ARGS cmd
}

function eRmLnS {
  rm "$HOME/.emacs.d"
  rm "$HOME/.doom.d"
  rm "$HOME/.spacemacs.d"
}

function eSwitcher {
  eRmLnS
  eLinker "others/$1" "emacs.d"
  e $2
}

function eLinker {
  cmd="ln -s $HOME/.e/$1.$2 $HOME/.$2"
  echo "$cmd"
  eval "$cmd"
  unset cmd
}

function eDoubleLinker {
  eRmLnS
  eLinker $2 "$1"
  eLinker $2 "emacs.d"
}

function chemacs {
  # change emacs, emacs profile switcher https://github.com/plexus/chemacs2
  eRmLnS
  eLinker others/change-emacs-profile emacs.d
}
alias edoom="eDoubleLinker doom.d sieman"
# hlissner https://github.com/hlissner/doom-emacs-private
alias edoomHlissner="eDoubleLinker doom.d others/hlissner"
# magnars.vanilla https://github.com/magnars/.emacs.d.git
alias em="eSwitcher magnars.vanilla"
alias ee="eSwitcher elegant.vanilla"
alias doup='edoom && cd ~/.e/sieman.doom.d && git fetch && git pull && doom upgrade && doom sync && cd - && e --debug-init && doom doctor'
alias dose='doom sync && e --debug-init'
export PATH="$PATH:$HOME/.emacs.d/bin"
