(global-set-key [S-tab] 'smart-tab)

(global-set-key [C-tab] 'next-buffer)
(global-set-key (kbd "s-w") 'kill-buffer)


(global-set-key [C-S-iso-lefttab] 'previous-buffer)
(global-set-key "\M-g" 'goto-line)
(global-set-key [backtab] 'other-window)
(global-set-key [C-next] 'scroll-other-window)
(global-set-key [C-prior] 'scroll-other-window-down)
(global-set-key [f2] 'save-buffer)

(global-unset-key [f1])

(global-set-key [f1] 'volatile-kill-buffer)
(global-set-key [M-f1] 'idomenu)

(global-set-key [f5] 'speedbar)
(global-set-key [f7] 'my-save-and-compile)
(global-set-key [f7] 'compile)
(global-set-key [f6] 'other-window)
(global-set-key [C-f6] 'comment-or-uncomment-region-or-line)

(global-set-key [M-f12] 'calendar)
(global-set-key [M-f9] 'kill-some-buffers)
(global-set-key [C-f4] 'kill-current-buffer)
(global-set-key (kbd "s-E") ;; open emacs init file
		(lambda()(interactive)(find-file "~/.emacs.d/custom.el")))

(global-set-key (kbd "s-K") ;; open emacs keybindings file
		(lambda()(interactive)(find-file "~/.emacs.d/keybindings.el")))

(windmove-default-keybindings 'meta)
(windmove-default-keybindings 'super)
(global-set-key (kbd "S-M-<right>") 'other-frame)
(global-set-key (kbd "S-M-<left>") 'other-frame)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key "\C-x\C-g" 'ido-find-file-in-tag-files)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)



(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


(global-set-key (kbd "C-c p g")       'project-root-grep)
(global-set-key (kbd "C-c p a")       'project-root-ack)
(global-set-key (kbd "C-c p C-x C-f") 'project-root-find-file)

(local-set-key "\M-\C-g" 'org-plot/gnuplot)
(global-set-key (kbd "C-c j") 'join-line)


(global-set-key (kbd "<M-prior>") 'previous-error)
(global-set-key (kbd "<M-next>")  'next-error)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(global-set-key "" (quote direddeneme))
(global-set-key (quote [Scroll_Lock]) 'scroll-lock-mode)


(global-set-key [(C-mouse-4)] 'previous-buffer)
(global-set-key [(C-mouse-5)] 'next-buffer)


(global-set-key "\C-ch" 'cclookup-lookup)

;; Turn on the menu bar for exploring new modes
(global-set-key (kbd "C-<f11>") 'menu-bar-mode)


(global-set-key (kbd "s-w") 'volatile-kill-buffer)

(define-key dired-mode-map "o" 'dired-launch-command)

(define-key global-map "\C-c\C-v" 'comment-or-uncomment-region)

(global-set-key [M-return] 'textmate-semicolon-and-next-line)

;; kill whole line with C-; (because ; is close to k)
(global-set-key (kbd "C-;") 'kill-whole-line)

(global-set-key (kbd "s-;") 'comment-or-uncomment-region-or-line)


(global-set-key "\C-ci" 'ido-goto-symbol) ; or any key you see fit


(define-key dired-mode-map (kbd "C-s") 'dired-isearch-forward)
(define-key dired-mode-map (kbd "C-r") 'dired-isearch-backward)
(define-key dired-mode-map (kbd "ESC C-s") 'dired-isearch-forward-regexp)
(define-key dired-mode-map (kbd "ESC C-r") 'dired-isearch-backward-regexp)

(global-set-key (kbd "<menu>") 'smart-tab)


(setq mac-option-modifier 'super) ; sets the Option key as Super
(setq mac-command-modifier 'meta) ; sets the Command key as Meta

