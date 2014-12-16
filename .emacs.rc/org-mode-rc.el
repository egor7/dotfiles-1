(rc/require 'org-cliplink)

(global-set-key (kbd "C-c a l") 'org-agenda-list)
(global-set-key (kbd "C-c a s") 'org-search-view)
(global-set-key (kbd "C-x p i") 'org-cliplink)

(setq org-agenda-files (list "~/Documents/Personal/Tasks.org"
                             "~/Documents/Personal/Imported.org"
                             "~/Documents/Personal/Archive.org"))

(defun rc/org-comment (&optional arg)
  (interactive "p")
  (kmacro-exec-ring-item (quote ([3 33 return 134217730 32 2] 0 "%d")) arg))

(global-set-key (kbd "C-x p c") 'rc/org-comment)

(defvar rc/autopull-lock nil)

(defun rc/autopull-changes ()
  (interactive)
  (when (not rc/autopull-lock)
    (setq rc/autopull-lock t)
    (async-shell-command "git pull")))

(defun rc/autocommit-changes ()
  (interactive)
  (async-shell-command "git add -u && git commit -m \"Autocommit $(date +%s)\" && git push origin master"))