(el-get-bundle go-mode)

(autoload 'go-mode "go-mode" nil t)

(el-get-bundle! go-autocomplete)

(el-get-bundle! go-flymake)

(el-get-bundle! go-eldoc)
(add-hook 'go-mode-hook 'turn-on-eldoc-mode)
(add-hook 'go-mode-hook 'go-eldoc-setup)
