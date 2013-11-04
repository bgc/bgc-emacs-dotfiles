(require 'tabbar-ruler)

 ;; Add a buffer modification state indicator in the tab label, and place a
 ;; space around the label to make it looks less crowd.
(defadvice tabbar-buffer-tab-label (after fixup_tab_label_space_and_flag activate)
	(setq ad-return-value
				(if (and (buffer-modified-p (tabbar-tab-value tab))
								 (buffer-file-name (tabbar-tab-value tab)))
						(concat " M " (concat ad-return-value " "))
					(concat " " (concat ad-return-value " ")))))
 ;; Called each time the modification state of the buffer changed.
(defun ztl-modification-state-change ()
	(tabbar-set-template tabbar-current-tabset nil)
	(tabbar-display-update))
 ;; First-change-hook is called BEFORE the change is made.
(defun ztl-on-buffer-modification ()
	(set-buffer-modified-p t)
	(ztl-modification-state-change))
(add-hook 'after-save-hook 'ztl-modification-state-change)
 ;; This doesn't work for revert, I don't know.
 ;;(add-hook 'after-revert-hook 'ztl-modification-state-change)
(add-hook 'first-change-hook 'ztl-on-buffer-modification)
(customize-set-variable 'tabbar-separator (quote (0.4)))

;;(tabbar-mode)
(setq tabbar-ruler-global-tabbar t) ; If you want tabbar(tabbar-mode)
;; keybindings
(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)
(global-set-key [C-M-left] 'tabbar-backward-group)
(global-set-key [C-M-right] tabbar-forward-group)


;; customizations for tabbar mode
;;(setq tabbar-background-color "#959A79") ;; the color of the tabbar background
;;(custom-set-faces
 ;;'(tabbar-default ((t (:inherit variable-pitch :background "#959A79" :foreground "black" :weight bold))))
 ;;'(tabbar-button ((t (:inherit tabbar-default :foreground "dark red"))))
 ;;'(tabbar-button-highlight ((t (:inherit tabbar-default))))
 ;;'(tabbar-highlight ((t (:underline t))))
 ;;'(tabbar-selected ((t (:inherit tabbar-default :background "#95CA59"))))
 ;;'(tabbar-separator ((t (:inherit tabbar-default :background "#95CA59"))))
 ;;'(tabbar-unselected ((t (:inherit tabbar-default)))))
