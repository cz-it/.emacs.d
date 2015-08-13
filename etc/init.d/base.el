
;; show line num for emacs23 and higher
(global-linum-mode t) 
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

;; set backup action
  ;; set backup file position
  (setq backup-directory-alist '(("." . "~/backups")))
  ;; set backup method
  (setq backup-by-copying t)

;; set no backup file
  (setq make-backup-files t)

;; line width
  ;; 80 charactor one line
  (setq default-fill-column 80)
  (auto-fill-mode 1) 

;; share clipboard
(setq x-select-enable-clipboard t);
