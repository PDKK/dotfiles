(progn
  ;; Save point position between sessions
  (require 'saveplace)
  (setq-default save-place t)
  (setq save-place-file (expand-file-name ".places" user-emacs-directory))
  (setq ecb-layout-name "leftright1")
  (setq ecb-compile-window-height 12)

;;; auto complete mod
;;; should be loaded after yasnippet so that they can work together
  (require 'auto-complete-config)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
  (ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
  (ac-set-trigger-key "TAB")
  (ac-set-trigger-key "<tab>")

  (defun my-c-mode-cedet-hook ()
    (add-to-list 'ac-sources 'ac-source-gtags)
    (add-to-list 'ac-sources 'ac-source-semantic))
  (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)
  )

(provide 'defaults-general)
