;;line number on by default
(global-linum-mode t)
(setq Linum-format "%7d ")


;;highlight current line
(global-hl-line-mode t)
(global-whitespace-mode t)
;;(setq highlight-current-line-globally t nil (highlight-current-line))
(setq highlight-current-line-whole-line t)
;;don't show startup screen
(setq inhibit-startup-screen t)


;;display path of current buffer
(setq frame-title-format
	(list (format "%s %%S: %%j " (system-name))
		'(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


;;See also
;; `whitespace-style', `whitespace-newline' and
;;`whitespace-display-mappings'.
