;;; Commentary:

;;; --- Summary

;;; Code:
(defun my-flycheck-cpp-setup ()
  (setq flycheck-clang-language-standard "c++14"))

(add-hook 'c-mode-hook #'my-flycheck-cpp-setup)

(provide 'c++-conf)
;;; c++-conf.el ends here
