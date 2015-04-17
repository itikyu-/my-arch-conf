;;; style.el --- init file 
;;; Commentary:
;;; Code:

;; カラースキーマの設定
(load-theme 'tsdh-dark t)
;; フォント設定
(set-face-attribute 'default nil
                     :family "Ricty"
                     :height 130)

;;; ファイルのフルパスをタイトルバーに表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;;; 左側行番号表示
(require 'linum)
(global-linum-mode)

;; TABのデフォルト幅
(setq default-tab-width 4)

;; 改行コードを表示
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;;; 括弧の範囲内を強調表示
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
;; 括弧の範囲色
(set-face-background 'show-paren-match-face "#800")

;;; 選択領域の色
(set-face-background 'region "#555")

;; 現在行のハイライト
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "gray0"))
    (((class color)
      (background light))
     (:background "SeaGreen" :))
    (t
     ()))
  "Used face hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode t)

;;; ツールバーを非表示
;; M-x tool-bar-mode で表示非表示を切り替えられる
(tool-bar-mode -1)

;;;;;;;;;; powerline.el
;(require 'powerline)
;(powerline-default-theme)

;; スクロールバーいらね
(scroll-bar-mode -1)

(provide 'style)
