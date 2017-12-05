;; http://blog.shibayu36.org/entry/2017/04/02/193000

(el-get-bundle! jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(el-get-bundle! virtualenvwrapper)
(el-get-bundle! robert-zaremba/auto-virtualenvwrapper)
(add-hook 'python-mode-hook #'auto-virtualenvwrapper-activate)
