;;; packages.el --- Description -*- lexical-binding: t; -*-
;;
;; Author: sschob <https://github.com/sschob>
;; Created: Februar 05, 2021
;; Modified: Februar 05, 2021
;; Version: 0.0.1
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(provide 'packages)

(straight-override-recipe
 '(org
   :type git
   :host github
   :repo "emacs-straight/org-mode"
   :local-repo "org"
   :check-out-commit "90cf5009cbb7379d6650f44494376b11c21a31f5"
   ))

(straight-use-package 'org)

(straight-use-package 'dash)

(straight-use-package '(ox-ipynb
                        :host github
                        :repo "jkitchin/ox-ipynb"
                        :check-out-commit "a59349bb66d4f5595bc97a940d1669fe77113c8c"
                        ))

;;; packages.el ends here
