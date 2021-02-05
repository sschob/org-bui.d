;;; package --- init.el
;;;
;;;
;;; Code:
(provide 'init.el)
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(load-file (format "%s/packages.el" user-emacs-directory))
(load-file (concat user-emacs-directory "config.el"))

;; load it if it exists
(let ((project-settings (format "%s/../project_init.el" user-emacs-directory)))
  (when (file-exists-p project-settings)
    (load-file project-settings)))

(provide 'init);;; init.el ends here
