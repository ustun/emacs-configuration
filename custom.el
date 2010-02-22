
(setq comint-scroll-show-maximum-output nil)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq require-final-newline 't)
(setq x-select-enable-clipboard t)
(desktop-save-mode 1)


;; LaTeX stuff


(winner-mode 't)

;; Color Theme -- uncomment to enable them

 ;(require 'color-theme)
 ;(color-theme-charcoal-black)
 ;(color-theme-andreas)





(autoload 'ibuffer "ibuffer" "List buffers." t)

;; MATLAB related stuff

(autoload 'matlab-eei-connect "matlab-eei"
  "Connects Emacs to MATLAB's external editor interface.")

(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)

(setq matlab-indent-function nil)	; if you want function bodies indented
(setq matlab-verify-on-save-flag nil)	; turn off auto-verify on save
(defun my-matlab-mode-hook ()
  (setq fill-column 95)
  (modify-syntax-entry ?_ "w" matlab-mode-syntax-table)
  (imenu-add-to-menubar "Find"))	; where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)


;; Backups
(setq make-backup-files t		; do make backups
      backup-by-copying t		; and copy them ...
      backup-directory-alist '(("." . "~/.emacs.d/backup/")) ; ... here
      version-control t
      kept-new-versions 2
      kept-old-versions 5
      delete-old-versions t)


(ido-mode t)
(setq ido-enable-flex-matching t)

(setq w3m-use-cookies t)


(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-font-lock-mode 1) ; for all buffers

					; Default agenda file locations
(load-library "find-lisp")
(setq org-agenda-files (find-lisp-find-files "~/Dropbox/Org" "\.org"))

(put 'narrow-to-page 'disabled nil)

(put 'narrow-to-region 'disabled nil)


(load-file "~/Dropbox/Lisp/turkish-mode/turkish.el")
(load-file "~/Dropbox/Lisp/matlabemacs/matlab-load.el")
					;(require 'semanticdb-matlab)
;; enable skeleton-pair insert globally
(setq skeleton-pair t)





(add-hook 'latex-mode-hook 'flyspell-mode)


(add-hook 'edit-server-text-mode-hook 'turkish-mode)
(add-hook 'TeX-mode-hook '(lambda () (TeX-PDF-mode 1)))



(put 'upcase-region 'disabled nil)

(put 'downcase-region 'disabled nil)




					;(add-hook 'matlab-mode-hook 'color-theme-charcoal-black)
(add-hook 'matlab-mode-hook 'highlight-parentheses-mode)
					;(add-hook 'TeX-mode-hook 'color-theme-xp)


(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'TeX-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

(project-add "Wimaxofis" "~/wimax/")





(autoload 'thumbs "thumbs" "Preview images in a directory." t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)


(load-library "ack")
					;(require 'smex)
(smex-initialize)


(org-remember-insinuate)
;; you might also want to set:
;;   (setq org-agenda-skip-unavailable-files t)
;; so these warnings won't annoy the little remember-frame
;; also: I have noted infrequent problems when using ElScreen
;;  (the wrong frame might be chosen for Remember in about 10% of the cases)

(scroll-bar-mode -1)
					;(require 'highlight-parentheses)
(column-number-mode 1)
					;(mouse-avoidance-mode 'animate)


(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "|")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq ibuffer-default-sorting-mode 'major-mode)
(setq ibuffer-always-show-last-buffer t)



(setq transient-mark-mode 'on)




(setq tramp-default-method "ssh")



(add-hook 'PDFLaTeX-mode-hook 'flyspell-prog-mode)



(delete-selection-mode 1)



(yas/initialize)
(yas/load-directory "~/Dropbox/Lisp/yasnippet-0.6.1c/snippets")


(add-hook 'scala-mode-hook
          '(lambda ()
	     (define-key inferior-scala-mode-map [up] 'comint-previous-matching-input-from-input)
             (yas/minor-mode-on)))


(setq yas/my-directory "~/Dropbox/Lisp/scala-mode/contrib/yasnippet/snippets")
(yas/load-directory yas/my-directory)

(eval-when-compile (require 'cclookup))

;; set executable file and db file
(setq cclookup-program (concat cclookup-dir "/cclookup.py"))
(setq cclookup-db-file (concat cclookup-dir "/cclookup.db"))

;; to speedup, just load it on demand
(autoload 'cclookup-lookup "cclookup"
  "Lookup SEARCH-TERM in the Python HTML indexes." t)

(autoload 'cclookup-update "cclookup"
  "Run cclookup-update and create the database at `cclookup-db-file'." t)
;;----------------------------------------------------------------------



(setq browse-url-default-browser "/usr/bin/opera")



(setq default-fill-column 80)

(add-hook 'c-mode-hook 'imenu-add-menubar-index)


(autoload 'idomenu "idomenu" nil t)


(autoload 'log4j-mode "log4j-mode" "Major mode for viewing log files." t)
(add-to-list 'auto-mode-alist '("\\.log\\'" . log4j-mode))


(setq-default abbrev-mode t)
(read-abbrev-file "~/.emacs.d/abbrev_defs")
(setq save-abbrevs t)


(windmove-default-keybindings)
(setq framemove-hook-into-windmove t)
