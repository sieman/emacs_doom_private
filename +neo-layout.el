;; [[https://neo-layout.org/][Neo Layout]] ist eine ergonomische Tastaturbelegung, welche für die deutsche
;; Sprache optimiert ist. (Neo is an ergonomic keyboard layout optimized for the German language.)
;; Keybindings for  Neo-Layout.
;; [[https://jblevins.org/log/kbd][Keyboard Shortcuts for Editing Text Fields in OS X]]
;; [[https://ergoemacs.github.io/index.html][Ergo Emacs - Mode]] für Ideen

(define-key key-translation-map (kbd "A-^") (kbd "↻"))
(define-key key-translation-map (kbd "A-1") (kbd "¹"))
(define-key key-translation-map (kbd "A-2") (kbd "²"))
(define-key key-translation-map (kbd "A-3") (kbd "³"))
(define-key key-translation-map (kbd "A-4") (kbd "›"))
(define-key key-translation-map (kbd "A-5") (kbd "‹"))
(define-key key-translation-map (kbd "A-6") (kbd "¢"))
(define-key key-translation-map (kbd "A-7") (kbd "¥"))
(define-key key-translation-map (kbd "A-8") (kbd "‚"))
(define-key key-translation-map (kbd "A-9") (kbd "‘"))
(define-key key-translation-map (kbd "A-0") (kbd "’"))

(define-key key-translation-map (kbd "A-x") (kbd "_"))
(define-key key-translation-map (kbd "A-v") (kbd "_"))
(define-key key-translation-map (kbd "A-l") (kbd "["))
(define-key key-translation-map (kbd "A-c") (kbd "]"))
(define-key key-translation-map (kbd "A-w") (kbd "^"))
(define-key key-translation-map (kbd "A-k") (kbd "!"))
(define-key key-translation-map (kbd "A-h") (kbd "<"))
(define-key key-translation-map (kbd "A-g") (kbd ">"))
(define-key key-translation-map (kbd "A-f") (kbd "="))
(define-key key-translation-map (kbd "A-q") (kbd "&"))
(define-key key-translation-map (kbd "A-ß") (kbd "ſ"))

(define-key key-translation-map (kbd "A-u") (kbd "\\"))
(define-key key-translation-map (kbd "A-i") (kbd "/"))
(define-key key-translation-map (kbd "A-a") (kbd "{"))
(define-key key-translation-map (kbd "A-e") (kbd "}"))
(define-key key-translation-map (kbd "A-o") (kbd "*"))
(define-key key-translation-map (kbd "A-s") (kbd "?"))
(define-key key-translation-map (kbd "A-n") (kbd "("))
(define-key key-translation-map (kbd "A-r") (kbd ")"))
(define-key key-translation-map (kbd "A-t") (kbd "-"))
(define-key key-translation-map (kbd "A-d") (kbd ":"))
(define-key key-translation-map (kbd "A-y") (kbd "@"))

(define-key key-translation-map (kbd "A-ü") (kbd "#"))
(define-key key-translation-map (kbd "A-ö") (kbd "$"))
(define-key key-translation-map (kbd "A-ä") (kbd "|"))
(define-key key-translation-map (kbd "A-p") (kbd "~"))
(define-key key-translation-map (kbd "A-z") (kbd "`"))
(define-key key-translation-map (kbd "A-b") (kbd "+"))
(define-key key-translation-map (kbd "A-m") (kbd "%"))
(define-key key-translation-map (kbd "A-,") (kbd "\""))
(define-key key-translation-map (kbd "A-.") (kbd "'"))
(define-key key-translation-map (kbd "A-j") (kbd ";"))

(define-key key-translation-map (kbd "A-S-x") (kbd "ξ"))
(define-key key-translation-map (kbd "A-S-v") (kbd ""))
(define-key key-translation-map (kbd "A-S-l") (kbd "λ"))
(define-key key-translation-map (kbd "A-S-c") (kbd "χ"))
(define-key key-translation-map (kbd "A-S-w") (kbd "ω"))
(define-key key-translation-map (kbd "A-S-k") (kbd "κ"))
(define-key key-translation-map (kbd "A-S-h") (kbd "ψ"))
(define-key key-translation-map (kbd "A-S-g") (kbd "γ"))
(define-key key-translation-map (kbd "A-S-f") (kbd "φ"))
(define-key key-translation-map (kbd "A-S-q") (kbd "ϕ"))
(define-key key-translation-map (kbd "A-S-ß") (kbd "ϕ"))

(define-key key-translation-map (kbd "A-S-u") (kbd ""))
(define-key key-translation-map (kbd "A-S-i") (kbd "ι"))
(define-key key-translation-map (kbd "A-S-a") (kbd "α"))
(define-key key-translation-map (kbd "A-S-e") (kbd "ε"))
(define-key key-translation-map (kbd "A-S-o") (kbd "ο"))
(define-key key-translation-map (kbd "A-S-s") (kbd "σ"))
(define-key key-translation-map (kbd "A-S-n") (kbd "ν"))
(define-key key-translation-map (kbd "A-S-r") (kbd "ρ"))
(define-key key-translation-map (kbd "A-S-t") (kbd "τ"))
(define-key key-translation-map (kbd "A-S-d") (kbd "δ"))
(define-key key-translation-map (kbd "A-S-y") (kbd "υ"))

(define-key key-translation-map (kbd "A-S-ü") (kbd ""))
(define-key key-translation-map (kbd "A-S-ö") (kbd "ϵ"))
(define-key key-translation-map (kbd "A-S-ä") (kbd "η"))
(define-key key-translation-map (kbd "A-S-p") (kbd "π"))
(define-key key-translation-map (kbd "A-S-z") (kbd "ζ"))
(define-key key-translation-map (kbd "A-S-b") (kbd "β"))
(define-key key-translation-map (kbd "A-S-m") (kbd "μ"))
(define-key key-translation-map (kbd "A-S-,") (kbd "ϱ"))
(define-key key-translation-map (kbd "A-S-.") (kbd "ϑ"))
(define-key key-translation-map (kbd "A-S-j") (kbd "θ"))

(provide 'neo-layout)
