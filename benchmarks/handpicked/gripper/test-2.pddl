(define (problem strips-gripper-x-2)
   (:domain gripper-strips)
   (:objects rooma roomb ball4 ball3 ball2 ball1 left right)
   (:init (room rooma)
          (room roomb)
	  
          (ball ball4)
          (ball ball3)
          (ball ball2)
          (ball ball1)
	  
          (gripper left)
          (gripper right)
	  
          (at ball2 roomb)
          (at ball1 roomb)
          (at ball4 rooma)
	  
          (free left)
	  (carry ball3 right)
	  
          (at-robby roomb))
	  
   (:goal (and
   	  (room rooma)
          (room roomb)
	  
          (ball ball4)
          (ball ball3)
          (ball ball2)
          (ball ball1)
	  
          (gripper left)
          (gripper right)
	  
          (at ball3 roomb)
          (at ball2 roomb)
          (at ball1 roomb)
          (at ball4 roomb)
	  
          (not (at ball1 rooma))
          (not (at ball2 rooma))
          (not (at ball3 rooma))	  	  
          (not (at ball4 rooma))	  
	  
          (free left)
          (free right)

	  (not (carry ball1 left))
	  (not (carry ball2 left))
	  (not (carry ball3 left))	  
	  (not (carry ball4 left))
	  
	  (not (carry ball1 right))
	  (not (carry ball2 right))
	  (not (carry ball3 right))
	  (not (carry ball4 right))	  
	  
          (at-robby roomb)
          (not (at-robby rooma))
)))