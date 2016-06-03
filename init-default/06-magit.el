(el-get-bundle! dash)
(el-get-bundle! with-editor :type git :url "git@github.com:magit/with-editor.git")
(el-get-bundle! magit)

(global-set-key (kbd "C-x g") 'magit-status)

