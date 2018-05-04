(add-hook 'comint-exec-hook
      (lambda () (set-process-query-on-exit-flag (get-buffer-process (current-buffer)) nil)))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(setq powerline-default-separator 'arrow)
(setq powerline-default-separator 'utf-8)
(setq ns-use-srgb-colorspace nil)

