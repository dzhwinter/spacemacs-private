;;; packages.el --- configlayer Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq configlayer-packages
    '(
      ;; package names go here
      xclip
      discover-my-major
      helm-github-stars
      deft
      ))

;; List of packages to exclude.
(setq configlayer-excluded-packages '())

(defun configlayer/init-xclip ()
  (use-package xclip
    :defer t
    ))
(defun configlayer/init-discover-my-major ()
  (use-package discover-my-major
    :defer t
    :init
    (progn
      (evil-leader/set-key (kbd "mhm") 'discover-my-major)
      (evilify makey-key-mode makey-key-mode-get-key-map ))))

(defun configlayer/init-helm-github-stars ()
  (use-package helm-github-stars
    :defer t
    :config
    (progn
      (setq helm-github-stars-username "dzhwinter")
      (setq helm-github-stars-cache-file "~/.emacs.d/.cache/hgs-cache"))))
(defun configlayer/post-init-deft ()
  (setq deft-use-filter-string-for-filename t)
  (evil-leader-set-key-mode 'deft-mode
                            "mq" 'quit-window))
;; For each package, define a function configlayer/init-<package-name>
;;
;; (defun configlayer/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
