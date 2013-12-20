;; .emacs

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'defaults-packages)
(require 'defaults-general)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-switches "-u")
 '(ecb-options-version "2.40"))

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)


;; Some defaults  
(global-ede-mode t)
(semantic-mode 1)
(ido-mode t)
(setq ido-enable-flex-matching t)

(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(require 'color-theme)
(require 'color-theme-monokai)
(require 'zenburn-theme)
(require 'ecb)
(require 'ecb-autoloads)



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
