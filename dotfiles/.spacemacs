;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; --------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and press C-c C-c to install it
     ;; --------------------------------------------------------
     ;; language
     python
     ;; sql
     markdown
     better-defaults
     c-c++
     ycmd
     rust
     go
     ;; system enhance
     osx
     auto-completion
     git
     ;; syntax-checking
     github
     ;; deft
     yaml
     ;;configlayer
     ;; chinese

     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(
                                      matlab-mode
                                      cuda-mode)

   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(
     git-gutter
     git-gutter-fringe
     evil-terminal-cursor-changer
     flx-ido
     semantic
     org-plus-contrib
     )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  ;; (defun spacemacs/add-to-hooks (fun hooks)
  ;;   "Add function to hooks"
  ;;   (dolist (hook hooks)
  ;;     (add-hook hook fun)))
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   ;; select 2 themes
   dotspacemacs-themes '(monokai
                         solarized-light)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 20
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not Used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  (setq-default rust-enable-racer t)
  
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  (setq-default dotspacemacs-configuration-layers '(auto-completion :variables auto-completion-enable-help-tooltip t
                                                    (org :variables
                                                         org-enable-github-support t)
                                                    (python :variables python-enable-yapf-format-on-save t)
                                                    ;; (chinese :variables chinese-enable-youdao-dict t)
                                                    (c-c++ :variables
                                                           c-c++-default-mode-for-headers 'c++-mode
                                                           c-c++-enable-clang-support t)
                                                    (go :variables go-use-gometalinter t
                                                        gofmt-command "goimports"
                                                        go-tab-width 2)))
  ;; additional packages
  ;; cuda-mode
  (use-package cuda-mode
    :defer t)
  
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/.deft/gtd.org" "Tasks")
           "* TODO %?\n  %i\n  %a")
          ("j" "Journal" entry (file+datetree "~/.deft/journal.org")
           "* %?\nEntered on %U\n  %i\n  %a")
          ("n" "Notes" entry (file+datetree "~/.deft/notes.org")
           "*  \tNote%?\n %U %i %a")
          ("b" "Book" entry (file+datetree "~/.deft/book.org")
           "*  \tBook%?\n %U %i %a")
          ))

  ;; language setup

  ;; go lang format
  (setq gofmt-command "goimports")
  (setq go-tab-width 2)
  
  
  (defconst my-cc-style
    '("gnu"
      (c-offsets-alist . ((innamespace . 0)))))
  (c-add-style "my-cc-style" my-cc-style)

  (add-hook 'c++-mode-hook
            (lambda ()
              ;; quick compilation
              (set (make-local-variable 'compile-command)
                   (concat "g++ -std=c++11 -Wall " buffer-file-name " && ./a.out"))
              ;; (push 'company-semantic company-backends)
              (setq company-clang-arguments '("-std=c++11"))
              (setq flycheck-clang-language-standard "c++11")
              (setq flycheck-gcc-language-standard "c++11")))
  
  (add-hook 'before-save-hook #'gofmt-before-save)
  
  ;; python flycheck
  (setq python-shell-interpreter "python")
  (setq-default python-indent-offset 2)
  (setq python-shell-prompt-detect-failure-warning nil)
  (remove-hook 'python-mode-hook 'flycheck-mode)
  (remove-hook 'c++-mode-hook 'flycheck-mode)
  (setq flycheck-check-syntax-automatically '(mode-enabled save))
  
  ;; (setq org-agenda-files (list  "~/.deft/gtd.org" "~/.deft/TODO.org" "~/.deft/journal.org"  "~/.deft/notes.org" "~/.deft/book.org"))
  ;; (setq deft-use-filename-as-title t)
  ;; (setq deft-extension "org")
  ;; (setq deft-text-mode 'org-mode)

  (global-company-mode t)
  (global-linum-mode t)
  (setq dotspacemacs-distinguish-gui-tab t)
  ;; (define-key evil-motion-state-map [C-i] 'evil-jump-forward)
  (global-set-key (kbd "C-i") 'evil-jump-forward)

  (spacemacs|disable-company eshell-mode)
  
  (spacemacs|disable-company debugger-mode)
  ;; (spacemacs|disable-company python-mode)
  ;; (spacemacs|disable-company anaconda-mode)
  ;; set up proxy
  (setenv "NO_PROXY" "127.0.0.1")
  (setenv "no_proxy" "127.0.0.1")
  (setenv "http_proxy" "")
  (setenv "https_proxy" "")
  ;; set path for tern-activity-since-command
  ;; (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  ;; (setenv "PYTHONPATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (setq evil-emacs-state-cursor '("chartreuse3 " (bar . 2)))
  ;;set python virtual env for anaconda mode
  ;; (setq python-shell-virtualenv-path "/home/q/anaconda/")
  ;; (setq python-shell-virtualenv-path "/data01/home/dongzhihong/env/")


  ;; chinese input 
  ;; (spacemacs//set-monospaced-font   "Source Code Pro" "WenQuan Micro Hei Mono" 13 15)
  (global-set-key (kbd "C-c x") 'org-capture)
  (global-set-key (kbd "C-x C-f") 'ido-find-file)
  (evil-leader/set-key (kbd "od") 'youdao-dictionary-search-at-point+)
  (evil-leader/set-key (kbd "ff") 'helm-for-files)
  (global-set-key (kbd "<f9>") 'compile)
  
  ;; (setq-default dotspacemacs-configuration-layers '(github))
  ;; set for mac
  ;; this section is set for mac osx only
  (set-face-attribute 'default nil :height 145)
  (setq multi-term-program "/bin/zsh")
  ;; (xclip-mode t)
  ;; cursor style default as bar
  ;; (setq-default cursor-type 'bar) 
  (setq evil-insert-state-cursor '("red" bar))
  ;; (setq evil-emacs-state-cursor '("SkyBlue2" bar))
  ;; (setq evil-default-cursor '("SkyBlue2" bar))
  
  ;; set mouse copy/paste
  (xterm-mouse-mode -1)
  (setq x-select-enable-clipboard t)
  ;; (setq )
  ;; config for ycmd
  (set-variable 'ycmd-server-command '("python" "/Users/dzh/github/ycmd/ycmd/"))
  (set-variable 'ycmd-extra-conf-handler 'load)
  
  ;; (setq-default yas-snippet-dirs '("~/.emacs.d/private/snippets"))
  ;; (setq-default auto-completion-private-snippets-directory "~/.emacs.d/private/snippets")
  ;; (custom-set-variables
  ;;   '(yas-snippet-dirs '("~/.emacs.d/private/snippets")))
  
  (defun expand-yasnippet-brief ()
    "Expand the yasnippet named `foobar'."
    (interactive)
      (yas-expand-snippet (yas-lookup-snippet "Brief Function")))

  ;; (defun expand-yasnippet-brief2 ()
  ;;   "Expand the yasnippet named `foobar'."
  ;;   (interactive)
  ;;   (yas-expand-snippet (yas-lookup-snippet " Function description")))

  (defun expand-yasnippet-verbose ()
    "Expand the yasnippet named `foobar'."
    (interactive)
    (yas-expand-snippet (yas-lookup-snippet "Verbose Function")))

  ;; (evil-leader/set-key (kbd "ibf") 'expand-yasnippet-brief2)
  (evil-leader/set-key (kbd "ib") 'expand-yasnippet-brief)
  (evil-leader/set-key (kbd "iv") 'expand-yasnippet-verbose)
  ;; (set-variable 'ycmd-global-config "/home/dzh/Downloads/ycmd/cpp/ycm/.ycm_exltra_conf.py")
  ;; (set-variable 'ycmd-global-config '("python" "/home/dzh/.emacs.d/contrib/ycmd/global_conf.py"))
  ;; (add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.cuh\\'" . c++-mode))
  (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
  (add-to-list 'auto-mode-alist '("\\.proto\\'" . conf-mode))
  (add-to-list 'auto-mode-alist '("\\.thrift\\'" . conf-mode))
  (add-to-list 'auto-mode-alist '("\\SConstruct\\'" . python-mode))
  (add-to-list 'auto-mode-alist '("\\BUILD\\'" . python-mode))
  (add-to-list 'auto-mode-alist '("\\.bzl\\'" . python-mode))
  (add-to-list 'auto-mode-alist '("\\.cuh\\'" . cuda-mode))

  (defconst my-cc-style
    '("cc-mode"
      (c-offsets-alist . ((innamespace . [0])))))

  (c-add-style "my-cc-mode" my-cc-style)
  (setq c-default-style '((c-mode . "my-cc-style")
                          (c++-mode . "my-cc-style")))

  ;; (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
  ;;(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))
  ;; (add-to-list 'company-c-headers-path-system "/usr/local/cuda/include/") ;
  ;; (add-to-list 'company-c-headers-path-user "/home/dzh/Downloads/caffe_video/include/")
  ;;(delete 'company-c-headers company-backends-c-mode-common)
  ;;(delete 'company-clang company-backends-c-mode-common)
  ;;(push 'company-backends company-backends-c-mode-common)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(gdb-many-windows t)
 '(global-evil-search-highlight-persist t)
 '(magit-use-overlays nil)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(evil-search-highlight-persist-highlight-face ((t (:inherit region :background "color-88")))))
