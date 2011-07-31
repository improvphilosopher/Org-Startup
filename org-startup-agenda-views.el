;;; org-startup-agenda-views.el --- Startup Agenda Views

;; Copyright (C) 2011 Matthew Sauer <Improv.Philosophy@gmail.com>
;; Author: Matthew Sauer <Improv.Philosophy@gmail.com>
;; Keywords: 
;;
;; This file is NOT part of GNU Emacs.
;;
;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;  This package is designed as a starting point to make using OrgMode 
;; easy for beginners with some basic customizing options for the Agenda 
;; through customizing startup script.  This will be the file that all of 
;; the items that need to be run at the end of the dot emacs to make this 
;; functional, calling functions and using vars from org-startup.el
;;
;;; Code:
(eval-and-compile 
  (require 'org-agenda))
(load "/elisp/dev/startup/org-startup/org-startup.el")
(declare-function org-agenda "org-agenda" nil)
(setq org-agenda-custom-commands '(("s" "Startup View" ((agenda "" ((org-agenda-ndays org-startup-days) (org-deadline-warning-days 0))) (agenda "" ((org-agenda-time-grid nil) (org-deadline-warning-days 365) (org-agenda-entry-types (quote (:deadline))) (org-agenda-skip-entry-if (quote scheduled)) (org-agenda-ndays 1) (org-agenda-overriding-header "Unscheduled upcoming deadlines:"))) (todo "" (quote (org-agenda-overriding-header "Unscheduled No Deadline TODO: ")))))))
(add-to-list org-agenda-custom-commands (quote (("x" "Describe command here" alltodo "" nil))))
(if (equal org-startup-use t)
    ((org-agenda nil "s") (split-window-horizontally) (find-file org-startup-buffer)))
 (provide 'Org-Startup-Agenda-Views)