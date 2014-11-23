;;; package --- Summary

;;; Commentary:

;;; Code:

(font-lock-add-keywords
 'cc-mode
 '(("\\<\\(\\sw+\\) *(" 1 'font-lock-function-name-face))
 '(("\\<\\(if\\|while\\|for\\|switch\\|catch\\) *(" 1 'font-lock-keyword-face))
 )


(provide 'cc-conf)
;;; cc-conf.el ends here
