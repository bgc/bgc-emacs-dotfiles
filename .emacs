;;SETUP PACKAGE MANAGERS
(require 'package)
	(setq package-archives '(
		("marmalade" . "http://marmalade-repo.org/packages/")
		("org" . "http://orgmode.org/elpa/")
		("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;;UTF-8
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)


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



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-source-path (quote ((#("c:/Users/gcosta/Documents/workspace/pspd.be/public/st/fe.pspd.cb.2013.06" 0 72 (help-echo "Mouse-2 toggles maximizing, mouse-3 displays a popup-menu")) "Whitelabel") ("c:/Users/gcosta/Documents/workspace/pspd.be/public/st/fe.pspd.2013.03" "Tryix") ("c:/Users/gcosta/Documents/workspace/pspd.be/public/st" "FrontEnds") ("c:" "c:") ("c:/Users/gcosta/Documents/workspace/pspd.be.dis/public/st/fe.cb.disney.2013.09" "Disney")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load "~/emacsdots/gui.el")
(load "~/emacsdots/acmode.el")
(load "~/emacsdots/orgsettings.el")
(load "~/emacsdots/js3mode.el")
(load "~/emacsdots/ecbmode.el")
(load "~/emacsdots/tabbarmode.el")
