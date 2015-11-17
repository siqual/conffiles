;;
;; init.el for  in /home/siqual
;; 
;; Made by siqual siqual
;; Login   <siqual@epitech.net>
;; 
;; Started on  Mon Nov 16 12:45:52 2015 siqual siqual
;; Last update Mon Nov 16 17:46:23 2015 siqual siqual
;;

(require 'package)
(dolist (source '(("marmelade" . "http://marmelade-repo.org/packages/")
		  ("elpa" . "http://tromey.com/elpa/")
		  ("melpa" . "http://melpa.milkbox.net/packages/")
		  ))
  (add-to-list 'package-archives source t))
(package-initialize)

;; (setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(add-to-list 'load-path "~/.emacs.d/custom")

(defalias 'yes-or-no-p 'y-or-n-p)

;; header mode
(load "std_comment.el")

(require 'linum)
(global-linum-mode t)
(setq linum-format "%3d \u2502")

(setq column-number-mode t)

(require 'cc-mode)

(setq-default c-basic-offset 4 c-default-style "stroustrup")
(setq-default tab-width 4 indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

(require 'auto-complete-clang)
(define-key c++-mode-map (kbd "C-<space>") 'ac-complete-clang)

(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(require 'flymake)
(add-hook 'find-file-hook 'flymake-find-file-hook)

;; (require 'ggtags)
;; (add-hook 'c-mode-common-hook
;; 		  (lambda ()
;; 			(when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
;; 			  (ggtags-mode 1))))

(setq next-line-add-newlines nil)
(setq require-final-newline t)

;; Javascript
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js-mode-hook 'ac-js2-mode)
(define-key js-mode-map "{" 'paredit-open-curly)
(define-key js-mode-map "}" 'paredit-close-curly-and-newline)

