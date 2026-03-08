;;; editor/xah-fly-keys/config.el -*- lexical-binding: t; -*-

(after! xah-fly-keys
  (defun sim/flykeys-indicate-command-mode () (interactive)
         (custom-set-faces
          `(cursor ((t (:background "SeaGreen4"))))
          ;; `(cursor ((t (:background "#1ea4ff"))))
          ;; `(dirvish-hl-line ((t (:box (:line-width 2 :color "white")))))
          )
         (custom-set-variables '(cursor-type 'box))
         (blink-cursor-mode 1)
         (xah-fly-save-buffer-if-file)
         )

  (defun sim/flykeys-indicate-insert-mode () (interactive)
         (custom-set-faces
          `(cursor ((t (:background "red"))))
          )
         (custom-set-variables '(cursor-type 'hollow))
         (blink-cursor-mode 0)
         (better-jumper-set-jump))

  (add-hook! 'xah-fly-insert-mode-activate-hook  'sim/flykeys-indicate-insert-mode)
  (add-hook! 'xah-fly-command-mode-activate-hook 'sim/flykeys-indicate-command-mode)

  (add-hook! '(color-rg-mode-hook
               dired-hook
               dirvish-setup-hook
               dirvish-mode-hook
               consult--filter-find-file-hook
               eshell-mode-hook
               magit-mode-hook
               magit-popup-mode-hook
               pdf-view-mode
               pdf-view-mode-hook
               transient-mark-mode-hook
               transient-setup-buffer-hook)
             #'xah-fly-insert-mode-activate)
  ;; (global-set-key (kbd "H-<left>") 'xah-fly-command-mode-activate)
  ;; (global-set-key (kbd "ESC ESC") 'xah-fly-command-mode-activate)
  )


(defun sim/flykeys-on ()
  (interactive)
  (neo2/flykeys-on)
  (define-key xah-fly-command-map (kbd "1") nil)
  (define-key xah-fly-command-map (kbd "1") 'delete-other-windows)

  (define-key xah-fly-command-map (kbd "2") nil)
  (define-key xah-fly-command-map (kbd "2") 'sim/split-window-below-and-move-there-dammit)
  (define-key xah-fly-command-map (kbd "3") nil)
  (define-key xah-fly-command-map (kbd "3") 'sim/split-window-right-and-move-there-dammit)
  (define-key xah-fly-command-map (kbd "4") nil)
  (define-key xah-fly-command-map (kbd "4") 'delete-window)

  (define-key xah-fly-command-map (kbd "5") nil)
  (define-key xah-fly-command-map (kbd "5") (kbd! "C-c l"))
  ;;(define-key xah-fly-command-map (kbd "TAB") xah-fly--tab-key-map)

  (define-key xah-fly-command-map (kbd "8") nil)
  (define-key xah-fly-command-map (kbd "8") 'xah-select-text-in-quote)
  (define-key xah-fly-command-map (kbd "9") nil)
  (define-key xah-fly-command-map (kbd "9") 'xah-extend-selection)
  (define-key xah-fly-command-map (kbd "q") nil)
  (define-key xah-fly-command-map (kbd "q") 'exchange-point-and-mark)

  (define-key xah-fly-command-map (kbd "U") 'eval-expression)

  (define-key xah-fly-command-map (kbd "o") nil)
  (define-key xah-fly-command-map (kbd "o") (kbd! "C-c"))

  (define-key xah-fly-command-map (kbd "O") nil)
  (define-key xah-fly-command-map (kbd "O") (kbd! "C-x"))

  (define-key xah-fly-command-map (kbd "s") (kbd! "C-c l"))
  (define-key xah-fly-command-map (kbd "b") 'avy-goto-char-2)
  (define-key xah-fly-command-map (kbd "A") 'casual-avy-tmenu)
  (define-key xah-fly-command-map (kbd "I") 'casual-isearch-tmenu)

  (define-key xah-fly-command-map (kbd "-") 'org-next-visible-heading)
  (define-key xah-fly-command-map (kbd "J") 'other-frame)
  (define-key xah-fly-command-map (kbd "(") 'org-previous-visible-heading)

  (define-key xah-fly-command-map (kbd "d") nil)
  (define-key xah-fly-command-map (kbd ")") 'repeat)
  (define-key xah-fly-command-map (kbd "d") 'xah-goto-matching-bracket)

  (define-key xah-fly-command-map (kbd "m") nil)

  (define-key xah-fly-command-map (kbd ",") nil)
  (define-key xah-fly-command-map (kbd ",") 'open-line)
  (define-key xah-fly-command-map (kbd "–") nil)
  (define-key xah-fly-command-map (kbd "–") 'xah-shrink-whitespaces)

  (define-key xah-fly-command-map (kbd ".") nil)
  (define-key xah-fly-command-map (kbd ".") (kbd! "<f7>"))

  (define-key xah-fly-command-map (kbd "j") nil)
  (define-key xah-fly-command-map (kbd "j") 'xah-next-window-or-frame)

  (define-key xah-fly-command-map (kbd "SPC") nil)
  (define-key xah-fly-command-map (kbd "SPC") 'xah-insert-space-before)

  ;;Wrong type argument: commandp, (neo2/insert-mode-f 'casual-avy-tmenu)
  ;; (defun neo2/insert-mode-f (func)
  ;;   "Go to insert mode and execute giffen func function."
  ;;   (interactive)
  ;;   (xah-fly-insert-mode-activate)
  ;;   (funcall func))
  )
