(require 'package)

(when (not(require 'auto-virtualenv nil :noerror))
  (message "install auto-virtualenv now...")
  (setq url-http-attempt-keepalives nil)
  (package-refresh-contents)
  (package-install 'auto-virtualenv))

(when (not(require 'yasnippet nil :noerror))
  (message "install yasnippet now...")
  (setq url-http-attempt-keepalives nil)
  (package-refresh-contents)
  (package-install 'yasnippet))

(when (not (require 'company-jedi nil :noerror))
  (message "install company-jedi now...")
  (setq url-http-attempt-keepalives nil)
  (package-refresh-contents)
  (package-install 'company-jedi))

(when (not (require 'flycheck nil :noerror))
  (message "install flycheck now...")
  (setq url-http-attempt-keepalives nil)
  (package-refresh-contents)
  (package-install 'flycheck))

(when (not (require 'py-autopep8 nil :noerror))
  (message "install autopep8 now...")
  (setq url-http-attempt-keepalives nil)
  (package-refresh-contents)
  (package-install 'py-autopep8))

(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
(setq elpy-rpc-backend "jedi")
(elpy-enable)
(add-hook 'python-mode-hook 'elpy-mode)

(provide 'init-elpy)

