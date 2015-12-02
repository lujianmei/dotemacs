
;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(setq user-emacs-directory "~/dotemacs/")

(let ((minver "23.3"))
  (when (version<= emacs-version "23.1")
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version<= emacs-version "24")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))


;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-utils)

;;----------------------------------------------------------------------------
;; Start init customized files
;;----------------------------------------------------------------------------

(require 'better-default)
(require 'init-mac)

(provide 'init)
;;; init.el ends here

