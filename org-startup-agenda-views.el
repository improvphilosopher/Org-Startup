(add-to-list 
 'org-agenda-custom-commands 
   '(
     ("s" "Startup View" 
      (
       (agenda "" 
	     (
	      (org-agenda-ndays 'Org-Startup-Days) ;; How many days of calendar to show
	      (org-deadline-warning-days 0))) ;; Should show only deadlines on day they are scheduled is visible
       (agenda "" 
	     (
	      (org-agenda-time-grid nil) 
	      (org-deadline-warning-days 'Org-Startup-Deadline-Warning) ;; Number of days into the future to look for deadlines
	      (org-agenda-entry-types 
	       (quote 
	        (:deadline))) ;; looking just for deadlines
	      (org-agenda-skip-entry-if 
	       (quote scheduled)) ;; Should this be something that can be turned on and off?  Do we want to see them if they are scheduled?
	      (org-agenda-ndays 1) ;; Just looking at one day to generate a look of "How many days until that deadline" list.
	      (org-agenda-overriding-header "Upcoming deadlines:")))  ;; Title
       (todo "" 
	   (quote 
	    (org-agenda-overriding-header "Unscheduled No Deadline TODO: ") ;; Finds TODO's that are != scheduled and have no deadline
	    )
	   )
       )
      )
     )
 )
 (provide 'Org-Startup-Agenda-Views)