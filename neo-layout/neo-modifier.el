;; Meta Control Hyper Super - Tasten für Mac OS                       :key:binding:
;; Auf Mac Tastaturen ist die Command-Taste über die alles gesteuert
;; wird. Daher mag ich es diese für die Control-Taste zu verwenden.

(when (eq system-type 'darwin)
       (setq
             mac-function-modifier 'meta

             mac-control-modifier 'control
             mac-option-modifier 'none
             mac-command-modifier 'super

             mac-right-command-modifier 'super
             mac-right-option-modifier 'none
             mac-right-control-modifier 'control
       ))

(provide 'neo-modifier)
