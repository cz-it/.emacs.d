;; auto comlete
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete")
(load "auto-complete-load")

;; golang for emacs 
(add-to-list 'load-path "~/.emacs.d/lib/golang")
(require 'go-autocomplete)
(require 'auto-complete-config)
(require 'go-mode-load)
;; (load "go-mode-load")

;; cscope
(add-to-list 'load-path "~/.emacs.d/lib/cscope")
(require 'ascope)

;; coding style

;; indent and tab
 ;; set TAB to be 4 with
 (setq default-tab-width 4) 
 (setq c-default-style "linux"
 	  c-basic-offset 4)

 ;; set python indent
 (setq python-indent-offset 4);;  indent after enter
