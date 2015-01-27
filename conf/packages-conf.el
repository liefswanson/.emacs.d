;;; Commentary:

;;; --- Summary

;;; Code:
(require 'package)
(package-initialize)

;; elpa/package archives
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(defvar elpa-packages
  '(auto-complete
	csharp-mode
	omnisharp
	dash
	ensime
	epl
	ergoemacs-mode
	fic-mode
	flycheck
	fringe-helper
	go-mode
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
	)
  "melpa-packages"
  )

(defun fetch-my-packages ()
  (interactive)
  (when (not package-archive-contents)
	(package-refresh-contents)
	)

  (dolist (p elpa-packages)
	(when (not (package-installed-p p))
	  (package-install p)
	  )
	)

  (dolist (p melpa-packages)
	(when (not (package-installed-p p))
	  (package-install p)
	  )
	)
  )

(provide 'package-conf)
;;; packages-conf.el ends here
