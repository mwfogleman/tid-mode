;;; tid-mode.el --- tid-mode is an Emacs major mode for editing TiddlyWiki .tid files.

;;; Commentary:
;; Hosted at https://github.com/mwfogleman/tid-mode.

;;; Code:

(defun tid-p ()
  "Check whether or not a buffer's file is a .tid file."
  (and
   (> (length (buffer-file-name)) 4)
   (string-equal (substring (buffer-file-name) -4) ".tid")))

(defun tid-time ()
  "Update .tid metadata to reflect the modification time."
  (when (tid-p)
      (save-excursion
	(goto-char (point-min))
	(search-forward "modified: ")
	(beginning-of-line)
	(kill-line)
	(insert (format-time-string "modified: %Y%m%d%H%M%S%3N")))))

(defun tid-save ()
  "Allow `tid-mode' to run the function `tid-time' when contents are written."
  (add-hook 'write-contents-hooks 'tid-time))

(define-derived-mode tid-mode text-mode "TW"
   "A major mode for editing TiddlyWiki5 (.tid) files."
   (setq tid-mode-hook nil)
   (add-hook 'tid-mode-hook 'turn-on-orgstruct)
   (add-hook 'tid-mode-hook 'subword-mode)
   (add-hook 'tid-mode-hook 'tid-save))

(add-to-list 'auto-mode-alist '("\\.tid\\'" . tid-mode))

(provide 'tid-mode)

;;; tid-mode.el ends here
