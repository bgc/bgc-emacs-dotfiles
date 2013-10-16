(require 'org)

(setq org-todo-keywords
	'((sequence "TODO" "IN-PROGRESS" "WAITING" "NEEDS-TEST" "FEEDBACK" "VERIFY" "|" "CANT-REPLICATE" "DONE" "/DELEGATED/" "+DEPRECATED+" "CLOSED")))
 (setq org-todo-keywords (quote ((sequence "TODO" "IN-PROGRESS" "WAITING" "NEEDS-TEST" "FEEDBACK" "VERIFY" "|" "CANT-REPLICATE" "DONE" "/DELEGATED/" "+DEPRECATED+" "CLOSED"))))


;; auto add time stamp to todo when done
(setq org-log-done 'time)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; EXECUTE OS SPECIFIC ACTIONS
(cond
	((eq system-type 'windows-nt)
	;;Windows NT

(setq org-default-notes-file "c:/Users/gcosta/Dropbox/notes.org")

(setq org-directory "c:/Users/gcosta/Dropbox/orgmode")
(setq org-agenda-files (quote (
			      "c:/Users/gcosta/Dropbox/orgmode/index.org"
			      "c:/Users/gcosta/Dropbox/orgmode/agenda.org"
			      "c:/Users/gcosta/Dropbox/orgmode/compras.org"
			      "c:/Users/gcosta/Dropbox/orgmode/personalTODO.org"
			      "c:/Users/gcosta/Dropbox/orgmode/workTODO.org"
			      "c:/Users/gcosta/Dropbox/orgmode/workAgenda.org"
			      "c:/Users/gcosta/Dropbox/orgmode/notes.org"
			      "c:/Users/gcosta/Dropbox/orgmode/workTODOClosed.org")))
(setq org-mobile-directory "c:/Users/gcosta/Dropbox/orgmode/MobileOrg")
(setq org-mobile-inbox-for-pull (concat org-directory "/index.org"))
(setq org-mobile-inbox-for-pull (expand-file-name "from-mobile.org" org-directory))
	)
	((eq system-type 'darwind)
	;;OSX specific
;;	(org-agenda-files (quote ("c:/Users/gcosta/Dropbox/orgmode/index.org" "c:/Users/gcosta/Dropbox/orgmode/agenda.org" "c:/Users/gcosta/Dropbox/orgmode/compras.org" "c:/Users/gcosta/Dropbox/orgmode/personalTODO.org" "c:/Users/gcosta/Dropbox/orgmode/workTODO.org" "c:/Users/gcosta/Dropbox/orgmode/workAgenda.org" "c:/Users/gcosta/Dropbox/orgmode/notes.org" "c:/Users/gcosta/Dropbox/orgmode/workTODOClosed.org")))
;;(org-default-notes-file "c:/Users/gcosta/Dropbox/notes.org")

;; MobileOrg
;;(setq org-directory "c:/Users/gcosta/Dropbox/orgmode")
;;(setq org-agenda-files (list "c:/Users/gcosta/Dropbox/orgmode/workTODO.org"
;;                             "c:/Users/gcosta/Dropbox/orgmode/personalTODO.org"
  ;;                           "c:/Users/gcosta/Dropbox/orgmode/compras.org"))
;;(setq org-mobile-directory "c:/Users/gcosta/Dropbox/orgmode/MobileOrg")
;;(setq org-mobile-inbox-for-pull (concat org-directory "/index.org"))
;;(setq org-mobile-inbox-for-pull (expand-file-name "from-mobile.org" org-directory))


	)
	((eq system-type 'gnu/linux)
	;;GNU/Linux
	)
	(t
	;;any other case
	)
)





 (setq org-capture-use-agenda-date t)
 (setq org-enforce-todo-checkbox-dependencies t)
 (setq org-enforce-todo-dependencies t)
 (setq org-from-is-user-regexp nil)
 (setq org-tag-alist (quote (("work" . 119) ("personal" . 112) ("other" . 108) ("deprecated" . 100) ("Discos" . 0) ("AudioDigital" . 0) ("AudioAnalogico" . 0))))
 (setq org-todo-interpretation (quote sequence))




(setq org-log-done 'time)
