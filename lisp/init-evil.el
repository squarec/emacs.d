(require 'evil)

(require 'evil-leader)

;; Note: You should enable global-evil-leader-mode before you enable evil-mode,
;; otherwise evil-leader won’t be enabled in initial buffers (*scratch*, *Messages*, …).
(global-evil-leader-mode)
(evil-mode 1)

(provide 'init-evil)
