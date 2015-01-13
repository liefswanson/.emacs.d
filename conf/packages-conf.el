;;; Commentary:

;;; --- Summary

;;; Code:
(require 'package)
(package-initialize)

;; elpa/package archives
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(defvar my-packages
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

(defun fetch-my-packages ()
  (interactive)
  (when (not package-archive-contents)
	(package-refresh-contents)
	)

  (dolist (p my-packages)
	(when (not (package-installed-p p))
	  (package-install p)
	  )
	)
  )

(provide 'package-conf)
;;; packages-conf.el ends here
