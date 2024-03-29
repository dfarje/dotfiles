;; Package stuff
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(wheatgrass))
 '(org-babel-load-languages '((emacs-lisp . t) (org . t) (plantuml . t)))
 '(org-html-htmlize-output-type 'css)
 '(package-selected-packages '(groovy-mode org plantuml-mode ##)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;set default working directory to user home
;;(setq default-directory "C:\\Users\\davidf1021\\")
(if (eq system-type 'windows-nt)
    (setq default-directory "C:\\Users\\davidf1021\\")
  (setq default-directory "/home/symtex/"))

;;blank buffer on startup
(setq inhibit-splash-screen t)
;;(switch-to-buffer "**")

;;disable backup we use git for everything
(setq backup-inhibited t)
;;disable auto save we use git for everything
(setq auto-save-default nil)

;;use line numbers when in any programming mode
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;;set keybindings to resize windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;;switch default buffer keybinding to ibuffer
 (global-set-key (kbd "C-x C-b") 'ibuffer)

;;set start up frame size geometry
;;(when window-system (set-frame-size (selected-frame) 150 45))
(desktop-save-mode 1)

;; python variable for some stuff
(setq python-shell-interpreter "python3")

;; plantuml variable for org mode
(if (eq system-type 'windows-nt)
    (setq org-plantuml-jar-path "C:\\Users\\davidf1021\\Downloads\\plantuml.jar")
  (setq org-plantuml-jar-path "/home/symtex/Downloads/plantuml.jar"))


;; Clear out carriare-returns for DP radware config files
(defun radreplace ()
  (interactive)
  (save-excursion
    (goto-char 0)
    (while (search-forward "\r" nil :noerror)
      (replace-match ""))))



