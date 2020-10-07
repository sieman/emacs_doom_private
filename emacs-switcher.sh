#!/usr/bin/env bash
EMACSZ_HOME="~/.e/others"

function emacsdlinker {
  rm ~/.emacs.d
  cmd="ln -s $EMACSZ_HOME/$1 ~/.emacs.d"
  eval $cmd
}

function emacsSwitcher {
  emacsdlinker $1
  emacsLaunch $2
}

function emacsLaunch {
  ARGS="--debug-init"
  ARGS="$ARGS --font \"JetBrains Mono 12\""
  if [[ $1 == "e" ]]
	then
    cmd="open -a $APP_EMACS --args $ARGS"
  else
    cmd="open -a $APP_EMACS_VINCENT --args $ARGS"
  fi

  eval $cmd
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


alias e="open -a $APP_EMACS"
alias eo="emacsSwitcher sim.d"
alias ep="emacsSwitcher prelude"
alias em="emacsSwitcher magnars e"
alias esacha="emacsSwitcher sachachua e"
alias scimax="emacsSwitcher scimax e"
alias eianpan="emacsSwitcher ianpan"
alias eianpan2="emacsSwitcher ianpan2"
alias ec="emacsSwitcher centaur e"
alias emakuto="emacsSwitcher makuto/Emacs"
alias ehs="emacsSwitcher harry-schwartz e"
alias efly="emacsSwitcher flyingmachine"

export PATH="$PATH:$HOME/.e/doom/bin"
