(el-get-bundle elpa:typescript-mode)

(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
