;;; Custom settings
;;(require `multi-term)
;; optional: this is the evil state that evil-magit will use
;; (setq evil-magit-state 'normal)
;; optional: disable additional bindings for yanking text
;; (setq evil-magit-use-y-for-yank nil)
;;(require 'evil-magit)
(require 'evil)
(evil-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; windows-num mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'window-number)
(window-number-mode)
;;If you like to use the meta key instead of the ‘C-x C-j’ prefix, add the following:
(window-number-meta-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (when (eq system-type 'darwin) ;; mac specific settings
;;  (setq mac-option-modifier 'meta))
(setq mac-option-modifier 'super)
(define-key global-map [?\s-l] 'goto-line)



(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8)

(provide 'init-local)




