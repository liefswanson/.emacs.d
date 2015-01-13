;;; Commentary:

;;; --- Summary

;;; Code:
(add-to-list 'load-path "~/.emacs.d/conf")
(load-library "packages-conf")
(fetch-my-packages)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(hl-line ((t (:background "#151515" :underline nil))))
 '(tabbar-button ((t (:inherit tabbar-default))))
 '(tabbar-modified ((t (:inherit tabbar-default :foreground "green"))))
 '(tabbar-selected ((t (:inherit tabbar-default :background "gray15" :foreground "white"))))
 '(tabbar-unselected ((t (:inherit tabbar-default))))
 '(web-mode-doctype-face ((t (:foreground "#A63A62"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#FD971F"))))
 '(web-mode-html-tag-face ((t (:foreground "#66D9EF")))))

(add-to-list 'load-path "~/.emacs.d/non-elpa")
;(load-library "flycheck-java")

(add-to-list 'load-path "~/.emacs.d/conf")
(load-library "theme-conf")
(load-library "tabbar-conf")
(load-library "ergoemacs-conf")
(load-library "editing-conf")

(add-to-list 'load-path "~/.emacs.d/conf/modes")
(load-library "c-conf")
(load-library "cc-conf")
(load-library "go-conf")
(load-library "csharp-conf")
;(load-library "text-conf")
(load-library "web-conf")
(load-library "haskell-conf")
(load-library "java-conf")

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode t)
 '(flycheck-sass-compass t)
 '(flycheck-scss-compass t)
 '(initial-scratch-message
   #(";; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with Ctrl+O,
;; then enter the text in that file's own buffer." 131 135
													   (face ergoemacs-pretty-key)
													   136 137
													   (face ergoemacs-pretty-key)))
 '(org-CUA-compatible t)
 '(org-replace-disputed-keys t)
 '(org-special-ctrl-a/e t)
 '(org-support-shift-select t)
 '(recentf-menu-before "Close")
 '(recentf-mode t)
 '(scroll-error-top-bottom t)
 '(scss-compile-at-save nil)
 '(set-mark-command-repeat-pop t))
