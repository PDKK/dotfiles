;; .emacs
;; Code here influenced by
;; https://github.com/technomancy/better-defaults
;; http://whattheemacsd.com/
;; http://cxwangyi.wordpress.com/2010/08/21/using-cedet-with-emacs/
;; http://alexott.net/en/writings/emacs-devenv/EmacsCedet.html
;; http://www.logilab.org/blogentry/173886
;; http://stackoverflow.com/questions/63421/using-emacs-as-an-ide
;; http://stackoverflow.com/questions/5800317/emacs-as-a-c-programming-ide-configuration
;; http://truongtx.me/2013/03/10/emacs-setting-up-perfect-environment-for-cc-programming/

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


(add-to-list 'auto-mode-alist '(".*\\.ts\\'" . typescript-mode))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(global-ede-mode nil)
;; ede java root
;;(ede-java-root-project "TestGradle"
;;         :file "~/workspace/testGradle/build.gradle"
;;         :srcroot '("src" "test"))
