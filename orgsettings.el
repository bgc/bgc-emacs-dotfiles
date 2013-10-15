(require 'org)

(setq org-todo-keywords
	'((sequence "TODO" "IN-PROGRESS" "FEEDBACK" "VERIFY" "|" "CANT-REPLICATE" "DONE" "DELEGATED" "DEPRECATED" "CLOSED")))

;; auto add time stamp to todo when done
(setq org-log-done 'time)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)