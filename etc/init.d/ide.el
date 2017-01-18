;; auto comlete
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete")
(load "auto-complete-load")

;; cedet
;(add-to-list 'load-path "~/.emacs.d/lib/cedet/cedet-1.1/")
;(load-file "~/.emacs.d/lib/cedet/cedet-1.1/common/cedet.el")
;(global-ede-mode 1)
;(semantic-load-enable-code-helpers) 
;(global-srecode-minor-mode 1)
;(semantic-load-enable-minimum-features)
;(semantic-load-enable-code-helpers)
;(semantic-load-enable-guady-code-helpers)
;(semantic-load-enable-excessive-code-helpers)
;(semantic-load-enable-semantic-debugging-helpers)

;; .cpp to .h
(require 'eassist nil 'noerror)

;; ecb
;(add-to-list 'load-path "~/.emacs.d/lib/cedet/ecb-2.40")
;(load-file "~/.emacs.d/lib/cedet/ecb-2.40/ecb.el")
;(require 'ecb)
;(require 'ecb-autoloads)



;; markdown for emacs
(add-to-list 'load-path "~/.emacs.d/lib/markdown")
(autoload 'markdown-mode "markdown-mode"  
	  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; golang for emacs 
;;(add-to-list 'load-path "~/.emacs.d/lib/golang")
;;(require 'go-autocomplete)
;;(require 'auto-complete-config)
;;(require 'go-mode-load)
;;(load "go-mode-load")

;; cscope
(add-to-list 'load-path "~/.emacs.d/lib/cscope")
(require 'ascope)

;; protobuf for emacs
(add-to-list 'load-path "~/.emacs.d/lib/protobuf")
(require 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))

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

;;directory tree 
(add-to-list 'load-path "~/.emacs.d/lib/sr-speedbar")
(require 'sr-speedbar)
(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)))
;;(setq sr-speedbar-right-side nil)
;;(setq imenu-auto-scan t)
(setq imenu-auto-scan t)
(setq sr-speedbar-refresh-turn-on t)
(setq speedbar-show-unknown-files t)

;; template files
(add-to-list 'load-path "~/.emacs.d/lib/template/template-3.3b")  
(require 'template)  
(template-initialize)  


