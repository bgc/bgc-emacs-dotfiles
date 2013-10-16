;;line number on by default
(global-linum-mode t)

;;highlight current line
(global-hl-line-mode t)

;;don't show startup screen
(inhibit-startup-screen t)


;;display path of current buffer
(setq frame-title-format
	(list (format "%s %%S: %%j " (system-name))
		'(buffer-file-name "%f" (dired-directory dired-directory "%b"))))
