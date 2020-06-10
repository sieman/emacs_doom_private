;; sieh die diese Seite an! https://github.com/d12frosted/flyspell-correct

;; Spell Checking

;; UTF 8 https://github.com/wooorm/dictionaries
;;
;; Wörderbücker: https://extensions.libreoffice.org/en/extensions/show/german-de-de-frami-dictionaries

;; https://www.emacswiki.org/emacs/InteractiveSpell#toc2
;; Konfiguration für Hunspell. Hunspell muss zuvor mit =brew install
;; Hunspell= installiert sein. Wörterbücher müssen unter
;; =~/Library/Spelling= installiert sein.


;; ~/Library/Spelling


;;"/Users/sim/entwicklung/frameworks/brew/bin/hunspell"
;;(setq-default ispell-program-name (executable-find "hunspell"))
;;(setq ispell-really-hunspell t)


;;(setenv "DICTIONARY" "de_DE")
(setq ispell-dictionary "de_DE")
(setq ispell-hunspell-dict-paths-alist
     '(("de_DE" "~/Library/Spelling/de_DE.aff")))

;; (setq ispell-aspell-data-dir "~/Library/Spelling/")
;; (setq ispell-aspell-dict-dir ispell-aspell-data-dir)
;; (setq ispell-aspell-dictionary-alist '())
;; (add-to-list 'ispell-aspell-dictionary-alist (ispell-aspell-find-dictionary "de_DE"))
;; ispell-hunspell-dict-paths-alist

;; [[https://d12frosted.io/posts/2016-05-09-flyspell-correct-intro.html][flyspell-correct Intro]]


  ;;
  ;;  (use-package flyspell-correct
  ;;    :config
  ;;    (add-hook 'text-mode-hook 'turn-on-auto-fill)
  ;;    ;; (add-hook 'org-mode-hook 'flyspell-mode) ; turn it on, if it realy required
  ;;    (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  ;;    (add-hook 'git-commit-mode-hook 'flyspell-mode)
  ;;    (add-hook 'mu4e-compose-mode-hook 'flyspell-mode))
  ;;    (require 'flyspell-correct-ido)
;;(general-def flyspell-mode-map "C-M-," 'flyspell-correct-wrapper)
  ;;  ;; (global-set-key (kbd "C-M-,") 'flyspell-correct-wrapper)
  ;;  ;; (global-unset-key (kbd "C-."))
  ;;  ;; (global-unset-key (kbd "C-M-i"))
  ;;
