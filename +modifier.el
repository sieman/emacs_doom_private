;; Meta Control Hyper Super - Tasten für Mac OS                       :key:binding:
;; Auf Mac Tastaturen ist die Command-Taste über die alles gesteuert
;; wird. Daher mag ich es diese für die Control-Taste zu verwenden.

;; =C      = Shorthand for the ctrl-key
;; =M      = Shorthand for the meta-key 
;; =S      = Shorthand for the shift-key
;; =H      = Shorthand for the fn-key
;; =A      = Shorthand for the alt-key
;; =s      = Shorthand for the super-key

(when (eq system-type 'darwin)
       (setq
             mac-function-modifier 'meta

             mac-control-modifier 'control
             mac-option-modifier 'alt
             mac-command-modifier 'super

             mac-right-command-modifier 'super
             mac-right-option-modifier 'alt
             mac-right-control-modifier 'control

       ))

(provide 'neo-modifier)
