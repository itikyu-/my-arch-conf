;;;;;;;;;;;;;;;;;;; ruby関連 ;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-modeの関連付け

(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
 
;; Ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; ri-emacs
(setq ri-ruby-script "~/.emacs.d/elisp/ri-emacs.rb")
(autoload 'ri "~/.emacs.d/elisp/ri-ruby.el" nil t)
(add-hook 'ruby-mode-hook '(lambda ()
							(local-set-key 'f1 'ri)
							(local-set-key 'f4 'ri-ruby-show-args)
							))

;; ruby-electric
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))

; (require 'rcodetools)

;;;; rsense　rsense-homeは環境に依存！！！
;; (setq rsense-home "/usr/local/rsense-0.3") 
(setq rsense-home "/opt/rsense-0.3") 
(load "rsense")
;; C-c .で補完
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))
