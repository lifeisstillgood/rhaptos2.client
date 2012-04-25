
;; WHere I keep .el files.  See also /usr/local/share/emacs for system wide added.
(add-to-list 'load-path "~/elisp")
(add-to-list 'load-path "~/elisp/emacs-jabber")
(add-to-list 'load-path "~/elisp/emacs-jabber/compat")
(add-to-list 'load-path "~/elisp/emacs-jabber/gconf")
(add-to-list 'load-path "~/elisp/emacs-jabber/m4")


(require 'jabber-autoloads)


;; docutils / ReSt work
(require `rst)
(setq auto-mode-alist                                                                                                  
      (append '(("\\.txt$" . rst-mode)                                                                                 
                ("\\.rst$" . rst-mode)                                                                                 
                ("\\.chp$" . rst-mode)) auto-mode-alist))  

(setq frame-background-mode 'dark)

;;:biblio: http://snarfed.org/gnu_emacs_backup_files
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)



(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-pdb-command-name "~/pdb")
 '(rst-level-face-base-light 0)
)



(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.

)