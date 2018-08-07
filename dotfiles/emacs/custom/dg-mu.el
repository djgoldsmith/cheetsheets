;;General Configuration
(provide 'dg-mu)

;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

;;location of my maildir
(setq mu4e-maildir (expand-file-name "~/Maildir/work"))
(setq mu4e-sent-folder "/Sent Items")
      ;; mu4e-sent-messages-behavior 'delete ;; Unsure how this should be configured
(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-trash-folder "/Deleted Items")

;;command used to get mail
;; use this for testing
;;(setq mu4e-get-mail-command "true")
;; use this to sync with mbsync
(setq mu4e-get-mail-command "mbsync work")
(setq mu4e-update-interval 300)
;;rename files when moving
;;NEEDED FOR MBSYNC
(setq mu4e-change-filenames-when-moving t)

;; SENDINNG MAIL
(require 'smtpmail)


;; Server name: smtp.office365.com
;; Port: 587
;; Encryption method: STARTTLS

;; something about ourselves
;; I don't use a signature...
(setq
 user-mail-address "aa9863@coventry.ac.uk"
 user-full-name  "Daniel Goldsmith"
 ;; message-signature
 ;;  (concat
 ;;    "Foo X. Bar\n"
 ;;    "http://www.example.com\n")
)


;;(setq send-mail-function 'smtpmail-send-it);

;;'(smtpmail-smtp-server "localhost")
;;'(smtpmail-smtp-service 1025))

(setq message-send-mail-function 'message-send-mail-with-sendmail)


;; (setq mu4e-sent-messages-behavior 'delete)

;; the headers to show in the headers list -- a pair of a field
;; and its width, with `nil' meaning 'unlimited'
;; (better only use that for the last field.
;; These are the defaults:
(setq mu4e-headers-fields
    '( (:human-date          .  12)    ;; alternatively, use :human-date
       (:flags         .   6)
       (:maildir       . 10)
       (:from          .  22)
       (:subject       .  nil))) ;; alternatively, use :thread-subject

;;store org-mode links to messages
(require 'org-mu4e)
;;store link to message if in header view, not to header query
(setq org-mu4e-link-query-in-headers-mode nil)

