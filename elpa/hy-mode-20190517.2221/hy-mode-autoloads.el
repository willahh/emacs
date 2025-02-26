;;; hy-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "hy-base" "hy-base.el" (0 0 0 0))
;;; Generated autoloads from hy-base.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-base" '("hy--")))

;;;***

;;;### (autoloads nil "hy-font-lock" "hy-font-lock.el" (0 0 0 0))
;;; Generated autoloads from hy-font-lock.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-font-lock" '("hy-font-lock-")))

;;;***

;;;### (autoloads nil "hy-mode" "hy-mode.el" (0 0 0 0))
;;; Generated autoloads from hy-mode.el

(autoload 'hy-insert-pdb "hy-mode" "\
Import and set pdb trace at point.

\(fn)" t nil)

(autoload 'hy-insert-pdb-threaded "hy-mode" "\
Import and set pdb trace at point for a threading macro.

\(fn)" t nil)

(autoload 'hy-shell-start-or-switch-to-shell "hy-mode" "\


\(fn)" t nil)

(autoload 'hy-shell-eval-buffer "hy-mode" "\
Send the buffer to the shell, inhibiting output.

\(fn)" t nil)

(autoload 'hy-shell-eval-region "hy-mode" "\
Send highlighted region to shell, inhibiting output.

\(fn)" t nil)

(autoload 'hy-shell-eval-current-form "hy-mode" "\
Send form containing current point to shell.

\(fn)" t nil)

(autoload 'hy-shell-eval-last-sexp "hy-mode" "\
Send form containing the last s-expression to shell.

\(fn)" t nil)

(autoload 'inferior-hy-mode "hy-mode" "\
Major mode for Hy inferior process.

\(fn)" t nil)

(autoload 'hy-mode "hy-mode" "\
Major mode for editing Hy files.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-mode" '("hy-" "company-hy" "run-hy" "inferior-hy-mode-syntax-table")))

;;;***

;;;### (autoloads nil "hy-shell" "hy-shell.el" (0 0 0 0))
;;; Generated autoloads from hy-shell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "hy-shell" '("run-hy" "hy-shell--")))

;;;***

;;;### (autoloads nil nil ("hy-mode-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hy-mode-autoloads.el ends here
