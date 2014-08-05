;; shortcuts
; switch between splited windows
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
; change size of window
(global-set-key (kbd "C-x <right>")  'enlarge-window-horizontally)
(global-set-key (kbd "C-x <left>")   'shrink-window-horizontally)
(global-set-key (kbd "C-x <up>")     'enlarge-window)
(global-set-key (kbd "C-x <down>")   'shrink-window) 


; open and close dir-tree sr-speedbar
(global-set-key (kbd "<f12>") 'sr-speedbar-close)
(global-set-key (kbd "<f11>") 'sr-speedbar-open)
