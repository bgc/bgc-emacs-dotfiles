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
;;(setq whitespace-style '(face empty spaces newline tabs lines-tail trailing))
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
 (global-whitespace-mode t)

;;(setq whitespace-display-mappings
       ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
  ;;    '(
    ;;    (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
    ;;    (newline-mark 10 [8629 10]) ; 10 LINE FEED
    ;;    (tab-mark 9 [8614 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「↦」
    ;;    ))

;;(setq highlight-current-line-globally t nil (highlight-current-line))
(setq highlight-current-line-whole-line t)
;;(standard-display-ascii ?\t "↦ ")
;;(standard-display-ascii ?\s "·")

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


;; only split horizontally
(setq split-height-threshold nil
	split-width-threshold 0)


(add-hook 'js-mode-hook
          (lambda ()
            ;; Scan the file for nested code blocks
            (imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)))

(set-face-attribute 'default nil :font "Ubuntu Mono" :height 143)
