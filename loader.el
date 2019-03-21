(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to 'load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
   (normal-top-level-add-subdirs-to-load-path)))


(add-subdirs-to-load-path "~/Kemacs/lisp")
(add-subdirs-to-load-path "~/Kemacs/extensions")
(add-subdirs-to-load-path "~/Kemacs/themes")
(add-subdirs-to-load-path "~/.emacs.d/elpa")


(require 'basic-toolkit)
(require 'move-text)
(require 'paredit)

(require 'init-tao)
(require 'init-flycheck)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-elpy)
(require 'init-autopep8)
(require 'init-auto-save)
(require 'init-speedbar)
(require 'init-tabbar)
(require 'init-smex)
(require 'init-line-numbers)
(require 'init-mode-line)
(require 'init-startup)
(require 'init-paredit)
(require 'init-ide)
(require 'init-key)
(require 'init-dired)

;(require 'init-auto-complete)
;(require 'init-indent)
;(require 'init-eaf)
;(require 'hacker-theme)
;(require 'osss)
;(require 'init-rainbow-delimiters)

(provide 'loader)
