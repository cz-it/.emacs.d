
;; show line num for emacs23 and higher
(global-linum-mode 1) 
(setq linum-format "%4d| ")

;; window setting
  ;; no menu bar
  (menu-bar-mode 0)
  ;; no tool bar
  (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
  ;; no scroll bar
  (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
  ;; close animation
  (setq inhibit-startup-message t)

;; set no backup file
  (setq make-backup-files t)
