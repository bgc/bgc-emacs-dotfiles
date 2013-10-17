;;line number on by default
(global-linum-mode t)
(setq Linum-format "%7d ")

;;insert matching paren
(electric-pair-mode 1)

(show-paren-mode 1) ; turn on paren match highlighting
(setq show-paren-style 'expression) ; highlight entire bracket expression

(delete-selection-mode 1) ; delete seleted text when typing

;;highlight current line
(global-hl-line-mode t)
;;(global-whitespace-mode t)

(require 'whitespace)
 (setq whitespace-style '(face empty spaces newline tabs lines-tail trailing))
 (global-whitespace-mode t)
;;(setq highlight-current-line-globally t nil (highlight-current-line))
(setq highlight-current-line-whole-line t)

;;don't show startup screen
(setq inhibit-startup-screen t)


;;display path of current buffer
(setq frame-title-format
	(list (format "%s %%S: %%j " (system-name))
		'(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;;(setq-default indent-tabs-mode nil) ;; no mixed tabs and spaces
(setq tab-width 2) ;;tab width 2 spaces
(setq default-tab-width 2)



;;See also
;; `whitespace-style', `whitespace-newline' and
;;`whitespace-display-mappings'.
