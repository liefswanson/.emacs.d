;;; Commentary:

;;; --- Summary

;;; Code:
;;basic visual editing assists
(global-linum-mode t)
(setq linum-format " %4d")

(setq column-number-mode t)

(show-paren-mode t)
(setq global-hl-line-mode t)
(blink-cursor-mode t)
(global-hl-line-mode t)

(global-visual-line-mode t)

;;end file in new line
(setq require-final-newline t)

;;tabs
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq standard-indent 4)

;;backup files configuration
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(setq delete-old-versions t
  kept-new-versions 4
  kept-old-versions 2
  version-control t)


;;auto-complete
(require 'popup)
(require 'auto-complete)

(global-auto-complete-mode t)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict/")

(setq ac-auto-show-menu 0.5)
(setq ac-auto-start 3)
(setq ac-use-fuzzy t)

;;snippets
(yas-global-mode t)
(setq yas-snippet-dirs (quote ("~/.emacs.d/snippets")))
(setq yas-use-menu (quote abbreviate))

(global-flycheck-mode t)
(add-hook 'after-ini-hook #'global-flycheck-mode)


;; semantic

(setq semantic-default-submodes
	  '(
		global-semantic-idle-scheduler-mode t
		global-semanticdb-minor-mode t
		global-semantic-idle-summary-mode t
		global-semantic-mru-bookmark-mode t
		global-semanticdb-minor-mode nil
		))

(semantic-mode 1)

;;spellcheck comments
(add-hook 'prog-mode-hook #'flyspell-prog-mode)

;;fic-mode
(add-hook 'prog-mode-hook #'fic-mode)

;;electric modes
(electric-indent-mode t)
(electric-layout-mode t)
(electric-pair-mode t)

;;(icy-mode t)
(ido-mode t)

(setq warning-minimum-level :error)
(setq debug-on-error nil)

(provide 'editing-conf)
;;; editing-conf.el ends here
