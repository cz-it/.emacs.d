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


;; jump to/back
(global-set-key (kbd "C-c j")  'semantic-ia-fast-jump)
(global-set-key (kbd "C-c C-j") (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first)))) 



;; .cpp to .h or back
(global-set-key (kbd "C-c h")  'eassist-switch-h-cpp) 
