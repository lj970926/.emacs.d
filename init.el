(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(package-selected-packages '(magit ivy org-bullets org dracula-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 143 :width normal :foundry "CTDB" :family "FiraCode Nerd Font Mono")))))
(require 'evil)
(evil-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(load-theme 'dracula t)
(menu-bar-mode 0)
(setq x-select-enable-clipboard t)
(setq make-backup-files nil)
(setq create-lockfiles nil)
(setq auto-save-default nil)

(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-hook 'org-mode-hook
	  (lambda ()
	    (flyspell-mode 1)))

(global-linum-mode 1)
(require 'org-bullets)
(add-hook 'org-mode-hook
	  (lambda ()
	    (org-bullets-mode 1)))

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
