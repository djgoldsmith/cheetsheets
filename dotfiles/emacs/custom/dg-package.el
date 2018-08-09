;;Custom Package management for Emacs
(provide 'dg-package)

;;Add packages
(add-to-list 'package-archives
                     '("melpa" . "http://melpa.org/packages/"))
;(add-to-list 'package-archives
;		     '("org" . "http://orgmode.org/elpa/"))



(package-initialize)

;;Our List of packages to install
(setq dg-packages
      '(color-theme-solarized
	markdown-mode
	htmlize
	cyberpunk-theme
	)
      )

;; refresh package list if it is not already available
(when (not package-archive-contents) (package-refresh-contents))

;; install packages from the list that are not yet installed
(dolist (pkg dg-packages)
    (when (and (not (package-installed-p pkg)) (assoc pkg package-archive-contents))
        (package-install pkg)))
