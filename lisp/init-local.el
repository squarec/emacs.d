;;; Custom settings
;;(require `multi-term)
;; optional: this is the evil state that evil-magit will use
;; (setq evil-magit-state 'normal)
;; optional: disable additional bindings for yanking text



;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; EVIL related
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'init-evil)

(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)
(evil-leader/set-key "a" 'evil-numbers/inc-at-pt)
(evil-leader/set-key "x" 'evil-numbers/dec-at-pt)

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
(when (eq system-type 'darwin) ;; mac specific settings
  ;;(setq mac-option-modifier 'meta)
  (setq mac-option-modifier 'super))

(define-key global-map [?\s-l] 'goto-line)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Language Support
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8)

(provide 'init-local)



