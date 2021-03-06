;;; diredfl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "diredfl" "diredfl.el" (0 0 0 0))
;;; Generated autoloads from diredfl.el

(autoload 'diredfl-mode "diredfl" "\
Enable additional font locking in `dired-mode'.

If called interactively, enable Diredfl mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'diredfl-global-mode 'globalized-minor-mode t)

(defvar diredfl-global-mode nil "\
Non-nil if Diredfl-Global mode is enabled.
See the `diredfl-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `diredfl-global-mode'.")

(custom-autoload 'diredfl-global-mode "diredfl" nil)

(autoload 'diredfl-global-mode "diredfl" "\
Toggle Diredfl mode in all buffers.
With prefix ARG, enable Diredfl-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Diredfl mode is enabled in all buffers where
`(lambda nil (when (derived-mode-p 'dired-mode) (diredfl-mode)))' would do it.
See `diredfl-mode' for more information on Diredfl mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "diredfl" '("diredfl-")))

;;;***

(provide 'diredfl-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; diredfl-autoloads.el ends here
