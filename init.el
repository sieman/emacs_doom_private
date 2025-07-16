;;; init.el -*- lexical-binding: t; -*-

(doom!
 :completion
 (corfu +orderless +icons)
 (vertico +icons)


 :ui
 doom              ; what makes DOOM look the way it does
 doom-dashboard    ; a nifty splash screen for Emacs
 hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
 ligatures         ; ligatures and symbols to make your code pretty again
 modeline          ; snazzy, Atom-inspired modeline, plus API
 nav-flash         ; blink cursor line after big motions
 ophints           ; highlight the region an operation acts on
 emoji
 (popup +defaults)   ; tame sudden yet inevitable temporary windows
 unicode           ; extended unicode support for various languages
 vc-gutter         ; vcs diff in the fringe
 vi-tilde-fringe   ; fringe tildes to mark beyond EOB
 (window-select +switch-window) ; visually switch windows
 zen               ; distraction-free coding or writing
 tabs              ; Zentauer
 smooth-scroll

 :editor
 file-templates    ; auto-snippets for empty files
 fold              ; (nigh) universal code folding
 multiple-cursors  ; editing in many places at once
 snippets          ; my elves. They type so I don't have to
 format

 :emacs
 (dired +icons +dirvish)    ; making dired pretty [functional]
 electric          ; smarter, keyword-based electric-indent
 (ibuffer +icons)           ; interactive buffer management
 (undo +tree)      ; persistent, smarter undo for your inevitable mistakes
 vc                ; version-control and Emacs, sitting in a tree

 :term
 eshell            ; the elisp shell that works everywhere

 :checkers
 syntax            ; tasing you for every semicolon you forget
 (spell +hunspell +flyspell) ; tasing you for misspelling mispelling

 :tools
 debugger
 tree-sitter
 (lookup +dictionary)
 editorconfig      ; let someone else argue about tabs vs spaces
 pdf

 (eval +overlay)     ; run code, run (also, repls)

 (lookup +dictionary +docsets) ; navigate your code and its documentation
 ;; (lsp +peek)
 magit             ; a git porcelain for Emacs

 :os
 (:if IS-MAC macos)  ; improve compatibility with macOS

 :lang
 (clojure +tree-sitter)           ; java with a lisp
 data              ; config/data formats
 emacs-lisp        ; drown in parentheses
 (json +tree-sitter)              ; At least it ain't XML
 (javascript +tree-sitter)        ; all(hope(abandon(ye(who(enter(here))))))
 latex             ; writing papers in Emacs has never been so fun
 (org +dragndrop +roam2)               ; organize your plain life in plain text
 (sh               ; she sells {ba,z,fi}sh shells on the C xor
   +tree-sitter)
 (web +tree-sitter)               ; the tubes
 (java +tree-sitter)
 :config
 literate
 (default +bindings +emacs +emacs-bindings)
 )
