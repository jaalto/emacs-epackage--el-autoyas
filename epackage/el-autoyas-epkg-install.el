(autoload 'el-autoyas-expand-maybe "el-autoyas" "" t)

(defun el-autoyas-epkg-enable  ()
  "Enable el-autoyas.el"
  (when (fboundp 'yas/minor-mode)
    (require 'el-autoyas nil t)
    (set (make-local-variable 'yas/fallback-behavior)
	 '(apply el-autoyas-expand-maybe))
    (yas/minor-mode 1)))

(add-hook 'emacs-lisp-mode-hook 'el-autoyas-epkg-enable)

(provide 'el-autoyas-elisp-epkg-install)
