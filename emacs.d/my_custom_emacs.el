;;
;; my_custom_emacs.el for  in /home/siqual/.emacs.d
;;
;; Made by Siqual
;; Login   <siqual@T470s>
;;
;; Started on  Tue Jan 16 17:02:56 2018 Siqual
;; Last update Tue Jan 16 19:25:20 2018 Siqual
;;

(setq inhibit-startup-message t)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d \u2502" )

(setq column-number-mode t)

(require 'cc-mode)
(setq-default c-basic-offset 8)
(setq-default tab-width 8 indent-tabs-mode nil)

(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/7/")

(require 'srefactor)
(require 'srefactor-lisp)
(semantic-mode 1)
(define-key c-mode-map (kbd "C-x C-r") 'srefactor-refactor-at-point)
(define-key c++-mode-map (kbd "C-x C-r") 'srefactor-refactor-at-point)

(require 'smartparens-config)
(show-smartparens-global-mode +1)
(smartparens-global-mode 1)

(require 'yasnippet)
(yas-global-mode 1)

(load-file "~/.emacs.d/std_comment.el")
