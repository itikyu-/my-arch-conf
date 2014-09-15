
(add-to-list 'auto-mode-alist '(".sass" . css-mode))
(add-to-list 'auto-mode-alist '(".scss" . css-mode))
(add-to-list 'auto-mode-alist '(".erb" . html-mode))

;;;;;; zencoding-mode ;;;;;
(require 'zencoding-mode)
(add-hook 'html-mode-hook 'zencoding-mode) ;; html-modeとかで自動出来にzencodingできるようにする
(add-hook 'css-mode-hook 'zencoding-mode) ;; html-modeとかで自動出来にzencodingできるようにする

(define-key zencoding-mode-keymap (kbd "C-c y") 'zencoding-expand-line)
(define-key zencoding-preview-keymap (kbd "C-c C-v") 'zencoding-preview-accept)				  
