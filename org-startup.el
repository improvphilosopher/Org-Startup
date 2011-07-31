;;; org-startup.el --- Startup Manager Function File related to org-startup-agenda-views.el

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
;; the items that can be autoloads or do not need to be loaded at the start.
;; 
;;
;;; Code:

(defvar org-startup-days nil)
(defvar org-startup-deadline-warning nil) 

(defgroup org-startup-screen nil
  "Options concerning startup screen management."
  :group 'org)

(defcustom org-startup-use nil
  "Should Org-Startup Execute? " 
  :type '(choice 
	  (const :tag "Yes" t)
	  (const :tag "No" nil))
  :group 'org-startup-screen)

(defcustom org-startup-buffer  nil
  "File to be displayed in the left buffer."  
  :type '(repeat file)
  :group 'org-startup-screen)

(defcustom org-startup-days 3
  "Number of days of calendar to show in starting agenda."
  :type '(number)
  :group 'org-startup-screen)

(defcustom org-startup-deadline-warning 180
  "Number of days to look into the future for deadlines."
  :type '(number)
  :group 'org-startup-screen)

;(defun org-startup-view (&optional org-startup-buffer))

(provide 'org-startup)
