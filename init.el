;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; LOAD PACKAGES
(load "journal")   ;; Mode for journal entries
(load "php-mode")  ;; Major mode for editing php files
(load "mtl-mode")  ;; Major mode for editing Aeroflex MTL files

;; BEGIN ORG-MODE CUSTOMISATIONS
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
;; END ORG-MODE CUSTOMISATIONS

;; ADD MELPA PACKAGES
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; Use spaces instead of tab characters for tabs
(setq-default indent-tabs-mode nil)
