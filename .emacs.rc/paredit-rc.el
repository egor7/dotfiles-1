(rc/ensure-package-installed 'paredit)

(defun rc/turn-on-paredit ()
  (interactive)
  (paredit-mode 1))

(add-hook 'emacs-lisp-mode-hook 'rc/turn-on-paredit)
(add-hook 'clojure-mode-hook    'rc/turn-on-paredit)
(add-hook 'lisp-mode-hook       'rc/turn-on-paredit)
(add-hook 'scheme-mode-hook     'rc/turn-on-paredit)