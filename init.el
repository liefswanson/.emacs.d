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
 '(company-echo-common ((t (:foreground "#FF80F4"))))
 '(company-preview-common ((t (:inherit company-preview :foreground "white"))))
 '(company-scrollbar-bg ((t (:inherit company-tooltip :background "dim gray"))))
 '(company-tooltip-selection ((t (:inherit company-tooltip :background "dim gray"))))
 '(hl-line ((t (:background "#151515" :underline nil))))
 '(popup-face ((t (:background "#161a1f" :foreground "white"))))
 '(popup-isearch-match ((t (:background "dim gray"))))
 '(popup-menu-mouse-face ((t (:background "dim gray" :foreground "white"))))
 '(popup-menu-selection-face ((t (:background "dim gray" :foreground "white"))))
 '(popup-scroll-bar-background-face ((t (:background "dim gray"))))
 '(popup-tip-face ((t (:background "161a1f" :foreground "#F92672"))))
 '(tabbar-button ((t (:inherit tabbar-default))))
 '(tabbar-default ((t (:inherit variable-pitch :background "dim gray" :foreground "white" :height 0.8))))
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
 '(ensime-completion-style nil)
 '(ergoemacs-handle-ctl-c-or-ctl-x (quote only-C-c-and-C-x))
 '(ergoemacs-keyboard-layout "programmer-dv")
 '(ergoemacs-mode t)
 '(ergoemacs-theme-options
   (quote
	((backspace-is-back off)
	 (save-options-on-exit off))))
 '(flycheck-clang-language-standard "c++14")
 '(flycheck-csharp-omnisharp-curl-executable "curl")
 '(global-auto-complete-mode t)
 '(initial-scratch-message
   #(";; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with Ctrl+O,
;; then enter the text in that file's own buffer." 131 135
													   (face ergoemacs-pretty-key)
													   136 137
													   (face ergoemacs-pretty-key)))
 '(minimap-always-recenter nil)
 '(minimap-recenter-type (quote middle))
 '(minimap-update-delay 0.4)
 '(minimap-width-fraction 0.13)
 '(minimap-window-location (quote right))
 '(omnisharp-server-executable-path
   "/home/lief/OmniSharpServer/OmniSharp/bin/Debug/Omnisharp.exe")
 '(org-CUA-compatible t)
 '(org-special-ctrl-a/e t)
 '(org-support-shift-select t)
 '(recentf-menu-before "Close")
 '(recentf-mode t)
 '(scroll-error-top-bottom t)
 '(set-mark-command-repeat-pop t)
 '(shift-select-mode t))

;(add-to-list 'load-path "~/.emacs.d/non-elpa")
;(load-library "flycheck-java")

(add-to-list 'load-path "~/.emacs.d/conf")
(load-library "faces-conf")
(load-library "theme-conf")
;(load-library "tabbar-conf")
(load-library "ergoemacs-conf")
(load-library "editing-conf")
(load-library "bindings-conf")


(add-to-list 'load-path "~/.emacs.d/conf/modes")
(load-library "c-conf")
(load-library "cc-conf")
(load-library "csharp-conf")
(load-library "c++-conf")
(load-library "d-conf")
(load-library "go-conf")
(load-library "python-conf")
;(load-library "text-conf")
(load-library "web-conf")
(load-library "js-conf")
(load-library "haskell-conf")
(load-library "java-conf")
(load-library "sass-conf")
(load-library "rust-conf")
(load-library "typescript-conf")

(modify-syntax-entry ?_ "w" python-mode-syntax-table)

;;; init.el ends here
