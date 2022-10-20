
(use-package dashboard
  :ensure t
  :init
  :config
  (dashboard-setup-startup-hook))
;;
(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
;; Set the title
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
;; Set the banner
(setq dashboard-startup-banner [VALUE])
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.gif", "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever gif/image/text you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)
;;
(setq dashboard-items '((recents  . 1)
                        (bookmarks . 1)
                        (projects . 2)
                        (agenda . 2)
;;
(defun dashboard-insert-custom (list-size)
  (insert "Custom text"))
(add-to-list 'dashboard-item-generators  '(custom . dashboard-insert-custom))
(add-to-list 'dashboard-items '(custom) t)
;;
(setq dashboard-item-names '(("Recent Files:" . "Recently opened files:")
                             ("Agenda for today:" . "Today's agenda:")
                             ("Agenda for the coming week:" . "Agenda:"))
;
;;
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
;;
(dashboard-modify-heading-icons '((recents . "file-text")
                                  (bookmarks . "book")))

;;
(setq dashboard-set-navigator t)
;;
;; Format: "(icon title help action face prefix suffix)"
;;(setq dashboard-navigator-buttons
;;      `(;; line1
;;        ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
;;         "Homepage"
;;         "Browse homepage"
;;         (lambda (&rest _) (browse-url "homepage")))
;;        ("★" "Star" "Show stars" (lambda (&rest _) (show-stars)) warning)
;;        ("?" "" "?/h" #'show-help nil "<" ">"))
;;         ;; line 2
;;        ((,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
;;          "Linkedin"
;;          ""
;;          (lambda (&rest _) (browse-url "homepage")))
;;         ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error))))
 
;;(setq dashboard-set-init-info t)
;;(setq dashboard-init-info "This is an init message!")
;;(setq dashboard-set-footer nil)
;;
;;(setq dashboard-footer-messages '("Dashboard is pretty cool!"))
;;(setq dashboard-footer-icon (all-the-icons-octicon "dashboard"
;;                                                   :height 1.1
;;                                                   :v-adjust -0.05
;;                                                   :face 'font-lock-keyword-face))
;;
;;(setq dashboard-projects-switch-function 'counsel-projectile-switch-project-by-name)
;;
;;(add-to-list 'dashboard-items '(agenda) t)
;;
;;(setq dashboard-week-agenda t)
;;
;;(setq dashboard-filter-agenda-entry 'dashboard-no-filter-agenda)
;;
