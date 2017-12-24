
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

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'seeing-is-believing)
(add-hook 'ruby-mode-hook 'seeing-is-believing)

(setq org-src-tab-acts-natively t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7bc31a546e510e6bde482ebca992e293a54cb075a0cbfb384bf2bf5357d4dee3" default)))
 '(package-selected-packages
   (quote
    (mode-icons zenburn-theme yasnippet yard-mode ws-butler web-mode use-package treemacs solarized-theme smex smartscan smartparens smart-mode-line-powerline-theme smart-forward skewer-mode seeing-is-believing request-deferred py-autopep8 pc-bufsw move-text monokai-theme magit-popup leuven-theme jedi inf-ruby indent-guide impatient-mode ido-vertical-mode highlight-indentation helm-swoop goto-chg git-commit flymake-ruby flycheck eclipse-theme dired+ diminish darcula-theme cycle-themes counsel-projectile ac-emmet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
