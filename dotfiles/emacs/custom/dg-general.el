;;General Configuration
(provide 'dg-general)

;;Kill the start screen
(setq inhibit-splash-screen t)

(add-to-list 'default-frame-alist
             '(font . "Hack"))

;;20pt font (for the smaller screen)
(set-face-attribute 'default nil :height 200)

;;Load nicer theme
(load-theme 'cyberpunk t)
(enable-theme 'cyberpunk)
;(load-theme 'solarized t)
;(set-frame-parameter nil 'background-mode 'dark)
;(enable-theme 'solarized)



