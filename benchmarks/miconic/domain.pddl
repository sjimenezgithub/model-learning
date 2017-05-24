;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Domain model to learn a 4 op-miconic 
;;; from example plans
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain miconic)
  (:requirements :strips)
  

(:predicates 
  (origin ?person ?floor )
  (floor ?floor)
  (passenger ?passenger)
  (destin ?person ?floor )
  (above ?floor1 ?floor2 )
  (boarded ?person )
  (served ?person )
  (lift-at ?floor )
)

)


