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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode t)
 '(ergoemacs-keyboard-layout "programmer-dv")
 '(flycheck-clang-language-standard "c++14")
 '(global-auto-complete-mode t)
 '(org-CUA-compatible nil)
 '(recentf-menu-before nil)
 '(recentf-mode t)
 '(shift-select-mode nil))

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
(load-library "c++-conf")
(load-library "go-conf")
(load-library "csharp-conf")
;(load-library "text-conf")
(load-library "web-conf")
(load-library "haskell-conf")
(load-library "java-conf")
(load-library "sass-conf")

;;; init.el ends here
