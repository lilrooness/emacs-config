;; Emacs-config by olikasg.

;; This file is a starting point to bootstrap an emacs config on any of
;; my computers.

(when (string-equal system-type "darwin")
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char))

(iswitchb-mode t)

(defun load-config (config-name)
  "Load the requested config.

Config files should be located in `./resources' directory. Config
files should start with prefix `conf-'."
  (load (concat
	 (file-name-as-directory emacs-repository-path)
	 (file-name-as-directory "resources") "conf-" config-name ".el")))

(load-config "common")
(load-config "bootstrap-packages")
(load-config "theme")
(load-config "powerline")
(load-config "bm")
(load-config "irfc")
