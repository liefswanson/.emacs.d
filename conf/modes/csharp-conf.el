;;; package --- Summary
;;; Commentary:
;;; Code:
(add-hook 'csharp-mode-hook
          (lambda ()
	    (omnisharp-mode t)
	    (flycheck-mode t)
	    (auto-complete-mode t)
	    ;; (company-mode t)
	    ;; (eval-after-load 'company
	    ;;   '(add-to-list 'company-backends 'company-omnisharp))
		(local-set-key (kbd "{") 'c-electric-brace)))

(provide 'csharp-conf)
;;; csharp-conf.el ends here
