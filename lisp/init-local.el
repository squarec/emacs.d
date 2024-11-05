;;
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Window Number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'window-number)
;; (window-number-mode 1)

;;(require 'window-numbering)
;; (defun window-numbering-get-number-string (&optional window)
;; (let ((s (int-to-string (window-numbering-get-number window))))
;;  (propertize (concat " " s " ") 'face 'window-numbering-face)
;;))
;;(window-numbering-mode 1)

;;(evil-leader/set-key "0" 'select-window-0)
;;(evil-leader/set-key "1" 'select-window-1)
;;(evil-leader/set-key "2" 'select-window-2)
;;(evil-leader/set-key "3" 'select-window-3)
;;(evil-leader/set-key "4" 'select-window-4)
;;(evil-leader/set-key "5" 'select-window-5)
;;(evil-leader/set-key "6" 'select-window-6)
;;(evil-leader/set-key "7" 'select-window-7)
;;(evil-leader/set-key "8" 'select-window-8)
;;(evil-leader/set-key "9" 'select-window-9)


(setq winum-keymap
      (let ((map (make-sparse-keymap)))
        (define-key map (kbd "C-`") 'winum-select-window-by-number)
        (define-key map (kbd "C-²") 'winum-select-window-by-number)
        (define-key map (kbd "M-0") 'winum-select-window-0-or-10)
        (define-key map (kbd "M-1") 'winum-select-window-1)
        (define-key map (kbd "M-2") 'winum-select-window-2)
        (define-key map (kbd "M-3") 'winum-select-window-3)
        (define-key map (kbd "M-4") 'winum-select-window-4)
        (define-key map (kbd "M-5") 'winum-select-window-5)
        (define-key map (kbd "M-6") 'winum-select-window-6)
        (define-key map (kbd "M-7") 'winum-select-window-7)
        (define-key map (kbd "M-8") 'winum-select-window-8)
        map))

(evil-leader/set-key "0" 'winum-select-window-0-or-10)
(evil-leader/set-key "1" 'winum-select-window-1)
(evil-leader/set-key "2" 'winum-select-window-2)
(evil-leader/set-key "3" 'winum-select-window-3)
(evil-leader/set-key "4" 'winum-select-window-4)
(evil-leader/set-key "5" 'winum-select-window-5)
(evil-leader/set-key "6" 'winum-select-window-6)
(evil-leader/set-key "7" 'winum-select-window-7)
(evil-leader/set-key "8" 'winum-select-window-8)

(require 'winum)

(defun winum-assign-9-to-calculator-8-to-flycheck-errors ()
  (cond
    ((equal (buffer-name) "*Calculator*") 9)
    ((equal (buffer-name) "*Flycheck errors*") 8)))

(defun winum-assign-0-to-neotree ()
  (when (string-match-p (buffer-name) ".*\\*NeoTree\\*.*") 10))

(add-to-list 'winum-assign-functions #'winum-assign-9-to-calculator-8-to-flycheck-errors)
(add-to-list 'winum-assign-functions #'winum-assign-0-to-neotree)

(set-face-attribute 'winum-face nil :weight 'bold)

(setq window-numbering-scope            'global
      winum-reverse-frame-list          nil
      winum-auto-assign-0-to-minibuffer t
      winum-assign-func                 'my-winum-assign-func
      winum-auto-setup-mode-line        t
      winum-format                      " %s "
      winum-mode-line-position          1
      winum-ignored-buffers             '(" *which-key*")
      winum-ignored-buffers-regexp      '(" \\*Treemacs-.*"))

(winum-mode)
;;;     (add-hook 'vterm-mode-hook 'evil-emacs-state)


;; For scrolling set
(setq scroll-margin 2
      scroll-conservatively 10000)

(tab-bar-mode 1)


(provide 'init-local)
