(progn
  (setq url-proxy-services '(("no_proxy" . "telsis\\.local")
			     ("http" . "127.0.0.1:3128")))

  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))




;;; Automatic bootstrap for wanted packages
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(color-theme 
		      color-theme-monokai
		      zenburn-theme
		      ecb)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

)

(provide 'defaults-packages)
