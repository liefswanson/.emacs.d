;;; package --- Summary

;;; Commentary:

;;; Code:

(font-lock-add-keywords
 'd-mode
 '(("\\<\\(\\sw+\\) *(" 1 font-lock-function-name-face))
 )

(font-lock-add-keywords
 'd-mode
 '(("\\<\\(if\\|while\\|for\\|switch\\|catch\\) *(" 1 font-lock-keyword-face))

 )

(provide 'd-conf)
;;; d-conf.el ends here
