;; ~/.emacs.d/init.el -- This file (root)
;; ~/.emacs.d/customize.el -- Customizations via customize
;; ~/.emacs.d/custom.el -- Manual customizations
;; ~/.emacs.d/keybindings.el -- Keybindings

;; Start ELPA first

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;; Prepare the load path for other external packages

(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
    (let* ((my-lisp-dir "~/Dropbox/Lisp/")
	   (default-directory my-lisp-dir))
      (setq load-path (cons my-lisp-dir load-path))
      (normal-top-level-add-subdirs-to-load-path)))

;; Loadpaths for some other packages

(add-to-list 'load-path "/data/matlab08b/java/extern/EmacsLink")
(setq cclookup-dir "~/Dropbox/OtherLisp/cclookup")
(setq load-path (cons cclookup-dir load-path))

;; Define locations of some other files
(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
(setq-default save-place t) ;; activate it for all buffers
(setq savehist-additional-variables    ;; also save...
      '(search-ring regexp-search-ring)    ;; ... my search entries
      savehist-file "~/.emacs.d/savehist") ;; keep my home clean
(savehist-mode t)                      ;; do customization before activate
(setq smex-save-file "~/.emacs.d/smex.save") ;; keep my ~/ clean

;; Load the required packages

(defun require-all (packages)
  (mapcar #'require packages))

(require-all '(
	       uniquify
	       color-theme
	       ido
	       saveplace
	       project-root
	       saveplace
	       scala-mode-auto
	       yasnippet
	       smex
	       highlight-parentheses
	       smart-tab
	       browse-kill-ring
	       blank-mode
	       dired-isearch
	       htmlize
	       less
	       magit
	       shell-current-directory
	       texdrive
	       textmate
	       url
	       wtf
	       ))


;; Load non-packaged 3rd party functions
(load-file "~/Dropbox/Lisp/functions3rdparty.el")

;; Load the customization file (those via customize)
(setq custom-file "~/.emacs.d/customize.el")
(load custom-file)

;; Load manual customization file
(setq manual-custom-file "~/.emacs.d/custom.el")
(load manual-custom-file)

;; Load keybindings file
(setq keybindings-file "~/.emacs.d/keybindings.el")
(load keybindings-file)


