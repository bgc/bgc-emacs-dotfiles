(require 'auto-complete)
;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                         (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(setq ac-set-trigger-key "TAB")


(add-to-list 'ac-modes 'js3-mode) ;;add js3-mode to list
