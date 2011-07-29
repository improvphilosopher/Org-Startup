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

(eval-and-compile
  (require 'org))
(eval-and-compile
(require 'org-agenda))

(defgroup org-startup nil
  "Options concerning contacts management."
  :group 'org)

(defcustom org-startup-use "UseOrgStartup"
  "Should Org-Startup Execute?"
  :type 'string
  :group 'org-startup)

(defcustom org-startup-left-buffer "LBUFFER"  ;going to be a call to a file or 
  "File to be displayed in the left buffer."  ;an agenda startup view, need to make options
  :type 'string
  :group 'org-startup)

(defcustom org-startup-right-buffer "RBUFFER"  ;going to be a call to a file or 
  "File to be displayed in the right buffer."  ; and agenda startup view, need to make options
  :type 'string
  :group 'org-startup)

(defcustom Org-Startup-Days "Org-Days"
  "Number of days of calendar to show in starting agenda."
  :type 'integer
  :group 'org-startup)

(defcustom Org-Startup-Deadline-Warning "Org-Deadline-Warn"
  "Number of days to look into the future for deadlines."
  :type 'integer
  :group 'org-startup)

(defun org-startup-view (&optional org-startup-left-buffer org-startup-right-buffer))

(provide 'org-startup)
