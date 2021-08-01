(defun sim/after-theme-changed ()
  "Custom face settings after theme changed."
  (interactive)
  (custom-set-faces
   '(show-paren-match ((t (:background "black" :foreground "yellow" :inverse-video t :weight bold))))
   '(region ((t (:foreground "#f1c40f" :background "#2c3e50" :inverse-video t))))
   `(cursor ((t (:foreground "white" :background "red"))))
   )
  (custom-set-variables '(cursor-type 'box))
  (set-frame-parameter (selected-frame) 'alpha '(100 . 100))
  (message "sim/after-theme-changed done")
  )

(defun sim/disable-all-custom-themes ()
  "Disable all themes and then load a single theme interactively."
  (interactive)
  (while custom-enabled-themes
    (disable-theme (car custom-enabled-themes))))

(defun sim/theme-blue ()
  (interactive)
  (load-theme 'deeper-blue t)
  (set-background-color "#224FBC")
  (set-frame-parameter (selected-frame) 'alpha '(88 . 88)))

(defun sim/elegant-theme ()
  (interactive)
  (sim/disable-all-custom-themes)
  (if doom-modeline-mode
      (doom-modeline-mode))
  ;; (provide 'elegance)
  (if (require 'elegance nil 'noerror)
      (message "elegance is loaded")
    (progn
      (load "./.local/straight/build-27.1/elegant-emacs/sanity.elc")
      (load "./.local/straight/build-27.1/elegant-emacs/elegance.elc"))
    )
  (sim/after-theme-changed)
  )

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (call-interactively 'goto-line))
    (linum-mode -1)))

(defun sim/describe-keymap (keymap)
  "Describe a keymap using `substitute-command-keys'."
  (interactive
   (list (completing-read
          "Keymap: " (let (maps)
                       (mapatoms (lambda (sym)
                                   (and (boundp sym)
                                        (keymapp (symbol-value sym))
                                        (push sym maps))))
                       maps)
          nil t)))
  (with-output-to-temp-buffer (format "*keymap: %s*" keymap)
    (princ (format "%s\n\n" keymap))
    (princ (substitute-command-keys (format "\\{%s}" keymap)))
    (with-current-buffer standard-output ;; temp buffer
      (setq help-xref-stack-item (list #'my-describe-keymap keymap)))))

(defun sim/disable-alt-modifier ()
  (interactive)
  (setq mac-option-modifier 'none
        mac-right-option-modifier 'none)
  (message "Modifier Option set to none"))

(defun sim/enable-alt-modifier ()
  (interactive)
  (setq mac-option-modifier 'alt
        mac-right-option-modifier 'alt)
  (message "Modifier Option set to alt"))

(defun sim/disable-smartparens ()
  "Disable smartparens mode globaly."
  (interactive)
  (turn-off-smartparens-mode)
  (turn-off-smartparens-strict-mode)
  (smartparens-global-mode -1)
  )
