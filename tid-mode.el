  "If called in a tiddler file, this function updates the metadata to
  reflect the modification time."
  (interactive)
  (when
      (and
       (> (length (buffer-file-name)) 4)
       (string-equal (substring (buffer-file-name) -4) ".tid"))
      (save-excursion
	(goto-char (point-min))
	(search-forward "modified: ")
	(beginning-of-line)
	(kill-line)
	(insert (format-time-string "modified: %Y%m%d%H%M%S%3N")))))

