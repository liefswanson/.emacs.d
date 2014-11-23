;;; Commentary:

;;; --- Summary

;;; Code:
(setq c-default-style "user"
      c-basic-offset 4)

(add-hook 'c-mode-hook #'c-set-style 'user)

(provide 'c-conf)
;;; c-conf.el ends here
