#!/usr/bin/env bash

function e {
  ARGS="$*"
  # see https://support.apple.com/en-us/HT210595
  # EMACS_BIN="/usr/local/Cellar/emacs-plus@27/27.2/Emacs.app"
  # EMACS_BIN="/usr/local/Cellar/emacs-plus@27/27.2/bin/emacs"
  EMACS_BIN="/usr/local/bin/emacs"
  # EMACS_BIN="/Users/sim/Applications/Emacs.app"
  # EMACS_BIN="/Users/sim/Applications/Emacs.app"
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
# git clone --depth 1 https://github.com/syl20bnr/spacemacs ~/.e/others/spacemacs.emacs.d
alias espacemacs="eDoubleLinker spacemacs.d others/spacemacs"

# AloisJanicek https://github.com/AloisJanicek/.doom.d-2nd.git
# alias edoomAloisJanicek="eDoubleLinker doom.d others/AloisJanicek"

alias edoom="eDoubleLinker doom.d sieman"
alias edoomBoon="eDoubleLinker doom.d others/boon"
alias edoomMeow="eDoubleLinker doom.d others/meow"

# undeadkernel https://github.com/UndeadKernel/emacs_doom_private.git
# alias edoomUndeadkernel="eDoubleLinker doom.d others/undeadkernel"

# hlissner https://github.com/hlissner/doom-emacs-private
alias edoomHlissner="eDoubleLinker doom.d others/hlissner"

# WhatDothLife https://github.com/WhatDothLife/doom-config.git
# alias edoomWhatDothLife="eDoubleLinker doom.d others/WhatDothLife"

alias edoomGtrunsec="eDoubleLinker doom.d others/gtrunsec"

# local test settup
alias edoomMeow="eDoubleLinker doom.d others/meow"

# tecosaur https://github.com/tecosaur/emacs-config.git
# alias edoomTecosaur="eDoubleLinker doom.d others/tecosaur"

# local test settup
# alias eelegant="eSwitcher elegant.vanilla"

# prelude.distro https://github.com/bbatsov/prelude.git
alias ep="eSwitcher prelude.distro"

# magnars.vanilla https://github.com/magnars/.emacs.d.git
alias em="eSwitcher magnars.vanilla"

# sachachua https://github.com/sachac/.emacs.d.git
# alias esacha="eSwitcher sachachua.vanilla"

# https://github.com/jkitchin/scimax.git
alias scimax="eSwitcher scimax.distro"

# centaur.distro https://github.com/seagle0128/.emacs.d.git
# alias ec="eSwitcher centaur.distro"

# makuto.vanilla https://github.com/makuto/editorPreferences.git
# alias emakuto="eSwitcher makuto.vanilla/Emacs"

# flyingmachine https://github.com/flyingmachine/emacs-for-clojure.git
alias efly="eSwitcher flyingmachine.vanilla"

# countvajhula.vanilla https://github.com/countvajhula/.emacs.d.git
# alias eCountvajhula="eSwitcher countvajhula.vanilla"

# nasymoa https://github.com/nasyxx/emacs.d.git
# alias eNasymoa='eSwitcher nasymoa.vanilla'

# git clone https://gist.github.com/adam-james-v/7a61612ce0649afc78513f54b337d8c9  adam-james.vanilla
# alias eAdamJames='eSwitcher adam-james.vanilla'

# alias eSandbox='eSwitcher sandbox'

alias doup='edoom && cd ~/.e/sieman.doom.d && git fetch && git pull && doom upgrade && doom sync && cd - && e --debug-init && doom doctor'
alias dose='doom sync && e --debug-init'
export PATH="$PATH:$HOME/.emacs.d/bin"
