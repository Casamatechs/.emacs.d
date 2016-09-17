;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'misterioso)

;; No bars pls
(menu-bar-mode -1)
(tool-bar-mode -1)


(global-set-key (kbd "M-1") "|")
(global-set-key (kbd "M-2") "@")
(global-set-key (kbd "M-3") "#")
(global-set-key (kbd "M-º") "\\")
(global-set-key (kbd "M-ç") "}")
(global-set-key (kbd "M-+") "]")

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

(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))

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

