;;Custom Package management for Emacs
(provide 'dg-org)


(setq org-latex-listings 'minted
      org-latex-packages-alist '(("" "minted"))
      org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-default-notes-file "/home/dang/org/todo.org")
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
 '(("t" "Todo" entry (file+headline "~/org/todo.org" "Tasks")
        "* TODO %?\n  %i\n  %a")
   ("e" "Email" entry (file+headline "~/org/todo.org" "Emails")
    "* %?\nCAPTURED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n%a\n")))

