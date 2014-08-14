;;; キーバインド

(define-key global-map (kbd "M-?") 'help-for-help)        ; ヘルプ
(define-key global-map (kbd "M-C-g") 'grep)               ; grep
(define-key global-map (kbd "C-S-k") (kbd "C-u 0 C-k"))   ; カーソルから行頭まで削除

;; window移動
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
