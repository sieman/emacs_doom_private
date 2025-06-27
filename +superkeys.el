;;; $DOOMDIR/+superkeys.el -*- lexical-binding: t; -*-
(global-unset-key (kbd "A-<tab>"))
(global-unset-key (kbd "C-@"))
(global-unset-key (kbd "M-@"))
(global-unset-key (kbd "M-SPC"))
(global-unset-key (kbd "s-+"))
(global-unset-key (kbd "s--"))
(global-unset-key (kbd "s-="))
(global-unset-key (kbd "s-C"))
(global-unset-key (kbd "s-d"))
(global-unset-key (kbd "s-e"))
(global-unset-key (kbd "s-h"))
(global-unset-key (kbd "s-k"))
(global-unset-key (kbd "s-n"))
(global-unset-key (kbd "s-o"))
(global-unset-key (kbd "s-w"))
(global-unset-key (kbd "s-x"))

(map!
 "s-1" #'+treemacs/toggle
 "s-9" #'magit-status
 "s-0" #'text-scale-adjust

 ;; x X …
 "s-x" #'kill-region                    ; Edit Commands

 ;; v V _
 "s-v" #'yank                           ; Edit Commands
 "s-V" #'yank-pop                       ; Edit Commands

 ;; l L [
 "s-l" #'consult-goto-line
 ;; s-L shell-command

 ;; c C ]
 "s-c" (if (featurep 'evil) #'evil-yank #'copy-region-as-kill) ; Edit Commands
 "s-C" #'comment-line

 ;; w W ^
 "s-w" #'kill-current-buffer
 "s-W" #'doom/delete-frame-with-prompt

 ;; k K !
 "s-k" #'er/expand-region                                      ; Edit Commands
 "s-K" #'er/contract-region                                    ; Edit Commands

 ;; h H <
 "s-h" #'set-mark-command                                      ; Edit Commands
 ;; s-H ns-do-hide-others

 ;; g G >
 ;; s-g isearch-repeat-forward
 ;; s-G

 ;; f F =
 ;; s-f consult-line
 ;; s-F isearch-backward
 "s-=" #'doom/reset-font-size

 ;; q Q &
 ;; s-q save-buffers-kill-terminal
 ;; s-Q MACOS ABMELDEN
 ;; s-& kill-current-buffer

 ;; ß ẞ ſ
 "s-ß" #'completion-help-at-point

 ;; u U \
 "s-u" #'execute-extended-command
 "s-U" #'revert-buffer

 ;; i I /
 "s-i" #'indent-region

 ;; a A {
 "s-a" #'mark-whole-buffer                                     ; Edit Commands

 ;; e E }
 "s-e" #'ido-switch-buffer
 ;; s-E edit-abbrevs

 ;; o O *
 "s-o" #'imenu

 ;; s S ?
 ;; s-s save-buffer
 ;; s-S ns-write-file-using-panel
 ;; s-? info

 ;; n N (
 ;; s-n +default/new-buffer
 ;; s-N make-frame

 ;; r R )
 :desc "Replace Buffer" "s-r s" #'query-replace                ; Edit Commands
 :desc "Replace Buffer RegEx" "s-r r" #'query-replace-regexp   ; Edit Commands

 ;; t T -
 ;; s-t menu-set-font
 "s--" #'doom/decrease-font-size

 ;; d D :
 "s-d" #'sim/duplicate-line-or-region                          ; Edit Commands
 ;; s-D dired
 ;; s-: ispell

 ;; y Y @
 ;; s-y ns-paste-secondary

 ;; ü Ü #
 (:when (fboundp 'avy-goto-char-2 )
   "s-ü" #'avy-goto-char-2
   "s-Ü" #'casual-avy-tmenu)
 ;; ö Ö $

 ;; ä Ä |
 ;; s-| shell-command-on-region
 ;; p P ~
 ;; s-~ pre-frame
 (:when (modulep! :editor multiple-cursors)
   :desc "Mark next"          "s-ä"         #'mc/mark-next-like-this
   :desc "Mark previous"      "s-p"         #'mc/mark-previous-like-this
   :desc "Unmark previous"    "s-P"         #'mc/unmark-previous-like-this
   :prefix-map ("s-Ä" . "multiple-cursors")
   :desc "Edit lines"         "l"         #'mc/edit-lines
   :desc "Mark next"          "n"         #'mc/mark-next-like-this
   :desc "Unmark next"        "N"         #'mc/unmark-next-like-this
   :desc "Mark previous"      "p"         #'mc/mark-previous-like-this
   :desc "Unmark previous"    "P"         #'mc/unmark-previous-like-this
   :desc "Mark all"           "t"         #'mc/mark-all-like-this
   :desc "Mark all DWIM"      "m"         #'mc/mark-all-like-this-dwim
   :desc "Edit line endings"  "e"         #'mc/edit-ends-of-lines
   :desc "Edit line starts"   "a"         #'mc/edit-beginnings-of-lines
   :desc "Mark tag"           "s"         #'mc/mark-sgml-tag-pair
   :desc "Mark in defun"      "d"         #'mc/mark-all-like-this-in-defun
   :desc "Add cursor w/mouse" "<mouse-1>" #'mc/add-cursor-on-click)

 ;; z Z `
 "s-z" #'undo                                                  ; Edit Commands
 "s-Z" #'redo                                                  ; Edit Commands
 ;; s-` other-frame

 ;; b B +
 (:when (modulep! :lang org)
   :map org-mode-map
   "s-o" 'consult-org-heading
   "s-b" 'org-emphasize)
 "s-+" #'doom/increase-font-size

 ;; m M %
 ;; s-m iconify-frame
 ;; s-M manual-entry

 ;; , – "
 ;; s-, customize

 ;; . • '
 ;; s-' next-window-any-frame '

 ;; j J ;
 ;; s-j exchange-point-and-mark
 "s-J" #'join-line                                             ; Edit Commands

 "s-SPC" #'hippie-expand

 "s-<up>" #'consult-global-mark
 "s-<down>" #'consult-mark
 "s-<left>" #'doom/backward-to-bol-or-indent
 "s-<right>" #'doom/forward-to-last-non-comment-or-eol

 "s-S-<up>"  #'drag-stuff-up                                   ; Edit Commands
 "s-S-<down>"  #'drag-stuff-down                               ; Edit Commands
 "s-S-<left>"  #'drag-stuff-left                               ; Edit Commands
 "s-S-<right>"  #'drag-stuff-right                             ; Edit Commands

 "C-s-<up>" #'windmove-up               ; Navigation buffer
 "C-s-<down>" #'windmove-down           ; Navigation buffer
 "C-s-<left>" #'windmove-left           ; Navigation buffer
 "C-s-<right>" #'windmove-right         ; Navigation buffer
 )

(defalias 'sim/org-h3-date
  (kmacro "r * * * SPC C-c . <return> <left> S-<up> <right> SPC"))
