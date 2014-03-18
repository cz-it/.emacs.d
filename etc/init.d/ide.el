
;; auto comlete
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete")
(load "auto-complete-load")

;; golang for emacs 
(add-to-list 'load-path "~/.emacs.d/lib/golang")
(require 'go-autocomplete)
(require 'auto-complete-config)
(require 'go-mode-load)
;; (load "go-mode-load")
