(setq doom-font (font-spec :family "Hack Nerd Font" :size 15))

(setq doom-theme 'doom-xcode)

(setq display-line-numbers-type 'nil)

;;(add-to-list 'default-frame-alist '(alpha . 90))

(setq evil-normal-state-cursor '(box "#F25C54")
      evil-insert-state-cursor '(box "medium spring green")
      evil-visual-state-cursor '(box "MediumOrchid3"))

(setq org-emphasis-alist
  '(("*" (bold :foreground "IndianRed1" ))
    ("/" (italic :foreground "yellow" ))
    ("_" (:underline t  ))
    ("=" (bold :background "#78c2b3" :foreground "black"))
    ("~" (bold :foreground "MediumSpringGreen" ))
    ("+" (:foreground "#ff7ab2" ))))

(setq org-hide-emphasis-markers t)

(custom-set-faces
 '(org-link ((((class color) (min-colors 88) (background dark)) (:foreground "#78c2b3" :underline t))))
 '(org-block-begin-line ((t (:background nil :extend t))))
 '(org-block ((t (:background nil :extend t))))
 '(org-block-end-line ((t (:background nil :extend t))))
 '(org-level-1 ((t (:foreground "#dabaff"))))
 '(org-level-2 ((t (:foreground "IndianRed1"))))
 '(org-level-3 ((t (:foreground "MediumAquamarine"))))
 '(org-document-title ((t (:underline nil :foreground "MediumAquamarine")))))

(use-package! olivetti
  :config
  (add-hook 'text-mode-hook 'olivetti-mode)
  (setq olivetti-body-width 90))

(setq org-ellipsis " ▼")

(with-eval-after-load 'org (global-org-modern-mode))
