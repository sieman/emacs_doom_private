#!/usr/bin/env bash

function e {
  ARGS="--debug-init $@"
  EMACS_BIN="/usr/local/Cellar/emacs-plus@27/27.1/Emacs.app"
  cmd="open -a $EMACS_BIN --args $ARGS"
  eval $cmd
  unset EMACS_BIN ARGS cmd
}

function emacsdlinker {
  rm ~/.emacs.d
  EMACS_DISTRO_DIR="~/.e/others"
  cmd="ln -s $EMACS_DISTRO_DIR/$1 ~/.emacs.d"
  eval $cmd
  unset EMACS_DISTRO_DIR cmd
}

function emacsSwitcher {
  emacsdlinker $1
  e $2
}


function edoom {
  rm ~/.doom.d
  ln -s ~/.e/sieman ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/sieman.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/sieman.doom ~/.e/doom
}
function edoomUndeadkernel {
  rm ~/.doom.d
  ln -s ~/.e/others/undeadkernel ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/undeadkernel.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/undeadkernel.doom ~/.e/doom
}

function edoomHlissner {
  rm ~/.doom.d
  ln -s ~/.e/others/hlissner ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/hlissner.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/hlissner.doom ~/.e/doom
}

function edoomStandard {
  rm ~/.doom.d
  ln -s ~/.e/others/standard ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/standard.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/standard.doom ~/.e/doom
}

function edoomWhatDothLife {
  rm ~/.doom.d
  ln -s ~/.e/others/WhatDothLife ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/WhatDothLife.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/WhatDothLife.doom ~/.e/doom
}

function edoomAloisJanicek {
  rm ~/.doom.d
  ln -s ~/.e/others/AloisJanicek ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/AloisJanicek.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/AloisJanicek.doom ~/.e/doom
}
function edoomGtrunsec {
  rm ~/.doom.d
  ln -s ~/.e/others/gtrunsec ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/gtrunsec.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/gtrunsec.doom ~/.e/doom
}

function edoomMeow {
  rm ~/.doom.d
  ln -s ~/.e/others/meow ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/meow.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/meow.doom ~/.e/doom
}

function edoomTecosaur {
  # git clone --depth 1 https://github.com/tecosaur/emacs-config.git tecosaur
  # git clone --depth 1 https://github.com/hlissner/doom-emacs tecosaur.doom
  rm ~/.doom.d
  ln -s ~/.e/others/tecosaur ~/.doom.d
  rm ~/.emacs.d
  ln -s ~/.e/others/tecosaur.doom ~/.emacs.d
  rm ~/.e/doom
  ln -s ~/.e/others/tecosaur.doom ~/.e/doom
}
alias eelegant="emacsSwitcher elegant"
alias eo="emacsSwitcher sim.d"
alias ep="emacsSwitcher prelude"
alias em="emacsSwitcher magnars e"
alias esacha="emacsSwitcher sachachua e"
alias scimax="emacsSwitcher scimax e"
alias eianpan="emacsSwitcher ianpan"
alias eianpan2="emacsSwitcher ianpan2"
alias ec="emacsSwitcher centaur e"
alias emakuto="emacsSwitcher makuto/Emacs"
alias ehs="emacsSwitc her harry-schwartz e"
alias efly="emacsSwitcher flyingmachine"

export PATH="$PATH:$HOME/.e/doom/bin"
