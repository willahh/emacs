(defun backward-kill-word-or-region (&optional arg)
  "Calls `kill-region' when a region is active and
`backward-kill-word' otherwise. ARG is passed to
`backward-kill-word' if no region is active."
  (interactive "p")
  (if (region-active-p)
      ;; call interactively so kill-region handles rectangular selection
      ;; correctly (see https://github.com/syl20bnr/spacemacs/issues/3278)
      (call-interactively #'kill-region)
    ;; (backward-kill-word arg)
    (paredit-backward-kill-word)))

(defun wlh/delete-window ()
  "Close tab if multiple tabs are present in window, close window
  if there is just one tab."
  (interactive)

  (if (< 1 (count-windows))
      (delete-window)
    (delete-frame))
  
  ;; (if ((boundp 'tabbar-mode) tabbar-mode)
  ;;     (if (eql (length (tabbar-tabs tabbar-current-tabset)) 1)
  ;;         (condition-case nil
  ;;             (delete-window)
  ;;           (message "ok"))
  ;;       (tabbar-close-tab))
  ;;   (if (< 1 (count-windows))
  ;;       (delete-window)
  ;;     (delete-frame)))
  )

(defun xah-new-empty-buffer ()
  "Create a new empty buffer."
  (interactive)
  (let ((-buf (generate-new-buffer "untitled")))
    (switch-to-buffer -buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)))

;; Switch and rebalance windows when splitting
;; https://github.com/hrsp/dotfiles/blob/master/emacs.d/configuration.org
(defun hrs/split-window-below-and-switch ()
  "Split the window horizontally, then switch to the new pane."
  (interactive)
  (split-window-below)
  (other-window 1))

(defun hrs/split-window-right-and-switch ()
  "Split the window vertically, then switch to the new pane."
  (interactive)
  (split-window-right)
  (other-window 1))

(defun window-half-height ()
  "From: https://www.emacswiki.org/emacs/HalfScrolling."
  (max 1 (/ (1- (window-height (selected-window))) 2)))

(defun scroll-up-half ()
  "Scroll up half."
  (interactive)
  (scroll-up (window-half-height)))

(defun scroll-down-half ()
  "Scroll down half."
  (interactive)
  (scroll-down (window-half-height)))

(defun wlh/revert-buffer ()
  "Save the current position to tmp, then call 'revert-buffer.
then goto-char(position)"
  (interactive)
  (defvar tmp)
  (setq tmp (point))
  (revert-buffer t t)
  (goto-char tmp)
  (kill-local-variable 'tmp))
