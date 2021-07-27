;;; ~/.e/sieman.doom.d/doom.d/+org.el/+themes.el -*- lexical-binding: t; -*-

;; Main theme
;; (setq doom-theme 'doom-dracula)
(setq doom-theme 'doom-solarized-light)

(setq display-line-numbers-type nil)
;; "JetBrains Mono"
;; "LFBONovelNetz" "LOB.Novellenschrift" "LOV.Novellenschrift" "LUC.NovellenschriftU1A"
;; "Iosevka" "Iosevka Fixed" "Iosevka Term" "Iosevka SS04"
;; "Source Code Variable"
;; "Overpass Nerd Font"
;; https://github.com/Lindydancer/font-lock-studio debugging font
;; (print (font-family-list))
(setq doom-font (font-spec :family "FiraCode Nerd Font Mono" :style "Retina" :size 13 :height 1.0)
      doom-variable-pitch-font (font-spec :family "LOV.Novellenschrift" :size 20)
      ivy-posframe-font (font-spec :family "Iosevka SS04" :size 12 )
      doom-big-font (font-spec :family "FiraCode Nerd Font Mono" :style "Retina" :size 24))

(custom-set-faces
 '(show-paren-match ((t (:background "black" :foreground "yellow" :inverse-video t :weight bold))))
 '(region ((t (:foreground "#f1c40f" :background "#2c3e50" :inverse-video t))))
 `(cursor ((t (:foreground "white" :background "red")))))

(custom-set-variables '(cursor-type 'box))

;; All themes are safe to load
(setq custom-safe-themes t)

;; Splash image
(setq +doom-dashboard-banner-dir (concat doom-private-dir "banners/")
      +doom-dashboard-banner-file "thenwhyworry.png"
      +doom-dashboard-banner-padding '(0 . 1))

;; Change some font weights for the sections in LaTeX
(add-hook! LaTeX-mode
  (set-face-attribute 'font-latex-sectioning-1-face nil :height 1.8 :weight 'bold)
  (set-face-attribute 'font-latex-sectioning-2-face nil :height 1.6)
  (set-face-attribute 'font-latex-sectioning-3-face nil :height 1.3)
  (set-face-attribute 'font-latex-sectioning-4-face nil :height 1.1)
  (set-face-attribute 'font-latex-sectioning-5-face nil :height 1.1))

;; Match the background of latex previews and scale a bit less than the default
(after! preview
  (setq preview-scale 1.2)
  (set-face-attribute 'preview-reference-face nil :background (doom-color 'bg)))

;; Color the border of windows according to the `highlight' color of the doom's theme
(add-hook! 'doom-load-theme-hook
           ;; A more visible window border
           (set-face-attribute 'vertical-border nil :foreground (doom-color 'highlight))
           ;; Flycheck errors use the color of functions
           (after! flycheck
             (set-face-attribute 'flycheck-error nil
                                 :underline `(:color ,(doom-color 'functions)
                                              :style wave)))
           ;; Custom doom-one configuration
           (when (custom-theme-enabled-p 'doom-one)
             (after! org
               ;; Purple boxes for Org BEGIN_SRC and END_SRC
               (set-face-attribute 'org-block-begin-line nil
                                   :background "#5c3d5c"
                                   :foreground "#a16ba1"
                                   :weight 'bold
                                   :height 0.9
                                   :box '(:line-width 2 :color "#5c3d5c")))))

(add-hook! org-mode
           ;; Document title font
           (set-face-attribute 'org-document-title nil :height 2.2)
           (set-face-attribute 'org-level-1 nil :height 2.0)
           (set-face-attribute 'org-level-2 nil :height 1.9)
           (set-face-attribute 'org-level-3 nil :height 1.8)
           (set-face-attribute 'org-level-4 nil :height 1.7)
           (set-face-attribute 'org-level-5 nil :height 1.6)
           (set-face-attribute 'org-level-6 nil :height 1.5)
           (set-face-attribute 'org-level-7 nil :height 1.4)
           (set-face-attribute 'org-level-8 nil :height 1.3)
           ;; Face of keyword DONE (Green like strings)
           ;; (set-face-attribute 'org-done nil :foreground "#98be65")
           ;; Face of keyword TODO or [ ] (Purple like keywords)
           ;; (set-face-attribute 'org-todo nil :foreground "#c678dd")
           ;; Face of ellipsis symbol (Purple like keywords)
           (set-face-attribute 'org-ellipsis nil :foreground "#c678dd")
           ;; Face of the entire headline of a DONE line
           (set-face-attribute 'org-headline-done nil :foreground nil))
