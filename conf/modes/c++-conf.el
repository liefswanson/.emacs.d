;;; Commentary:

;;; --- Summary

;;; Code:
;(setq flycheck-clang-language-standard "c++14")

(font-lock-add-keywords
 'c++-mode
 '(("\\(nullptr\\)" . font-lock-constant-face)))

(font-lock-add-keywords
 'c++-mode
 '(("\\(\\*\\)" . font-lock-builtin-face)))


(font-lock-add-keywords
 'c++-mode
 '(("[^&]\\(&\\)[^&]" 1 font-lock-builtin-face)))

(font-lock-add-keywords
 'c++-mode
 '(("[^A-Z,a-z]\\([0-9]+\\)" 1 font-lock-string-face)))

(font-lock-add-keywords
 'c++-mode
 '(("\\<\\(\\sw+\\) *(" 1 font-lock-function-name-face))
 )

(font-lock-add-keywords
 'c++-mode
 '(("\\<\\(if\\|while\\|for\\|switch\\|catch\\|sizeof\\) *(" 1 font-lock-keyword-face))
 )

(provide 'c++-conf)
;;; c++-conf.el ends here
