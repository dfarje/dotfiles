;set default working directory to user home
(setq default-directory "C:\\Users\\david\\")


;blank buffer on startup
(setq inhibit-splash-screen t)
(switch-to-buffer "**")

;disable backup we use git for everything
(setq backup-inhibited t)
;disable auto save we use git for everything
(setq auto-save-default nil)

;use line numbers when in any programming mode
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;set keybindings to resize windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;switch default buffer keybinding to ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

