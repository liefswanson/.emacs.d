;;; Commentary:

;;; --- Summary
;;aesthetics go in this file
;;that includes themes, colours, and faces to do with those themes
;;however it does not include basic writing faces

;;; Code:
(setq custom-enabled-themes (quote (spolsky)))
(setq custom-safe-themes
  (quote
   ("0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" default)))
(load-theme 'spolsky t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(define-key menu-bar-tools-menu [games] nil)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(provide 'theme-conf)
;;; theme-conf.el ends here
