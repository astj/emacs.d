(el-get-bundle scala-mode2)

; ensime
(el-get-bundle! elpa:ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
