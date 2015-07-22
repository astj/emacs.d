;refs http://d.hatena.ne.jp/tarao/20150221/1424518030
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

; place package-specific config file in .emacs.d/init/
(setq el-get-user-package-directory (locate-user-emacs-file "init"))

; package-specific but non-el-get dependent should be located at init-default
(el-get-bundle! init-loader)
(init-loader-load (locate-user-emacs-file "init-default"))

