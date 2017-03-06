; Enable the MELPA package repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

; Disable the tool bar
(tool-bar-mode -1)

; Disable the menu bar
(menu-bar-mode -1)

; Disable the scroll bar
(scroll-bar-mode -1)
