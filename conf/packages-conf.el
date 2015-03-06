;;; Commentary:

;;; --- Summary

;;; Code:
(require 'package)

;; elpa/package archives
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(defvar elpa-packages
  '(auto-complete
	csharp-mode
	omnisharp
	dash
	ensime
	epl
	ergoemacs-mode
	fic-mode
	fish-mode
	flycheck
	fringe-helper
	go-mode
	glsl-mode
	haskell-mode
	icicles
	js2-mode
	less-css-mode
	markdown-mode
	pkg-info
	popup
	s
	scala-mode2
	scss-mode
	sublime-themes
	tabbar
	tabbar-ruler
	thesaurus
	undo-tree
	web-mode
	writegood-mode
	writeroom-mode
	yasnippet
	)
  "elpa packages"
  )

(defvar melpa-packages
  '(floobits
	matlab-mode
	minimap
	smooth-scrolling
	)
  "melpa-packages"
  )

(defvar marmalade-packages
  '()
  "marmalade-packages"
  )

(defun fetch-my-packages ()
  (unless package-archive-contents
  (package-refresh-contents))

  (dolist (package elpa-packages)
	(unless (package-installed-p package)
	  (package-install package)
	  )
	)

  (dolist (package melpa-packages)
	(unless (package-installed-p package)
	  (package-install package)
	  )
	)
  )

(provide 'package-conf)
;;; packages-conf.el ends here
