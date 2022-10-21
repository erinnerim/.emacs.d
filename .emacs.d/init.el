;; BASIC CONFIGURATION
	(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
	;; load emacs 24's package system. Add MELPA repository.
	(when (>= emacs-major-version 24)
	  (require 'package)
	  (add-to-list
	   'package-archives
	   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
	   '("melpa" . "https://melpa.org/packages/")
	  t))
	(package-initialize)

;; EMACSCLIENT

	(if (daemonp)
	    (add-hook 'after-make-frame-functions
		      (lambda (frame)
			(with-selected-frame frame
			  ;; (efs/set-font-faces)
			  (efs/set-font-faces)))))
			  ;; (my/disable-scroll-bars)))))
			  ;; (set-face-attribute 'default nil :font "Targa MS-12")))
	;;(set-face-attribute 'default nil :font "Targa MS-12")
	;;(set-face-attribute 'default nil :width 'ultra-expanded)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(awesome-tray-mode-line-active-color "#0031a9")
 '(awesome-tray-mode-line-inactive-color "#d7d7d7")
 '(custom-safe-themes
   '("5a50b073c4dc5efc08be3a374cfda36b5ec0e52ab3aa1c800dc9b1706ece2667" "9ac11c78f208abf58e5b313a33147cbf209ad9dc9cb169bf82464b043b45ad7a" default))
 '(exwm-floating-border-color "#888888")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-themes-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-themes-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-themes-fringe-yellow))
 '(fringe-mode 6 nil (fringe))
 '(highlight-changes-colors nil)
 '(highlight-changes-face-list '(success warning error bold bold-italic))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#70480f")
     ("TODO" . "#721045")
     ("NEXT" . "#5317ac")
     ("THEM" . "#8f0075")
     ("PROG" . "#00538b")
     ("OKAY" . "#30517f")
     ("DONT" . "#315b00")
     ("FAIL" . "#a60000")
     ("BUG" . "#a60000")
     ("DONE" . "#005e00")
     ("NOTE" . "#863927")
     ("KLUDGE" . "#813e00")
     ("HACK" . "#813e00")
     ("TEMP" . "#5f0000")
     ("FIXME" . "#a0132f")
     ("XXX+" . "#972500")
     ("REVIEW" . "#005a5f")
     ("DEPRECATED" . "#201f55")))
 '(ibuffer-deletion-face 'modus-themes-mark-del)
 '(ibuffer-filter-group-name-face 'modus-themes-pseudo-header)
 '(ibuffer-marked-face 'modus-themes-mark-sel)
 '(ibuffer-title-face 'default)
 '(linum-format " %7d ")
 '(lsp-diagnostics-attributes
   '((unnecessary :foreground "cornsilk4")
     (deprecated :strike-through t)))
 '(mini-modeline-face-attr '(:background unspecified))
 '(org-agenda-files nil)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-src-block-faces 'nil)
 '(package-selected-packages
   '(ivy-emoji el-patch org-appear company swiper zenburn-theme white-sand-theme which-key vulpea use-package typescript-mode spacemacs-theme solarized-theme rimero-theme pyvenv purple-haze-theme phoenix-dark-pink-theme peep-dired multi-term move-text magit lsp-mode latex-pretty-symbols ibuffer-git flycheck-pycheckers flatland-theme faff-theme diredfl dired-git-info dimmer counsel chess buffer-move base16-theme auto-save-buffers-enhanced))
 '(pdf-view-midnight-colors '("#000000" . "#f8f8f8"))
 '(widget-link-prefix "[")
 '(widget-link-suffix "]")
 '(widget-mouse-face '(highlight widget-button))
 '(widget-push-button-prefix "[")
 '(widget-push-button-suffix "]")
 '(xterm-color-names
   ["black" "#a60000" "#005e00" "#813e00" "#0031a9" "#721045" "#00538b" "gray65"])
 '(xterm-color-names-bright
   ["gray35" "#972500" "#315b00" "#70480f" "#2544bb" "#8f0075" "#30517f" "white"])
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block ((t (:extend t :background "nil" :foreground "#a5a2a2"))))
 '(org-block-begin-line ((t (:background "nil" :foreground "#5c5855"))))
 '(org-code ((t (:foreground "coral"))))
 '(org-done ((t (:background "nil" :foreground "dim gray" :box nil :weight bold))))
 '(org-hide ((t nil)))
 '(org-level-1 ((t (:inherit outline-1 :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
 '(org-todo ((t (:background "nil" :foreground "light gray" :box nil :weight bold))))
 '(variable-pitch ((t (:family "Chilanka" :weight thin)))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
