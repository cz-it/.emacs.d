;; shortcut for emacs

;switch between splited window

(global-set-key (kbd "C-x [")  'windmove-left)
(global-set-key (kbd "C-x ]") 'windmove-right)
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)


; open and close dir-tree sr-speedbar
(global-set-key (kbd "<f12>")  'sr-speedbar-toggle)
(global-set-key (kbd "<f11>")  'speedbar-refresh)

; change windows size

(global-set-key (kbd "C-c ]")  'enlarge-window-horizontally)
(global-set-key (kbd "C-c [")   'shrink-window-horizontally)
(global-set-key (kbd "C-c <up>")     'enlarge-window)
(global-set-key (kbd "C-c <down>")   'shrink-window)


;; go to line 
(global-set-key (kbd "C-c l")   'goto-line)
