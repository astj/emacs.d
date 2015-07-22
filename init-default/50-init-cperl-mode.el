;; .t -> perl
(add-to-list 'auto-mode-alist '("\\.\\(t\\)$" . perl-mode))

;; cperl-mode
(defalias 'perl-mode 'cperl-mode)
(require 'cperl-mode)

(setq cperl-indent-level 4
      cperl-close-paren-offset -4
      cperl-continued-statement-offset 4
      cperl-indent-parens-as-block t
      cperl-indent-subs-specially nil
      cperl-tab-always-indent t)
(add-hook 'cperl-mode-hook '(lambda () (setq indent-tabs-mode nil)))
