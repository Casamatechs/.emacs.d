;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'misterioso)

;; No bars pls
(menu-bar-mode -1)
(tool-bar-mode -1)


(desktop-save-mode 1)
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(require 'darcula-theme)
;; Eclipse Emacs
;(require 'eclim)
;(global-eclim-mode)
;;Autocomplete
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
;(require 'ac-emacs-eclim-source)
;(ac-emacs-eclim-config)

;; ECLIM

(add-to-list 'load-path "~/emacs-eclim/")
(require 'eclim)
(global-eclim-mode)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

;;; matlab-settings --- some matlab-mode settings
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
 (add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
 (setq matlab-indent-function t)
(setq matlab-shell-command "matlab")

(setq matlab-shell-command "/Applications/MATLAB_R2016a.app/bin/matlab")
(setq matlab-shell-command-switches (list "-nodesktop"))


;;; matlab-settings.el ends here

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (scala-mode use-package matlab-mode emacs-eclim darcula-theme auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
