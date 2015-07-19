;;; package --- Summary


;; functions
(font-lock-add-keywords
 'python-mode
 '(("\\<\\(\\sw+\\) *(" 1 font-lock-function-name-face))
 )

;; objects
(font-lock-add-keywords
 'python-mode
 '(("\\<\\(\\sw+\\)\\." 1 font-lock-type-face))
 )

;; class headerscc
;; (font-lock-add-keywords
;;  'python-mode
;;  '(("\\<class \\(\\sw+\\)\\ *(.*):" 1 font-lock-type-face))
;;  )

;; fix self to be a keyword instead of a class
(font-lock-add-keywords
 'python-mode
 '(("\\<\\(self\\)" 1 font-lock-keyword-face))
 )

;; fix keywords to not be functions
(font-lock-add-keywords
 'python-mode
 '(("\\<\\(if\\|elif\\|while\\|for\\|return\\) *(" 1 font-lock-keyword-face))
 )

;; fix builtins to not be normal functions
(font-lock-add-keywords
 'python-mode
 '(("\\<\\(min\\|max\\|type\\|input\\|sorted\\|str\\|\\|int\\|range\\|len\\|exit\\|print\\) *(" 1 font-lock-builtin-face))
 )

;; highlight magic numbers
(font-lock-add-keywords
 'python-mode
 '(("\\<\\([0-9]+\\)" 1 font-lock-string-face))
 )


;;; Commentary:

;;; Code:

(defun underscore-words ()
	"change word boundary to include underscores"
  (modify-syntax-entry ?_ "w" python-mode-syntax-table)
  )
(add-hook 'python-mode-hook 'underscore-words)

;; python indenting
(defun electric-indent-ignore-python (char)
  "Ignore electric indentation for python-mode"
  (if (equal major-mode 'python-mode)
      `no-indent'
    nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)

;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
  "Map the return key with `newline-and-indent'"
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'set-newline-and-indent)

(provide 'python-conf)
;;; python-conf.el ends here
