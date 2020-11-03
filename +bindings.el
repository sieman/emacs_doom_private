
;;; private/sim/+bindings.el -*- lexical-binding: t; -*-

* Tastenkürzel Control Meta

** Editing
*** TODO Auto Complete
#+BEGIN_SRC emacs-lisp
;; (global-unset-key (kbd "M-SPC")) ; now used as set-mark-command
#+end_src
*** Move Text
#+begin_src emacs-lisp
(nk/check-package 'move-text (lambda () (general-define-key
                                         "M-S-<up>"  'move-text-up
                                         "M-S-<down>"  'move-text-down)))
#+end_src
*** Comment line and region
- =C-S-c = Comment or uncomment current line.
- =C-A-c = Comment or uncomment each line in the region.
  #+begin_src emacs-lisp
(global-unset-key (kbd "C-x C-;"))

(general-define-key
 "C-S-c" 'comment-line
 "C-A-c" 'comment-or-uncomment-region)
  #+end_src
*** Spell Checking
#+begin_src emacs-lisp
(nk/check-package 'flyspell-correct
                  (lambda () (general-define-key "C-M-," 'flyspell-correct-wrapper)))
#+end_src
** General
*** Run A Command By Name
- =M-x     =
- =C-xm    =
- =C-x C-m =
  #+begin_src emacs-lisp
;; Smart M-x
;; (nk/check-package 'smex (lambda ()  (general-define-key "M-x" 'smex
;;                                                        "\C-xm" 'smex
;;                                                        "M-X" 'smex-major-mode-commands
;;                                                        "\C-x\C-m" 'smex-major-mode-commands
;;                                                        "C-c C-c M-x" 'execute-extended-command)))
(general-define-key "M-x" 'smex
                    "\C-xm" 'execute-extended-command
                    "M-X" 'execute-extended-command
                    "\C-x\C-m" 'execute-extended-command
                    "s-A" 'execute-extended-command
                    )
  #+end_src
*** TODO Recenter
*** Open Files in Buffer and Project Management
#+begin_src emacs-lisp
(general-define-key
 "C-x f" 'recentf-ido-find-file
 "C-x F r" 'recentf-ido-find-file
 "C-x F w" 'ido-find-file-other-window
 )

(general-define-key
 "C-x F p" 'projectile-command-map
 "C-c p" 'projectile-command-map)
#+end_src
*** Relly Quite
#+begin_src emacs-lisp
(global-unset-key (kbd "C-x C-c"))
(general-define-key  "C-x r q" 'save-buffers-kill-terminal)
#+end_src
** Appearance
*** Text Scale remapping keybindings
#+BEGIN_SRC emacs-lisp
(general-define-key "C-x C-A-b" 'text-scale-increase
                    "C-x C-A-t" 'text-scale-decrease)
#+END_SRC
** TODO Usage Search
** Navigation
*** Move more quickly
#+begin_src emacs-lisp
(global-set-key (kbd "C-S-<down>")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))


(global-set-key (kbd "C-S-<up>")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))

(global-set-key (kbd "C-S-<right>")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))

(global-set-key (kbd "C-S-<left>")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

(global-set-key (kbd "C-S-a")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))

(global-set-key (kbd "C-S-l")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))

(global-set-key (kbd "C-S-e")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))

(global-set-key (kbd "C-S-i")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))


#+end_src


*** File Structure
=C-<F12>  =
Shows quick jumping points of the structure in the file.
#+begin_src emacs-lisp
(general-define-key "C-<f12>" 'imenu)
(general-define-key "C-S-<f12>" 'imenu-anywhere)
#+end_src
*** Switch buffer
- =s-e     =
- =C-x C-b =
- =C-x b   =
  Switch to another buffer.
  #+begin_src emacs-lisp
(global-unset-key (kbd "s-e"))
(general-define-key "s-e" 'ido-switch-buffer
                    "C-x C-b" 'ibuffer
                    "C-x b" 'ido-switch-buffer)
  #+end_src
*** Next highlighted error
#+begin_src emacs-lisp
(general-define-key "<f5>" 'next-error)
#+end_src
*** Go Back/Foward
- =C-x <left>    = Go Back current buffer
- =C-x <right>   = Go Forward current buffer
- =C-x C-<left>  = Go Back over buffers
- =C-x C-<right> = Go Forward over buffers

*** Jump to other Window
- =A-S-<up>    = jump a window up
- =A-S-<down>  = jump a window down
- =A-S-<left>  = jump a window left
- =A-S-<right> = jump a window right
  #+begin_src emacs-lisp
(nk/check-package 'windmove (lambda ()
                              (general-define-key "<A-S-right>" 'windmove-right
                                                  "<A-S-left>" 'windmove-left
                                                  "<A-S-up>" 'windmove-up
                                                  "<A-S-down>" 'windmove-down) ))
  #+end_src

*** New Window
#+begin_src emacs-lisp
(defun split-window-right-and-move-there-dammit ()
  (interactive)
  (split-window-right)
  (windmove-right))

(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there-dammit)
#+end_src
*** Macro Step jumps into source code (lisp)
Zeigt den Inhalt von elip Funktionen.
#+BEGIN_SRC emacs-lisp
(if (require 'macrostep nil 'noerror)
    (require 'macrostep)
  (message "neo-keybinding missing package: macrostep"))
#+END_SRC
*** Tool Windows

*** Goto Line
- =M-g M-g   = goto line number and shows line numbers
  #+begin_src emacs-lisp
(global-set-key [remap goto-line] 'goto-line-with-feedback)
  #+end_src

** Search Replace Highlight
*** Highlight Symbols Phrases ...
- =F6   = Highlight a Symbol under the cursor
- =C-F6 = Highlight a Search Pattern with custome color
  #+begin_src emacs-lisp
(general-define-key "<f10>" 'highlight-symbol-at-point
                    "C-<f10>" 'highlight-phrase)
  #+end_src
*** Searching
- =C-S   =
  #+begin_src emacs-lisp
(nk/check-package 'swiper (lambda ()(general-define-key
                                     "C-S-s" 'swiper-isearch
                                     "C-S-r" 'swiper-isearch-backward
                                     "C-7" 'swiper-mc) ))
  #+end_src
** Live Templates
** Version Control System
** Refactoring
** Debugging
** Compile and Run

** Magnars
*** Files

-  =C-x C-f= Open a file. Starts in the current directory
-  =C-x f  = Open a recently visited file
-  =C-x o  = Open a file in the current project (based on .git ++)
-  =C-x C-s= Save this file
-  =C-x C-w= Save as ...
-  =C-x C-j= Jump to this files' current directory
-  =C-x b  = Switch to another open file (buffer)
-  =C-x C-b= List all open files (buffers)

*** Cut copy and paste

- =C-space= Start marking stuff. C-g to cancel.
- =C-w    = Cut (aka kill)
- =C-k    = Cut till end of line
- =M-w    = Copy
- =C-y    = Paste (aka yank)
- =M-y    = Cycle last paste through previous kills
- =C-x C-y= Choose what to paste from previous kills
- =C-@    = Mark stuff quickly. Press multiple times

*** General

-  =C-g    = Quit out of whatever mess you've gotten yourself into
-  =M-x    = Run a command by name
-  =C-.    = Autocomplete
-  =C-_    = Undo
-  =M-_    = Redo
-  =C-x u  = Show the undo-tree
-  =C-x m  = Open magit. It's a magical git interface for emacs

*** Navigation

-  =C-arrow= Move past words/paragraphs
-  =C-a    = Go to start of line
-  =C-e    = Go to end of line
-  =M-g M-g= Go to line number
-  =C-x C-i= Go to symbol
-  =C-s    = Search forward. Press =C-s= again to go further.
-  =C-r    = Search backward. Press =C-r= again to go further.

*** Window management

-  =C-x 0  = Close this window
-  =C-x 1  = Close other windows
-  =C-x 2  = Split window horizontally
-  =C-x 3  = Split window vertically
-  =S-arrow= Jump to window to the left/right/up/down





;; Super (or Hyper) Keybinding

;; Function Keys Row

;;* <f1>
                                        ; Idea:
                                        ; - <f1> view *Quick Documentation*
                                        ; - S-<f1> view *External Documentation*
                                        ; - s-<f1> view *error description*
                                        ; - A-<f1> navigate *select in*

;;* <f2>
                                        ; Idea:
                                        ;- <f2> navigate to *next highlighted error*
                                        ;- s-<f2> run *stop*

;;* <f3>
                                        ; Idea:
                                        ; - <f3> navigate *toggle bookmarks*
                                        ; - s-<f3> navigate *show bookmarks*

;;* <f4>
                                        ; Idea: view *jump to source*
;;* <f5>
                                        ;Idea: refactor *copy*
;;* <f6>
;;* <f7>
;;* <f8>
;;* <f9>
;;* <f10>
;;* <f11>
(general-define-key
 "C-<f11>" '(lambda () (interactive)(setq mac-option-modifier 'none) (message "Modifier Option set to none"))
 "s-<f11>" '(lambda () (interactive)(setq mac-option-modifier 'alt) (message "Modifier Option set to alt"))
 )
;;* <f12>
;; Number Row
;;* 1 °

(general-define-key "s-1" '+treemacs/toggle)

;;* 2 §
;;* 3 ℓ
;;* 4 »
;;* 5 «
;;* 6 $
;;* 7 €
;;* 8 „
;;* 9 “

(general-define-key
 "s-9" 'magit-status)

;;* 0 ”
;;* - —
;; Upper Row
;;* x X
;;* v V :paste:history:clipboard:
                                        ;Shows a popup menu with a history kills, it's like a clipboard history.

(if (require 'browse-kill-ring nil 'noerror)
    (general-define-key "s-V" 'browse-kill-ring)
  (general-define-key "s-V" '(lambda ()
                               (interactive)
                               (popup-menu 'yank-menu))))


;;* l L
;;* c C
                                        ; Comment or uncomment a line or region.

(global-unset-key (kbd "s-C"))
(general-define-key "s-C" 'comment-line
                    "M-s-c" 'comment-or-uncomment-region)

;;* w W :buffer:

(global-unset-key (kbd "s-w"))
(general-define-key "s-w" 'kill-current-buffer)

(general-def org-src-mode-map
  "s-w" 'org-edit-src-exit)

;;* k K

(global-unset-key (kbd "s-k"))

;;* h H < :multiple:cursors:

(general-define-key
 "A-s-<" 'mc/mark-previous-like-this
 "A-s-h" 'mc/mark-previous-like-this)

;;* g G > :search:multiple:cursors:

(general-define-key "s-G" 'isearch-repeat-backward)

(general-define-key
 "A-s->" 'mc/mark-next-like-this
 "A-s-g" 'mc/mark-next-like-this)

;;* f F :search:org:
                                        ;Remaping for org-mode. The meta key is maped to fn-key, with cursor it behaves diffrent.

(general-define-key
 :keymaps 'org-mode-map
 ;; forword right
 "C-f" 'org-metaright
 )



(general-define-key  "s-F r" 'isearch-forward-regexp)
;; (nk/check-package 'swiper (lambda ()(general-define-key
;;                                      "s-F s" 'swiper-isearch
;;                                      "s-F S" 'swiper-isearch-backward
;;                                      "s-F 7" 'swiper-mc) ))

(if (require  'avy
              nil 'noerror)
    (general-define-key
     "s-F a" 'avy-goto-char)

  (if (require  'ace-jump-mode nil 'noerror)
      (general-define-key
       "s-F a" 'ace-jump-char-mode)
    (message "neo-keybinding missing package: avy or ace-jump-mode")))

;;* q Q
;;* ß ẞ
;; Center Row
;;* u U
                                        ;Idea:
                                        ;- s-U *Main menu | Navigate | Go to Super Method*

                                        ;upper Lower Case Toggle


;; (nk/check-package 'xah-fly-keys
;;                   (lambda () (general-define-key "C-S-u" 'xah-toggle-letter-case)))
(global-unset-key (kbd "s-u"))
(general-define-key
 "s-U" 'xah-toggle-letter-case)


;;* i I
;;* a A
;;* e E
;;* o O

(global-unset-key (kbd "s-o"))
;;((general-define-key "s-o" 'counsel-find-file)

(general-define-key :prefix "s-O"
                    "p" 'ns-open-file-using-panel
                    "m" 'execute-extended-command)

(map! :after ivy :map ivy-mode-map :prefix "s-O"
      :desc "recent files" "r" ;'counsel-recentf
      :desc "open file" "f" ;'counsel-find-file)

      (general-def org-mode-map
        "s-o" 'counsel-org-goto)

      (general-def org-mode-map
        :prefix "s-O"
        "o" 'org-open-at-point
        "s" 'org-edit-special)

      (general-def cider-repl-mode-map
        "s-o" 'cider-repl-history)

      ;;* s S


      (general-def cider-repl-mode-map
        "s-s" 'cider-repl-history-save)

      ;;* n N :org:

      (global-unset-key (kbd "s-n"))


      (general-define-key
       :keymaps 'org-mode-map
       ;; next down
       "C-n" 'org-metadown
       )

      ;;* r R
      ;;* t T
      ;;* d D

      (global-unset-key (kbd "s-d"))
      (general-define-key "s-d" 'duplicate-line-or-region)

      ;;* y Y
      ;; Lower Row
      ;;* ü Ü
      ;;* ö Ö
      ;;* ä Ä :cursor:jump:
      ;;    Cursor Jumps [[https://github.com/abo-abo/avy][Avy-Mode]] like [[https://github.com/winterTTr/ace-jump-mode][Ace-Jump-Mode]]

      (general-define-key
       "s-ä" 'avy-goto-char-2
       "s-Ä c" 'avy-goto-char
       "s-Ä l" 'avy-goto-line
       "s-Ä w" 'avy-goto-word-1
       "s-Ä o" 'avy-org-goto-heading-timer
       )

      ;;* p P :org:

      (general-define-key
       :keymaps 'org-mode-map
       ;; previous up
       "C-p" 'org-metaup
       )

      ;;* z Z :undo:redo:
      ;; - =C-z   = undo
      ;; - =C-S-z = redo
      ;; - =C-x u = Show the undo-tree


      (nk/check-package 'undo-tree
                        (lambda () (global-unset-key (kbd "C-/"))
                          (global-unset-key (kbd "C-_"))
                          (general-define-key "C-z" 'undo-tree-undo
                                              "C-Z" 'undo-tree-redo
                                              "s-Z" 'undo-tree-redo)))


      ;;* b B :org:

      (general-define-key
       :keymaps 'org-mode-map
       ;; backward left
       "C-b" 'org-metaleft
       )

      ;;* m M
      ;; The keybinding =C-m= effects a =return=, and I think that's a bug.

      (define-key input-decode-map [?\C-m] [C-m])
      ;;(general-define-key "<C-m>" '(lambda () (interactive) (message "C-m is not the same as RET any more!")))

      ;;* , –
      ;;* . •
      ;;* j J :join:line:
                                        ;C-S-j*
      ;; Join this line to previous and fix up whitespace at join.

      (general-define-key "C-S-j" 'join-line
                          "s-J" 'join-line)


      ;; Space Return Backspace Delete Up Down Right Left Tab
      ;;* return

      (general-define-key
       ;; NOTE: keymaps specified with :keymaps must be quoted
       :keymaps 'org-mode-map
       "s-<return>" 'org-meta-return
       )

      ;;* Cursor up down :text:move:select:

      (nk/check-package 'move-text (lambda () (general-define-key
                                          "s-S-<up>"  'move-text-up
                                          "s-S-<down>"  'move-text-down)))



      ;; Erweitere und schrumpfe den selektierten Text.


      (nk/check-package 'expand-region
                        (lambda () (general-define-key
                               "A-<up>"  'er/expand-region
                               "A-<down>" 'er/contract-region))
                        )


      ;;* Cursor links und rechts :cursor:move:
      ;; Ich habe mich schon so an den Mac Standard gewöhnt, das ich ihn auch bei Emacs haben möchte.

      (general-define-key "s-<right>" 'move-end-of-line
                          "s-<left>" 'move-beginning-of-line)


      ;; Springt zu den letzten Punktion, wo sich der Cursor befand.

      (general-define-key "A-s-<left>" 'better-jumper-jump-backward
                          "A-s-<right>" 'better-jumper-jump-forward)


      ;;** Smatparam Bug
      ;; Normalerweise springt man mit c-right oder c-left über Wörter hinweg, die Tasten
      ;; werden smartparens überschrieben. Wenn ich mit dem Mode umgehen kann, kann ich
      ;; mir überlegen, ob ich eine andere Zuordnung bevorzuge.


      (general-define-key
       "A-<left>" 'left-word
       "A-<right>" 'right-word)


      ;;* Leertaste Space Key :multiple:cursors:


      (global-unset-key (kbd "A-<tab>"))
      (global-unset-key (kbd "C-@"))
      (global-unset-key (kbd "M-SPC"))
      (global-unset-key (kbd "M-@"))

      (general-define-key  "M-SPC" 'set-mark-command)
      (general-define-key  "s-SPC" 'set-mark-command)


      ;; Select Text and Fast

      ;; - =C-c m c = Add one cursor to each line of the active region.
      ;; - =C-c m a = Find and mark all the parts of the buffer matching the currently active region


      (general-define-key
       "S-s-SPC c" 'mc/edit-lines
       "S-s-SPC a" 'mc/mark-all-like-this
       "S-s-SPC p" 'mark-paragraph
       )



      ;;* Tab
      ;Manchmal kommen snippets in den Weg und ich möchte nur einrücken.

      (general-define-key
       "C-<tab>" 'indent-for-tab-command)
