;;SETUP PACKAGE MANAGERS
(require 'package)
	(setq package-archives '(
		("marmalade" . "http://marmalade-repo.org/packages/")
		("org" . "http://orgmode.org/elpa/")
		("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;;ONLY IF EMACS VERSION ABOVE 24
;;(if (>= emacs-major-version 24)
;;	(progn
;;		;;Emacs 24 or later
;;	)
;;		;;Do something else for Emacs 23 or less
;;)


;; EXECUTE OS SPECIFIC ACTIONS
(cond
	((eq system-type 'windows-nt)
	;;Windows NT
	)
	((eq system-type 'darwind)
	;;OSX specific
		;;Remap meta Key to command (in PT layout, alt (option) is needed to type [] and {} )
		(setq mac-option-key-is-meta nil)
		(setq mac-command-key-is-meta t)
		(setq mac-command-modifier 'meta)
		(setq mac-option-modifier nil)
		(setq visible-bell nil)
	
	)
	((eq system-type 'gnu/linux)
	;;GNU/Linux
	)
	(t
	;;any other case
	)
)