;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'misterioso)



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

(custom-set-variables
  '(eclim-eclipse-dirs '("~/nonStandard/eclipse"))
  '(eclim-executable "~/nonStandard/eclipse/eclim"))

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

