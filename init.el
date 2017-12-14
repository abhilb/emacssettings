
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

(add-to-list 'load-path "D:/Abhilash/.emacs.d/emacs-async")

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; why say yes when y is enough
(fset 'yes-or-no-p 'y-or-n-p)


(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
		   user-emacs-directory))

(setq org-src-fontify-natively t)


(use-package pc-bufsw
  :ensure t)
(require 'pc-bufsw)
(pc-bufsw-default-keybindings)


(use-package dired+
  :ensure t
  :config (require 'dired+)
  )



(setq org-src-tab-acts-natively t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(indent-guide-global-mode t)
 '(package-selected-packages
   (quote
    (goto-chng ac-emmet goto-chg indent-guide request-deferred smartparens highlight-indentation move-text zenburn-theme yasnippet use-package treemacs solarized-theme smartscan smart-mode-line-powerline-theme pc-bufsw monokai-theme magit-popup leuven-theme jedi inf-ruby ido-vertical-mode helm git-commit flymake-ruby flycheck emmet-mode eclipse-theme dired+ darcula-theme cycle-themes counsel-projectile)))
 '(tramp-syntax (quote default) nil (tramp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
