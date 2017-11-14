; Enable the MELPA package repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

; Add the repo for elpy
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize)

(elpy-enable)

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
 '(package-selected-packages
   (quote
    (epc yaml-mode typescript-mode racket-mode magit jsx-mode hy-mode eprime-mode elpy ediprolog clojure-mode cargo))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))

; Unset some bindings that I never use
(global-unset-key (kbd "<f1>"))
(global-unset-key (kbd "<f2>"))

; Keyboard settings that are useful for MiniKanren (or at least,
; whichever implementation I was using at some point in the past)
(global-set-key (kbd "C-M-=") (lambda () (interactive) (insert "≡")))
(global-set-key (kbd "C-M-e") (lambda () (interactive) (insert "ᵉ")))
(global-set-key (kbd "C-M-o") (lambda () (interactive) (insert "ᵒ")))

(global-set-key (kbd "C-x C-k") 'recompile)

; Enable Cargo minor mode when in Rust mode
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook
          (lambda () (add-to-list 'before-save-hook 'delete-trailing-whitespace)))

(global-set-key (kbd "C-x C-m") 'magit-status)
