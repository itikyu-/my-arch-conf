;;; スタートアップ非表示
(setq inhibit-startup-screen t)

;;; バックアップを残さない
(setq make-backup-files nil)
;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; TAB の表示幅。
(setq-default tab-width 4 indent-tabs-mode nil)

;;; スクロールで改行を入れない
(setq next-line-add-newlines nil)

;;; 最近使ったファイルをメニューに表示
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(setq recentf-max-saved-items 10)

;; C-x bでミニバッファにバッファ候補を表示
(iswitchb-mode t)

;; 矩形選択モード (c-spc c-enter)
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;; バッファの自動再読み込み
(global-auto-revert-mode 1)

;; 同名ファイルのバッファの識別方法をディレクトリ名にする
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; wgrep wdired
(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;; (require 'wgrep)
;; (setq wgrep-enable-key "r")
