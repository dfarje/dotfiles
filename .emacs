



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(wheatgrass)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;set default working directory to user home
;(setq default-directory "C:\\Users\\davidf1021\\")
(cond
 ((string-equal system-type "windows-nt")
  (progn
    (setq default-directory "c:\\Users\\davidf1021\\")))
 ((string-equal system-type "gnu/linux")
  (progn
    (setq default-directory "/home/symtex/"))))


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

;set start up frame size geometry
(when window-system (set-frame-size (selected-frame) 150 45))
(desktop-save-mode 1)

