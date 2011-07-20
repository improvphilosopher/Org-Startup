;;; org-startup.el --- Startup Manager

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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;; 
;; 
;; 
;;
;;; Code:

(eval-when-compile
  (require 'cl))

(eval-and-compile
  (require 'org))

  (require '')

(defgroup org-startup nil
  "Options concerning contacts management."
  :group 'org)


(defcustom org-startup-left-buffer "LBUFFER"
  "File to be displayed in the left buffer."
  :type 'string
  :group 'org-startup)


(defcustom org-startup-right-buffer "RBUFFER"
  "File to be displayed in the right buffer."
  :type 'string
  :group 'org-startup)
(defvar org-startup-keymap
  (let ((map (make-sparse-keymap)))
    (define-key map "C" 'org-startup-)
    (define-key map "S" 'org-startup-)
    map)
  "The keymap used in `org-startup' result list.") #??

(defun org-startup-view (&optional org-startup-left-buffer org-startup-right-buffer)
 

(provide 'org-startup)
