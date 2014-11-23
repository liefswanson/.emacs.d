;;; package --- Summary

;;; Commentary:

;;; Code:


(font-lock-add-keywords
 'malabar-mode
 '(("\\<\\(\\sw+\\) *(" 1 'font-lock-function-name-face))
 '(("\\<\\(if\\|while\\|for\\|switch\\|catch\\) *(" 1 'font-lock-keyword-face))
 )

(provide 'java-conf)
;;; java-conf.el ends here
