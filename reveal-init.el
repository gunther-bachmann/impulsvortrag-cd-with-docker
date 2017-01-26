(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives
;;              '("marmalade" .  "https://marmalade-repo.org/packages/"))

(package-initialize)

(setq package-selected-packages
      '(
    ox-reveal
    ))

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package package-selected-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)
(require 'ox-reveal)
(setq org-reveal-root "./reveal.js")
