;;; Commentary:

;;; --- Summary

;;; Code:

;ergoemacs goof up
(global-set-key (kbd "M-{") 'split-window-horizontally)
(global-set-key (kbd "M-3") 'split-window-vertically)
(global-set-key [mouse-2] 'minimap-toggle)

(global-unset-key (kbd "C-n"))

(global-set-key (kbd "C-_") 'show-subtree)
(global-set-key (kbd "C--") 'hide-subtree)

(global-set-key (kbd "C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-h") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-t") 'mc/mark-all-like-this)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;; Set Yasnippet's key binding to shift+tab
(define-key yas-minor-mode-map (kbd "<backtab>") 'yas-expand)

(require 'auto-complete-config)
(define-key ac-complete-mode-map (kbd "M-c") 'ac-previous)
(define-key ac-complete-mode-map (kbd "M-t") 'ac-next)
(define-key ac-complete-mode-map (kbd "M-n") 'forward-char)

;(global-set-key (kbd "M-n") 'forward-char)

(provide 'bindings-conf)
;;; bindings-conf.el ends here
