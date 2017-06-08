(define (domain gripper-strips)
   (:predicates (room ?r)
		(ball ?b)
		(gripper ?g)
		(at-robby ?r)
		(at ?b ?r)
		(free ?g)
		(carry ?o ?g))

   (:action move
       :parameters  (?o1 ?o2)
       :precondition (and  (room ?o1) (room ?o2) (at-robby ?o1))
       :effect (and  (at-robby ?o2)
		     (not (at-robby ?o1))))



   (:action pick
       :parameters (?o1 ?o2 ?o3)
       :precondition  (and  (ball ?o1) (room ?o2) (gripper ?o3)
			    (at ?o1 ?o2) (at-robby ?o2) (free ?o3))
       :effect (and (carry ?o1 ?o3)
		    (not (at ?o1 ?o2)) 
		    (not (free ?o3))))


   (:action drop
       :parameters  (?o1  ?o2 ?o3)
       :precondition  (and  (ball ?o1) (room ?o2) (gripper ?o3)
			    (carry ?o1 ?o3) (at-robby ?o2))
       :effect (and (at ?o1 ?o2)
		    (free ?o3)
		    (not (carry ?o1 ?o3)))))

