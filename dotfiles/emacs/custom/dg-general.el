;;General Configuration
(provide 'dg-general)

;;Kill the start screen
(setq inhibit-splash-screen t)

;;Set the Font to 20 For this screen
(add-to-list 'default-frame-alist
             '(font . "Hack-20"))

;;Load nicer theme
(load-theme 'cyberpunk t)
(enable-theme 'cyberpunk)
;(load-theme 'solarized t)
;(set-frame-parameter nil 'background-mode 'dark)
;(enable-theme 'solarized)



