;; auto comlete 
;(add-to-list 'load-path "~/.emacs.d//elpa/auto-complete-20161028.643")
;(load "auto-complete-load")
; already in melpa
(require 'auto-complete-config)
(global-auto-complete-mode t)

;; cedet
(require 'cedet)
(global-ede-mode t)
(custom-set-variables
 '(semantic-default-submodes (quote (global-semantic-decoration-mode global-semantic-idle-completions-mode
                                     global-semantic-idle-scheduler-mode global-semanticdb-minor-mode
                                     global-semantic-idle-summary-mode global-semantic-mru-bookmark-mode)))
 '(semantic-idle-scheduler-idle-time 3))

(semantic-mode)

(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

(require 'semantic/bovine/gcc)
(require 'semantic/bovine/c)

(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public" "."
        "../.." "../../include" "../../inc" "../../common" "../../public"
        "../../third_part/TSF4G_BASE-2.7.17.141496_X86_64_Release/release/x86_64/include"))

(setq cedet-sys-include-dirs (list
                              "/usr/include"
                              "/usr/include/bits"
                              "/usr/include/glib-2.0"
                              "/usr/include/gnu"
                              "/usr/include/gtk-2.0"
                              "/usr/include/gtk-2.0/gdk-pixbuf"
                              "/usr/include/gtk-2.0/gtk"
                              "/usr/local/include"
                              "/usr/local/include"))

(let ((include-dirs cedet-user-include-dirs))
  (setq include-dirs (append include-dirs cedet-sys-include-dirs))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))

(setq semantic-c-dependency-system-include-path "/usr/include/")
(setq semanticdb-default-save-directory
      (expand-file-name "~/.emacs.d/semanticdb"))
(require 'semantic/db-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)


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


