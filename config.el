(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 16 :weight 'semi-light :height 1.5))

(setq doom-theme 'kaolin-temple)

(setq display-line-numbers-type 'nil)

;;(add-to-list 'default-frame-alist '(alpha . 95))

(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-items 'nil)

(setq evil-normal-state-cursor '(box "PowderBlue")
      evil-insert-state-cursor '(box "medium spring green")
      evil-visual-state-cursor '(box "MediumOrchid3"))

(setq org-emphasis-alist
  '(("*" (italic :foreground "#78c2b3" ))
    ("/" (italic :foreground "IndianRed1" ))
    ("_" (:underline t  ))
    ("=" (bold :background "#78c2b3" :foreground "black"))
    ("~" (bold :foreground "MediumSpringGreen" ))
    ("+" (:foreground "#ff7ab2" ))))

(setq org-hide-emphasis-markers t)
(setq company-global-modes '(not text-mode org-mode))

(custom-set-faces
 '(org-level-1 ((t (:foreground "#c792ea"))))
 '(text-math ((t (:foreground "#fc514e"))))
 '(org-level-2 ((t (:foreground "plum3"))))
 '(org-list-dt ((t (:foreground "#fd9353"))))
 '(org-ellipsis ((t (:foreground "#fd9353"))))
 '(org-link ((((class color) (min-colors 88) (background dark)) (:foreground "#78c2b3" :underline t))))
 '(org-block-begin-line ((t (:background nil :extend t))))
 '(org-block ((t (:background nil :extend t))))
 '(org-block-end-line ((t (:background nil :extend t)))))

(use-package! olivetti
  :config
  (add-hook 'text-mode-hook 'olivetti-mode 'prog-mode-hook )
  (setq olivetti-body-width 80))

(dolist (f '(prog-mode-hook org-mode-hook text-mode-hook))
 (add-hook f #'olivetti-mode))

(setq org-ellipsis " ▼")

(with-eval-after-load 'org (global-org-modern-mode))

(setq org-roam-directory "~/Documents/personal/roam")

(use-package! org-roam-ui
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

(setq org-file-apps
  '((auto-mode . emacs)
  ("\\.pdf::\\([0-9]+\\)?\\'" . "zathura %s -P %1")
  ("\\.pdf\\'" . "zathura %s")
  (directory . emacs)))

(setq org-journal-dir "~/Documents/personal/roam/journal")
(setq org-journal-date-prefix "#+title: ")
(setq org-journal-time-prefix "* ")
(setq org-journal-date-format "%a, %d-%m-%Y")
(setq org-journal-file-format "%d-%m-%Y.org")
