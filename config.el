;;; config.el --- Description -*- lexical-binding: t; -*-
;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:



(provide 'config)

(require 'org)
(require 'ox-beamer)
(require 'org-attach)
(require 'ox-latex)
(require 'ox-ipynb)

(org-babel-do-load-languages 'org-babel-load-languages
                             '((emacs-lisp . t)
                               (latex . t)
                               (python . t)))

;;; config.el ends here
