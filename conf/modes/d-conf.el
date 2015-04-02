;;; package --- Summary

;;; Commentary:

;;; Code:
(font-lock-add-keywords
 'd-mode
 '(("\\<\\(\\sw+\\) *!?(" 1 font-lock-function-name-face))
 )

(font-lock-add-keywords
 'd-mode
 '(("\\<\\(if\\|while\\|for\\|foreach\\|switch\\|catch\\) *(" 1 font-lock-keyword-face))

 )

(add-hook 'd-mode-hook 'auto-complete-mode t)
(add-hook 'd-mode-hook 'flycheck-dmd-dub-set-include-path)

(provide 'd-conf)
;;; d-conf.el ends here
