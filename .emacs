(global-font-lock-mode 1)
(setq make-backup-files nil)
(setq default-tab-width 4)
(setq c-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(if (functionp 'tool-bar-mode) (tool-bar-mode 0))
(if (functionp 'scroll-bar-mode) (scroll-bar-mode 0))

(if (functionp 'set-frame-font) (set-frame-font "Monaco-14"))
(if (functionp 'set-fontset-font)
  (set-fontset-font
  (frame-parameter nil 'font)
  'han
  (font-spec :family "Hiragino Sans GB")))

(add-to-list 'load-path "~/.emacs.d")

(require 'sr-speedbar)
(setq speedbar-frame-parameters
  '((minibuffer)
    (width . 40)
    (border-width . 0)
    (menu-bar-lines . 0)
    (tool-bar-lines . 0)
    (unsplittable . t)
    (left-fringe . 0)))
(setq speedbar-hide-button-brackets-flag t)
(setq speedbar-show-unknown-files t)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-use-images nil)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-max-width 70)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width-console 40)

;(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq visible-bell t)
(setq default-major-mode 'text-mode)
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(global-set-key (kbd "C-2") 'set-mark-command)
(global-set-key (kbd "M-g") 'goto-line)

;; Configure flymake for Python
;(setq pylint "/usr/local/bin/epylint")
;(when (load "flymake" t)
;  (defun flymake-pylint-init ()
;    (let* ((temp-file (flymake-init-create-temp-buffer-copy
;                       'flymake-create-temp-inplace))
;           (local-file (file-relative-name
;                        temp-file
;                        (file-name-directory buffer-file-name))))
;      (list (expand-file-name pylint "") (list local-file))))
;  (add-to-list 'flymake-allowed-file-name-masks
;               '("\\.py\\'" flymake-pylint-init)))

;; Set as a minor mode for Python
;(add-hook 'python-mode-hook '(lambda () (flymake-mode)))

(require 'coffee-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-to-list 'load-path "~/.emacs.d/ruby-mode/")
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(autoload 'ruby-mode "ruby-mode" "Major mode for editing Ruby code" t)
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/solarized")
(load-theme 'solarized-dark t)
(setq solarized-termcolor 256)
(setq solarized-degrade t)
(setq solarized-bold nil)
(setq solarized-underline nil)
(setq solarized-italic nil)
(setq solarized-broken-srgb t)

(setq tramp-chunksize 500)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

(require 'highlight-chars)
(hc-toggle-highlight-trailing-whitespace t)
