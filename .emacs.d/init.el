(setq default-tab-width 4)
(setq tab-width 4)
(setq nxml-child-indent 4)
(setq-default indent-tabs-mode nil)
(global-linum-mode t)
(global-visual-line-mode 120)
(setq column-number-mode t)
(global-set-key (kbd "<backtab>") 'un-indent-by-removing-4-spaces)
(setq word-wrap t)
;; (setq-default auto-fill-function 'do-auto-fill)
(setq-default fill-column 100)
(defun un-indent-by-removing-4-spaces ()
  "remove 4 spaces from beginning of of line"
  (interactive)
  (save-excursion
    (save-match-data
      (beginning-of-line)
      ;; get rid of tabs at beginning of line
      (when (looking-at "^\\s-+")
        (untabify (match-beginning 0) (match-end 0)))
      (when (looking-at "^    ")
        (replace-match "")))))
(setq linum-format "%5d \u2502 ")
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(require 'auto-complete)
(global-auto-complete-mode t)
(defun auto-complete-mode-maybe ()
  "No maybe for you. Only AC!"
  (unless ( or (minibufferp (current-buffer)) (eq major-mode 'shell-mode))
    (auto-complete-mode 1)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" "d6ccdc72bfbbde033f700df20c15f415f3e6b53246d169dd3ddd8ca3af657c6b" "b4fd44f653c69fb95d3f34f071b223ae705bb691fb9abaf2ffca3351e92aa374" default)))
 '(package-selected-packages
   (quote
    (go-mode rjsx-mode json-mode magit web-mode paganini-theme multiple-cursors folding coffee-mode ac-racer ac-emmet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'dark-laptop)
;;(load-theme 'paganini)
(defun kill-other-buffers ()
      "Kill all other buffers."
      (interactive)
      (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))
(setq js-indent-level 2)
(setq shell-auto-complete-mode 0)
(add-to-list 'load-path "/home/dev/.emacs.d/elpa/emmet-mode-20161113.2158/")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(require 'multiple-cursors)
(global-set-key (kbd "C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-b") 'mc/mark-previous-like-this)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(global-set-key (quote [f5]) 'goto-line)
(display-time-mode 1)
(add-hook 'before-save-hook 'delete-trailing-whitespace-except-markdown-files)
(defun delete-trailing-whitespace-except-markdown-files ()
  (when (not (string= (file-name-extension buffer-file-name) "md"))
    (delete-trailing-whitespace)))
(setq-default truncate-lines t)
;(load "~/ws/scripts/emacs-lisp/osm-commit.el")
(remove-hook 'comint-output-filter-functions
             'comint-postoutput-scroll-to-bottom)
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'bash-completion)
(bash-completion-setup)
(autoload 'bash-completion-dynamic-complete
  "bash-completion"
  "BASH completion hook")
(add-hook 'shell-dynamic-complete-functions
  'bash-completion-dynamic-complete)
(load "~/.emacs.d/load-all.el")
