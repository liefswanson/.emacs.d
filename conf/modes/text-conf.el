;;; package --- Summary
;;; Commentary:
;;; Code:

(defun buffer-face-variable ()
  "Set font to a variable width (proportional) fonts in current buffer"
  (interactive)
  (setq buffer-face-mode-face '(:family "Droid Sans" :height 143))
  (buffer-face-mode))


(add-hook 'text-mode-hook
		  (lambda ()
			(tabbar-mode nil)
			(linum-mode nil)
			(buffer-face-variable)
			))

;;this is gitignored, don't forget to get your own api key to make use of this
(thesaurus-set-bhl-api-key-from-file "~/.emacs.d/bhl.api")

(provide 'text-conf)
;;; text-conf.el ends here
