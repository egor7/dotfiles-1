(rc/ensure-package-installed 'smex)
(rc/ensure-package-installed 'ido-ubiquitous)

(ido-mode 1)
(ido-everywhere 1)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
