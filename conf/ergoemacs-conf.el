;;; Commentary:

;;; --- Summary

;;; Code:
(ergoemacs-mode t)

(setq ergoemacs-ctl-c-or-ctl-x-delay 0.2)
(setq ergoemacs-handle-ctl-c-or-ctl-x (quote both))
(setq ergoemacs-ini-mode t)
;(setq ergoemacs-keyboard-layout "programmer-dv")
(setq ergoemacs-smart-paste nil)
(setq ergoemacs-theme "standard")
(setq ergoemacs-theme-options (quote ((save-options-on-exit off))))
(setq ergoemacs-use-menus t)

;;Not certain what these do, but ergoemacs set them by itself, so I am putting them here.
;;I assume they are functions of gnu emacs which help complete the ergoemacs theme.
(setq scroll-error-top-bottom t)
(setq set-mark-command-repeat-pop t)
(setq shift-select-mode t)

(provide 'ergoemacs-conf)
;;; ergoemacs-conf.el ends here
