;;; package --- Summary

;;; Commentary:

;;; Code:

(font-lock-add-keywords
 'cc-mode
 '(("\\<\\(\\sw+\\) *(" 1 font-lock-function-name-face))
 )

(font-lock-add-keywords
 'cc-mode
 '(("\\<\\(if\\|while\\|for\\|switch\\|catch\\) *(" 1 font-lock-keyword-face))

 )

(font-lock-add-keywords
 'cc-mode
 '(("[space:]-[:alnum:]" . font-lock-negation-char-face))
 )

(provide 'cc-conf)
;;; cc-conf.el ends here
