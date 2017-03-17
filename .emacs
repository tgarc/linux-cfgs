(package-initialize)
(setq package-enable-at-startup nil)

;; only allow one theme enabled at a time
(defun disable-all-themes ()
  "disable all active themes."
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(defadvice load-theme (before disable-themes-first activate)
  (disable-all-themes))
;;

(load-theme 'zenburn t)

(require 'autopair)
(require 'auto-complete)
(require 'auto-complete-config)
;;(require 'rw-hunspell)
(require 'buffer-move)
(require 'fringe)
(require 'ein) ;; emacs ipython notebook
(require 'hungry-delete)
(require 'android-mode)
(require 'jabber-autoloads)
(require 'tramp)
(require 'org)
(require 'w3m)
(require 'ace-window)
(require 'avy)
(require 'sr-speedbar)
(require 'xcscope)
(require 'projectile)

;; ace-jump/avy {
(global-set-key (kbd "C-c SPC") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-w") 'ace-window)
(global-set-key (kbd "s-W") 'ace-swap-window)
;; }

;; w3 {
(setq browse-url-browser-function 'w3m-goto-url-new-session)
(setq w3m-home "https://github.com/tgarc")

(defun w3m-open-site (site)
  "Opens site in new w3m session with 'http://' appended"
  (interactive
   (list (read-string "Enter website address(default: w3m-home):" nil nil w3m-home-page nil )))
  (w3m-goto-url-new-session
   (concat "http://" site)))
;; }

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Web dev stuff
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)
(add-hook 'html-mode-hook 'jinja2-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(android-mode-sdk-dir "~/android-studio/sdk")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-color "#657b83")
 '(custom-safe-themes
   (quote
    ("b06aaf5cefc4043ba018ca497a9414141341cb5a2152db84a9a80020d35644d1" "9dae95cdbed1505d45322ef8b5aa90ccb6cb59e0ff26fef0b8f411dfc416c552" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "146d24de1bb61ddfa64062c29b5ff57065552a7c4019bee5d869e938782dfc2a" default)))
 '(fci-rule-color "#383838")
 '(foreground-color "#657b83")
 '(global-ede-mode t)
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(jabber-account-list
   (quote
    (("toemossgarcia@gmail.com"
      (:password . "tranc3add1ct")))))
 '(magit-use-overlays nil)
 '(semantic-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))

;; Keyboard macros
;; [

;; ]

;;
;; Latex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)

(defun turn-on-outline-minor-mode ()
(outline-minor-mode 1))

(add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode)
(add-hook 'latex-mode-hook 'turn-on-outline-minor-mode)
(setq outline-minor-mode-prefix (kbd "C-c C-o")) ; Or something else

;; 
;; End Latex

;; Python
;; [

;; IPython
(setq
 python-shell-buffer-name "IPython"
 python-shell-interpreter "ipython"
 ;; python-shell-interpreter-args "--colors=nocolor";;"--pylab" "--gui=gtk --pylab=gtk"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n"
)


;; jedi for python
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:setup-keys t)

;; ]

;; some global settings
;; [

;; enable spell check for text documents
(add-hook 'text-mode-hook 'flyspell-mode)

;; set C-x k to kill buffer across all clients if using emacsclient
(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (when server-buffer-clients
              (local-set-key (kbd "C-x k") 'server-edit))))

;;; Shut up compile saves
(setq compilation-ask-about-save nil)
;;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))

(ido-mode t)
(column-number-mode t)
(fringe-mode 0)
(setq make-backup-files nil)

(setq-default fill-column 80)

(windmove-default-keybindings)
(setq windmove-wrap-around t )

(add-hook 'prog-mode-hook #'auto-complete-mode)
(global-auto-complete-mode t)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(setq ispell-program-name "hunspell")
(global-auto-revert-mode t) ; auto-revert any files that have changed on disk

;; indentation
(setq tab-stop-list (number-sequence 4 120 4))
(transient-mark-mode t)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(show-paren-mode t)
(setq default-tab-width 4)

;; (setq xclip-select-enable-clipboard t)
;; (xclip-mode 1)

;; Hide the menus
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)

;; shorten yes or no questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; proper window labeling
(when window-system
  (setq frame-title-format '(buffer-name "%f" ("%b - Emacs"))))
;; ]

;; Custom Functions
;; [
;; 
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(or (fboundp 'old-delete-window)
    (fset 'old-delete-window (symbol-function 'delete-window)))

;; adaptively deletes a window or frame. Useful for simplifying emacsclient
;; usage
(defun delete-window (&optional window)
  "Remove WINDOW from the display.  Default is `selected-window'.
If WINDOW is the only one in its frame, then `delete-frame' too."
  (interactive)
  (save-current-buffer
    (setq window  (or window  (selected-window)))
    (select-window window)
    (if (one-window-p t) (delete-frame) (old-delete-window (selected-window)))))

(defun my-indent-region (N)
  (interactive "p")
  (if mark-active
      (progn (indent-rigidly (min (mark) (point)) (max (mark) (point)) (* N 4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

(defun my-unindent-region (N)
  (interactive "p")
  (if mark-active
      (progn (indent-rigidly (min (mark) (point)) (max (mark) (point)) (* N -4))
             (setq deactivate-mark nil))
    (self-insert-command N)))

;; switch back easily to the minibuffer
(defun switch-to-minibuffer-window ()
  "switch to minibuffer window (if active)"
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window))))

(global-set-key (kbd "M-.") 'projectile-find-tag)
;;
;; ] End custom functions

;; Key Bindings
;; [

;; windows
(when window-system (global-set-key (kbd "C-x C-c") 'ask-before-closing))
(global-set-key (kbd "C-S-h ") 'enlarge-window)
(global-set-key (kbd "C-S-l ") 'shrink-window)
(global-set-key (kbd "C-S-j ") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-k ") 'shrink-window-horizontally)

;; copy paste
(global-set-key (kbd "C-S-w") 'clipboard-kill-region)
(global-set-key (kbd "M-S-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-S-y") 'clipboard-yank)

;; backwards yank
(global-set-key "\M-Y"  (lambda () (interactive) (yank-pop -1)) )

;; navigation bindings

(global-set-key (kbd "<f5>") (lambda () (interactive) (revert-buffer nil t)) ) 

(global-set-key (kbd "M-N")  (lambda () (interactive) (scroll-up 4)) )
(global-set-key (kbd "M-P")  (lambda () (interactive) (scroll-down 4)) )

(global-set-key (kbd "M-n")  (lambda () (interactive) (forward-paragraph)) )
(global-set-key (kbd "M-p")  (lambda () (interactive) (backward-paragraph)) )

(global-set-key (kbd "C-S-n") (lambda () (interactive) (scroll-up 1)))
(global-set-key (kbd "C-S-p") (lambda () (interactive) (scroll-down 1)))

;; hungry delete
(global-set-key (kbd "C-<backspace>") 'hungry-delete-backward)
(global-set-key (kbd "C-d") 'hungry-delete-forward)

(global-set-key (kbd "C-M-S-n") (lambda () (interactive) (scroll-other-window-down -1)))
(global-set-key (kbd "C-M-S-p") (lambda () (interactive) (scroll-other-window-down 1)))

(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-k") 'kill-buffer)

(global-set-key (kbd "C-\\") 'switch-to-previous-buffer)
(global-set-key (kbd "C-<iso-tab>") 'next-buffer)
(global-set-key (kbd "C-S-<iso-lefttab>") 'previous-buffer)


(global-set-key (kbd "M-RET") 'switch-to-minibuffer-window)

(global-set-key (kbd "C->") 'my-indent-region)
(global-set-key (kbd "C-c >") 'my-indent-region)
(global-set-key (kbd "C-<") 'my-unindent-region)
(global-set-key (kbd "C-c <") 'my-unindent-region)

(global-set-key (kbd "C-c l") 'goto-line)

;; ] end key bindings

;; emacs ELPA sources
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-archive-enable-alist '(("melpa" deft magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
