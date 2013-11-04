(add-to-list 'load-path "~/jshint-mode")
(require 'flymake-jshint)
(add-hook 'javascript-mode-hook
     (lambda () (flymake-mode t)))

(add-hook 'js3-mode-hook
     (lambda () (flymake-mode t)))

 (add-hook 'js-mode-hook 'flymake-jslint-load)
  (add-hook 'js3-mode-hook 'flymake-jslint-load)
;; Turns on flymake for all files which have a flymake mode
(add-hook 'find-file-hook 'flymake-find-file-hook)
; Nice Flymake minibuffer messages
(require 'flymake-cursor)
(flymake-mode 1)
