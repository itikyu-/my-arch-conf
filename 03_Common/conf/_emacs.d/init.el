;;; init.el --- init file 
;;; Commentary:
;;; Code:

;; ろーどぱす設定用関数の定義
(defun add-to-load-path (&rest paths)
  (let (path)
	(dolist (path paths paths)
	  (let ((default-directory
			  (expand-file-name (concat user-emacs-directory path))))
		(add-to-list 'load-path default-directory)
		(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
			(normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" )  ; 引数ディレクトリとそのサブディレクトリをload-pathに追加


(fset 'package-desc-vers 'package--ac-desc-version)
;; melpaの設定
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; emacs標準機能の設定
(load "style")							;emacsの見た目の設定
(load "embedded")						;emacsのデフォルトの挙動の変更


;; 移動 検索 置換
(load "file-move")
(load "grep-conf")                      ;
(load "migemo-conf")                    ;

;; 開発支援系（共通）
(load "auto-complete-conf")      ;auto-complete yasnippet flymake(flycheck)
(load "yasnippet-conf")          ;
(load "flymake-conf")            ;
(load "open-junk-file-conf")

;; 開発支援（各言語）
(load "ruby")                           ;ruby block electric ri rsense
(load "html-css")                       ;js2-mode zencoding
(load "JavaScript")                     ;
(load "Shell")                          ;

;; 操作拡張
(load "helm-conf")                      ;
(load "evil-conf")                      ;
(load "global-key-map")					;global-key-map

(require 'all-ext)
(require 'multiple-cursors)
(require 'magit)

(require 'mozc)
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)

(provide 'init)
;;; init.el ends here
