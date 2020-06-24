;;; ~/.e/sieman/doom.d/+org.el -*- lexical-binding: t; -*-

;; Quickly insert a block of elisp:
(after! org
      (add-to-list 'org-structure-template-alist
                   '("el" . "src emacs-lisp"))
      (setq org-use-speed-commands t)
      )

(add-hook! 'org-log-buffer-setup-hook '(require 'org-keys))
