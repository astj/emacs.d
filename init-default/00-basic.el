;; i luv utf8
(prefer-coding-system 'utf-8)

; show eol
(setq eol-mnemonic-dos "(CRLF)"
      eol-mnemonic-mac "(CR)"
      eol-mnemonic-unix "(LF)")

; show whitespace
(when (boundp 'show-trailing-whitespace) (setq-default show-trailing-whitespace t))
(defface my-face-b-1 '((t (:background "red"))) nil)
(defface my-face-b-2 '((t (:background "blue"))) nil)
(defface my-face-u-1 '((t (:underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("　" 0 my-face-b-1 append)
     ("\t" 0 my-face-b-2 append)
     ("[ ]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks
          '(lambda ()
             (if font-lock-mode
                 nil
               (font-lock-mode t))) t)

; use C-h
(global-set-key "\C-h" 'delete-backward-char)

; highlight )
(show-paren-mode t)

; use y-n
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

(setq make-backup-files nil) ; stop creating backup~ files
