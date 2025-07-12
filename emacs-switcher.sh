#!/usr/bin/env bash

function e {
  ARGS="$*"
  # see https://support.apple.com/en-us/HT210595
  EMACS_BIN="Emacs"
  cmd="open -a $EMACS_BIN --args $ARGS"
  echo $cmd
  eval $cmd
  unset EMACS_BIN ARGS cmd
}

# function eRmLnS {
  # rm "$HOME/.emacs.d"
  # rm "$HOME/.doom.d"
  # rm "$HOME/.spacemacs.d"
# }

# function eSwitcher {
  # eRmLnS
  # eLinker "others/$1" "emacs.d"
  # e $2
# }

# function eLinker {
  # cmd="ln -s $HOME/.e/$1.$2 $HOME/.$2"
  # echo "$cmd"
  # eval "$cmd"
  # unset cmd
# }

# function eDoubleLinker {
  # eRmLnS
  # eLinker $2 "$1"
  # eLinker $2 "emacs.d"
# }


alias doom="nohup emacs --profile default &"
alias efu="nohup emacs --profile fu &"
alias erigpa="nohup emacs --profile rigpa &"
# alias dose='doom sync && e --debug-init'
