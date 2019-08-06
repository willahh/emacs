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

;; ;; ---------------- Backward delete char C-h
;; (global-set-key (kbd "C-h") 'backward-delete-char)
;; (define-key prog-mode-map (kbd "C-h") 'backward-delete-char)
;; (define-key php-mode-map (kbd "C-h") 'backward-delete-char)
;; (define-key nxml-mode-map (kbd "C-h") 'backward-delete-char)
;; (define-key lisp-mode-map (kbd "C-h") 'paredit-backward-delete)
;; (define-key emacs-lisp-mode-map (kbd "C-h") 'paredit-backward-delete)
;; (define-key helm-map (kbd "C-h") 'paredit-backward-delete)

;; ;; Kill
;; (define-key web-mode-map (kbd "C-k") 'wlh/web-mode-kill-sexp)


;; ;; undo-tree
;; (global-set-key (kbd "M-z") 'undo-tree-undo)
;; (global-set-key [(meta shift z)] 'undo-tree-redo)


;; Muti cursor
(use-package multiple-cursors
  :bind (("ı" . mc/mark-next-lines))
  )

;; (prelude-require-packages '(multiple-cursors))
