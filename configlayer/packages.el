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
      org-octopress
      which-key
      ;; smart-compile
      ))

;; List of packages to exclude.
(setq configlayer-excluded-packages '())

(defun configlayer/init-xclip ()
  (use-package xclip
    :defer t
    :init
    (defun copy-to-clipboard ()
      "Copies selection to x-clipboard."
      (interactive)
      (if (display-graphic-p)
          (progn
            (message "Yanked region to x-clipboard!")
            (call-interactively 'clipboard-kill-ring-save)
            )
        (if (region-active-p)
            (progn
              (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
              (message "Yanked region to clipboard!")
              (deactivate-mark))
          (message "No region active; can't yank to clipboard!")))
      )

    (defun paste-from-clipboard ()
      "Pastes from x-clipboard."
      (interactive)
      (if (display-graphic-p)
          (progn
            (clipboard-yank)
            (message "graphics active")
            )
        (insert (shell-command-to-string "xsel -o -b"))
        )
      )

    ;; (progn
    ;;   (unless window-system
    ;;     (defun xclip-cut-function (text &optional push)
    ;;       (with-temp-buffer
    ;;         (insert text)
    ;;         (call-process-region (point-min) (point-max) "xclip" nil 0 nil "-i" "-selection" "clipboard")))
    ;;     (defun xclip-paste-function()
    ;;       (let ((xclip-output (shell-command-to-string "xclip -o -selection clipboard")))
    ;;         (unless (string= (car kill-ring) xclip-output)
    ;;           xclip-output ))
    ;;       ;; (setq interprogram-cut-function 'xclip-cut-function)
    ;;       ;; (setq interprogram-paste-function 'xclip-paste-function)
    ;;       )))
    ;; :config
    (xclip-mode t)
    ;; (evil-leader/set-key (kbd "o y") 'xclip-cut-function)
    ;; (evil-leader/set-key (kbd "o p") 'xclip-paste-function)
    (evil-leader/set-key "o y" 'copy-to-clipboard)
    (evil-leader/set-key "o p" 'paste-from-clipboard)
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

(defun configlayer/init-org-octopress ()
  (use-package org-octopress
    :init
    (progn
      (evilify org-octopress-summary-mode org-octopress-summary-mode-map)
      (add-hook 'org-octopress-summary-mode-hook
                '(lambda () (local-set-key (kbd "q") 'bury-buffer)))
      (setq org-octopress-directory-top       "~/4gamers.cn/source")
      (setq org-octopress-directory-posts     "~/4gamers.cn/source/_posts")
      (setq org-octopress-directory-org-top   "~/4gamers.cn/source")
      (setq org-octopress-directory-org-posts "~/4gamers.cn/source/blog")
      (setq org-octopress-setup-file          "~/4gamers.cn/setupfile.org")
      )))
;; (defun configlayer/init-smart-compile ()
;;   (use-package smart-compile
;;     :init
;;     (progn
;;       )))
;; (defun configlayer/post-init-deft ()
;;   (use-package deft
;;     :defer t
;;     :config
;;     (progn
;;       (setq deft-use-filter-string-for-filename t)
;;       (evil-leader-set-key-mode 'deft-mode
;;                                 "mq" 'quit-window))))
;; For each package, define a function configlayer/init-<package-name>
;;
;; (defun configlayer/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
