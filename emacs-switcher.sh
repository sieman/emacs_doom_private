#!/usr/bin/env bash

function e {
  ARGS="--debug-init $@"
  EMACS_BIN="/usr/local/bin/emacs"
  cmd="open -a $EMACS_BIN --args $ARGS"
  eval $cmd
  unset EMACS_BIN ARGS cmd
}

function emacsdlinker {
  rm ~/.emacs.d
  EMACS_DISTRO_DIR="~/.e/others"
  cmd="ln -s $EMACS_DISTRO_DIR/$1 $HOME/.emacs.d"
  eval $cmd
  unset EMACS_DISTRO_DIR cmd
}

function emacsSwitcher {
  emacsdlinker $1
  e $2
}

function doomLinker {

  rm ~/.doom.d

  cmd="ln -s $HOME/.e/$1.doom.d $HOME/.doom.d"
  echo $cmd
  eval $cmd

  rm ~/.emacs.d

  cmd="ln -s $HOME/.e/$1.emacs.d $HOME/.emacs.d"
  echo $cmd
  eval $cmd
  unset cmd
}

# AloisJanicek https://github.com/AloisJanicek/.doom.d-2nd.git
alias edoomAloisJanicek="doomLinker others/AloisJanicek.doom"

alias edoom="doomLinker sieman"

# undeadkernel https://github.com/UndeadKernel/emacs_doom_private.git
alias edoomUndeadkernel="others/undeadkernel"

# hlissner https://github.com/hlissner/doom-emacs
alias edoomHlissner="doomLinker others/hlissner"

# WhatDothLife https://github.com/WhatDothLife/doom-config.git
alias edoomWhatDothLife="doomLinker others/WhatDothLife"

alias edoomGtrunsec="doomLinker others/gtrunsec.doom"

# local test settup
alias edoomMeow="doomLinker others/meow"

# tecosaur https://github.com/tecosaur/emacs-config.git
alias edoomTecosaur="doomLinker others/tecosaur.doom"

# local test settup
alias eelegant="emacsSwitcher elegant.vanilla"

# prelude.distro https://github.com/bbatsov/prelude.git
alias ep="emacsSwitcher prelude.distro"

# magnars.vanilla https://github.com/magnars/.emacs.d.git
alias em="emacsSwitcher magnars.vanilla"

# sachachua https://github.com/sachac/.emacs.d.git
alias esacha="emacsSwitcher sachachua.vanilla"

# https://github.com/jkitchin/scimax.git
alias scimax="emacsSwitcher scimax.distro"

# centaur.distro https://github.com/seagle0128/.emacs.d.git
alias ec="emacsSwitcher centaur.distro"

# makuto.vanilla https://github.com/makuto/editorPreferences.git
alias emakuto="emacsSwitcher makuto.vanilla/Emacs"

# delete
alias ehs="emacsSwitcher harry-schwartz.vanilla"

# flyingmachine https://github.com/flyingmachine/emacs-for-clojure.git
alias efly="emacsSwitcher flyingmachine.vanilla"

# countvajhula.vanilla https://github.com/countvajhula/.emacs.d.git
alias eCountvajhula="emacsSwitcher countvajhula.vanilla"

# nasymoa https://github.com/nasyxx/emacs.d.git
alias eNasymoa='emacsSwitcher nasymoa.vanilla'

alias doup='doom upgrade'
export PATH="$PATH:$HOME/.emacs.d/bin"
