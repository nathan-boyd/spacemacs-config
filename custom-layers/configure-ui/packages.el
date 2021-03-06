;;; packages.el --- configure-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Robert Boyd <nboyd@nboyd-ltm.internal.salesforce.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `configure-ui-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `configure-ui/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `configure-ui/pre-init-PACKAGE' and/or
;;   `configure-ui/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst configure-ui-packages
  '(spaceline))

(defun configure-ui/pre-init-spaceline ()
  (use-package spaceline
    :config (progn
      (setq ns-use-srgb-colorspace nil)
      (setq powerline-default-separator 'utf-8))))

;;; packages.el ends here
