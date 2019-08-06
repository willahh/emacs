(setq mac-command-modifier 'meta)
(setq prelude-whitespace nil)
(setq prelude-clean-whitespace-on-save nil)

(add-to-list 'package-archives
             '("gnu" . "https://elpa.gnu.org/packages/"))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; Use-package
(prelude-require-packages '(use-package))
(require 'use-package)

(defvar wlh/leader-key (concat "M-m" " "))

(load-file "~/.emacs.d/personal/theme/darkplus-theme.el")
