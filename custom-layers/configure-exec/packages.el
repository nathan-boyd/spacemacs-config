;;; packages.el --- configure-exec layer packages file for Spacemacs.
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
;; added to `configure-exec-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `configure-exec/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `configure-exec/pre-init-PACKAGE' and/or
;;   `configure-exec/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst configure-exec-packages
  '())

;; dont ask for confirmation when exiting while processes are running
(add-hook 'comint-exec-hook
           (lambda () (set-process-query-on-exit-flag (get-buffer-process (current-buffer)) nil)))

;;; packages.el ends here
