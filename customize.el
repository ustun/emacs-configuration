(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(comint-completion-addsuffix t)
 '(comint-completion-autolist t)
 '(comint-input-ignoredups t)
 '(comint-move-point-for-output nil)
 '(comint-scroll-show-maximum-output nil)
 '(comint-scroll-to-bottom-on-input t)
 '(debug-on-error nil)
 '(dired-listing-switches "-ahlX")
 '(ecb-compile-window-height 6)
 '(ecb-layout-window-sizes nil)
 '(ecb-options-version "2.32")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(eshell-scroll-to-bottom-on-output (quote this))
 '(grep-command "grep -niH *.m -e ")
 '(grep-template "grep <C> -niH -e <R> <F>")
 '(isearch-allow-scroll t)
 '(matlab-indent-function-body nil)
 '(matlab-shell-command-switches (quote ("-nodesktop -nosplash")))
 '(matlab-show-mlint-warnings nil)
 '(menu-bar-mode t)
 '(mlint-programs (quote ("/data/matlab08b/bin/glnxa64/mlint")))
 '(mlint-verbose t)
 '(org-export-author-info nil)
 '(org-export-creator-info nil)
 '(org-export-latex-classes (quote (("article" "\\documentclass[12pt]{article}
\\usepackage[utf8]{inputenc}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{hyperref}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[12pt]{report}
\\usepackage[utf8]{inputenc}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{hyperref}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[12pt]{book}
\\usepackage[utf8]{inputenc}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{hyperref}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))
 '(org-export-latex-tables-column-borders t)
 '(org-todo-keywords (quote ((sequence "TODO" "IN PROGRESS" "DONE"))))
 '(read-file-name-completion-ignore-case t)
 '(recentf-mode t)
 '(recentf-save-file "~/.emacs.d/.recentf")
 '(scala-mode-feature:electric-newline-before-closing-bracket t)
 '(scala-mode-feature:electric-on-per-default t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(yas/prompt-functions (quote (yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt)))
 '(yas/use-menu (quote abbreviate)))



; If OS X, Menlo font; else Dejavu
(if (eq system-type 'darwin)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "unknown" :family "Menlo")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 109 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

)


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 109 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
