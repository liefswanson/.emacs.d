;;; package --- Summary

;;; Commentary:

;;; Code:

;; (font-lock-add-keywords
;;  'malabar-mode
;;  '(("\\<\\(\\sw+\\) *(" 1 'font-lock-function-name-face))
;;  '(("\\<\\(if\\|while\\|for\\|switch\\|catch\\) *(" 1 'font-lock-keyword-face))
;;  )



(require 'eclim)
(global-eclim-mode)
(require 'eclimd)

(require 'auto-complete-config)
(ac-config-default)

(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(provide 'java-conf)
;;; java-conf.el ends here
