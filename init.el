; Enable the MELPA package repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq-default indent-tabs-mode nil)

; Disable the tool bar
(tool-bar-mode -1)

; Disable the menu bar
(menu-bar-mode -1)

; Disable the scroll bar
(scroll-bar-mode -1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))


; Keyboard settings that are useful for MiniKanren (or at least,
; whichever implementation I was using at some point in the past)
(global-set-key (kbd "C-M-=") (lambda () (interactive) (insert "≡")))
(global-set-key (kbd "C-M-e") (lambda () (interactive) (insert "ᵉ")))
(global-set-key (kbd "C-M-o") (lambda () (interactive) (insert "ᵒ")))
