;;; Commentary:

;;; --- Summary

;;; Code:
(require 'package)

;; elpa/package archives
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(defvar elpa-package-deps
  '(s
	dash
	epl
	pkg-info
	undo-tree
	popup
	fringe-helper
	)
  "Dependencies needed by various elpa packages, installed before their corresponding packages to avoid errors when cloning onto a new system."
  )

(defvar elpa-packages
  '(auto-complete
	csharp-mode
	d-mode
	ensime
	ergoemacs-mode
	fic-mode
	fish-mode
	floobits
	flycheck
	go-mode
	glsl-mode
	haskell-mode
	js2-mode
	less-css-mode
	malabar-mode
	markdown-mode
	matlab-mode
	minimap
	multiple-cursors
	omnisharp
	qml-mode
	scala-mode2
	scss-mode
	smooth-scrolling
	sublime-themes
	web-mode
	yasnippet
	)
  "Elpa packages."
  )

(defun fetch-my-packages ()
  "Grabs packages from elpa automatically, first dependencies, then the used packages."
  (unless package-archive-contents
  (package-refresh-contents))

  (dolist (package elpa-package-deps)
	(unless (package-installed-p package)
	  (package-install package)
	  )
	)

  (dolist (package elpa-packages)
	(unless (package-installed-p package)
	  (package-install package)
	  )
	)
  )
(provide 'package-conf)
;;; packages-conf.el ends here
