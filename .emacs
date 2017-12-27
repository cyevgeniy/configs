;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(defun insert-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
                   ((not prefix) "%d.%m.%Y")
                   ((equal prefix '(4)) "%Y-%m-%d")
                   ((equal prefix '(16)) "%A, %d. %B %Y")))
          (system-time-locale "de_DE"))
      (insert (format-time-string format))))

;; For melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp" )
;;set key bindings for navigation and show lineumbers
;;(global-linum-mode t)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "C-;") 'kill-whole-line)

;(global-set-key (kbd "<tab>") 'tab-to-tab-stop)
(global-set-key (kbd "C-c b") 'kill-this-buffer)
(global-set-key (kbd "C-c x") 'kill-emacs)
(global-set-key (kbd "<f11>") 'dired)

;;set keys for navigation between windows
(global-set-key (kbd "C-c i") 'windmove-up)
(global-set-key (kbd "C-c k") 'windmove-down)
(global-set-key (kbd "C-c j") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)

;;some bindings from ErgoEmacs
(subword-mode +1)
(global-set-key (kbd "M-e") 'subword-backward-kill)
(global-set-key (kbd "M-r") 'subword-kill)
(global-set-key (kbd "M-u") 'subword-backward)
(global-set-key (kbd "M-o") 'subword-forward)
(global-set-key (kbd "C-k") 'scroll-up-command)
(global-set-key (kbd "C-i") 'scroll-down-command)
(global-set-key (kbd "M-f") 'delete-char)
(global-set-key (kbd "M-d") 'delete-backward-char)
(global-set-key (kbd "C-l") 'forward-sexp)
(global-set-key (kbd "C-j") 'backward-sexp)
(global-set-key (kbd "M-m") 'next-buffer)
(global-set-key (kbd "M-n") 'previous-buffer)
(global-set-key (kbd "M-;") 'delete-window)
(global-set-key (kbd "M-1") 'split-window-below)
(global-set-key (kbd "M-2") 'split-window-right)
;;(global-set-key (kbd "<backspace>") 'ignore)
(global-set-key (kbd "M-c") 'newline)
(global-set-key (kbd "M-g") 'beginning-of-visual-line)
(global-set-key (kbd "M-h") 'end-of-visual-line)

;;Beginning/end of visual line is better at M-9/M-0
(global-set-key (kbd "M-9") 'beginning-of-buffer)
(global-set-key (kbd "M-0") 'end-of-buffer)

(global-set-key (kbd "C-r") 'goto-line)

;; replace selected text when yank
(delete-selection-mode 1)

;;(require 'monokai-theme);
;;(setq monokai-theme-is-global t)



;; insert current date
(global-set-key (kbd "M-b") 'insert-date)

;; Toggle evil-mode
;;(global-set-key (kbd "<f7>") 'evil-mode)

;;set width of offset for JavaScript code
;;(setq js-indent-level 2)


;;(global-set-key (kbd "<return>") 'ignore)
;;autocomplete
   ;; (add-to-list 'load-path "~/.emacs.d")    ; This may not be appeared if you have already added.
;;    (require 'auto-complete-config)
;;    (add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/ac-dict")
;;    (ac-config-default)


;;autoclose brackets
;;(electric-pair-mode 1)


;;Don't create *Messages* buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;;Project manager
;;(require 'sr-speedbar)
;;(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

;;save buffer to F2
(global-set-key (kbd "<f2>") 'save-buffer)

;;for scrolling
;;(setq scroll-conservatively 50)
;;(setq scroll-margin 4)

;;disable toolbar, menu and scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving

;;Use spaces instead tabs
(setq-default indent-tabs-mode nil)

;;turn on ido mode( better "file - open" menu)
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
;;Set listing in ido-mode vertical
;;(setq ido-separator "\n")


;;for opening remote files via ssh
;;(require 'tramp)
;;(setq tramp-default-method "plink")
;;(set-default 'tramp-auto-save-directory "C:/Users/!!!!username!!!!!/AppData/Local/Temp")

;;highlight brackets
(show-paren-mode 1)

;;enable whitespace-mode
(global-set-key (kbd "<f1>") 'global-whitespace-mode)

;;(electric-indent-mode 1)
;;enable visual-line-mode
(global-visual-line-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (tango)))
 '(custom-safe-themes
   (quote
    ("a1493957ee779057acdc4c337133f217dd7b2edfdeeffed903ba2f16246f665a" default)))
 '(inhibit-startup-screen t)
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (clojure-mode helm ox-twbs web-mode markdown-mode org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight normal :height 130 :width normal :foundry "outline" :family "Courier New")))))

;; Options -> Set default font
;;(add-to-list 'default-frame-alist '(font . "Consolas-12"))
;;(set-default-font "Consolas-12")

;;set width of tab
(setq tab-stop-list (number-sequence 4 30 4))

(put 'dired-find-alternate-file 'disabled nil)

;;Set abbreviation mode always on
;(setq default-abbrev-mode t)

;; Tell emacs where to read abbrev
;; devinitions from
(setq abbrev-file-name
        "~/.emacs.d/abbrev_defs")


;;customize status bar
;; use setq-default to set it for /all/ modes
;;this part is from "http://emacs-fu.blogspot.com/2011/08/customizing-mode-line.html"
;; (setq-default  mode-line-format
;;   (list
;;     ;; the buffer name; the file name as a tool tip
;;     '(:eval (propertize "%b " 'face 'font-lock-keyword-face
;;         'help-echo (buffer-file-name)))

;;     ;; relative position, size of file
;;     "["
;;     (propertize "%p" 'face 'font-lock-constant-face) ;; % above top
;;     "/"
;;     (propertize "%I" 'face 'font-lock-constant-face) ;; size
;;     "] "

;;     ;; the current major mode for the buffer.
;;     "["

;;     '(:eval (propertize "%m" 'face 'font-lock-string-face
;;               'help-echo buffer-file-coding-system))
;;     "] "


;;     "[" ;; insert vs overwrite mode, input-method in a tooltip
;;     '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
;;               'face 'font-lock-preprocessor-face
;;               'help-echo (concat "Buffer is in "
;;                            (if overwrite-mode "overwrite" "insert") " mode")))

;;     ;; was this buffer modified since the last save?
;;     '(:eval (when (buffer-modified-p)
;;               (concat ","  (propertize "Mod"
;;                              'face 'font-lock-warning-face
;;                              'help-echo "Buffer has been modified"))))

;;     ;; is this buffer read-only?
;;     '(:eval (when buffer-read-only
;;               (concat ","  (propertize "RO"
;;                              'face 'font-lock-type-face
;;                              'help-echo "Buffer is read-only"))))
;;     "] "

;;     ;; add the time, with the date and the emacs uptime in the tooltip
;;     '(:eval (propertize (format-time-string "%H:%M")
;;               'help-echo
;;               (concat (format-time-string "%c; ")
;;                       (emacs-uptime "Uptime:%hh"))))
;;     " --"
;;     ;; i don't want to see minor-modes; but if you want, uncomment this:
;;     minor-mode-alist  ;; list of minor modes
;;     "%-" ;; fill with '-'
;;     ))

;;(add-to-list 'load-path "~/.emacs.d/lisp/evil" )
;;(require 'evil)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq org-todo-keywords
       '((sequence "TODO" "IN PROGRESS" "|" "DONE" "DELEGATED")))

; Emacs does not exit promptly. The message "Saving clipboard to X clipboard manager..." is shown.
(setq x-select-enable-clipboard t)
(setq x-select-enable-clipboard-manager nil)

(setq org-ellipsis "⤵")
;;add datestamp when mark item as DONE
(setq org-log-done 'time)
(setq default-input-method "russian-computer")

(setq org-agenda-files '("~/ownCloud/org/"))
;;(setq org-directory "~/Dropbox/org/")
;;(setq org-default-notes-file (concat org-directory "/notes.org"))

;; highlight current line
(global-hl-line-mode 1)

;;It's M-x, but seems to work even in shit terminals
(global-set-key (kbd "C-c C-m") 'execute-extended-command)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)


;;external keybindings 
(global-set-key (kbd "M-] d") 'kill-whole-line)
(global-set-key (kbd "M-] u") 'undo)
(global-set-key (kbd "M-] e") 'subword-backward-kill)
(global-set-key (kbd "M-] r") 'subword-kill)
(global-set-key (kbd "M-] u") 'subword-backward)
(global-set-key (kbd "M-] o") 'subword-forward)
(global-set-key (kbd "C-=") 'indent-region)
(global-set-key (kbd "C-c C-g") 'find-file-at-point)

(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))

(with-eval-after-load 'ox-latex
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[12pt]{extarticle} 
\\usepackage[utf8]{inputenc} 
\\usepackage[T1,T2A]{fontenc}
\\usepackage[russian]{babel} 
\\usepackage[a4paper,top=2cm,bottom=2cm,left=2cm,right=2cm,marginparwidth=1.75cm]{geometry}
\\usepackage{indentfirst} 
\\sloppy
\\usepackage{hyperref} 
\\usepackage{graphicx}
\\usepackage{fancyhdr}
\\pagestyle{fancy}
\\fancyhf{}
\\fancyhead[R]{\\thepage}
\\usepackage{graphicx}
\\usepackage{grffile}
\\usepackage{longtable}
\\usepackage{wrapfig}
\\usepackage{rotating}
\\usepackage[normalem]{ulem}
\\usepackage{amsmath}
\\usepackage{textcomp}
\\usepackage{amssymb}
\\usepackage{capt-of}
\\usepackage{hyperref}
\\author{ss}
\\date{\\today}
\\title{}
\\hypersetup{
 pdfauthor={ss},
 pdftitle={},
 pdfkeywords={},
 pdfsubject={},
 pdfcreator={Emacs 25.2.1 (Org mode 9.0.9)}, 
 pdflang={English}}


               [NO-DEFAULT-PACKAGES]
                [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
                  ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))  

