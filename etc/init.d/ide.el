;; auto comlete
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete")
(load "auto-complete-load")


;; markdown for emacs
(add-to-list 'load-path "~/.emacs.d/lib/markdown")
(autoload 'markdown-mode "markdown-mode"  
	  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

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


;; lua for emacs 
(add-to-list 'load-path "~/.emacs.d/lib/lua")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

