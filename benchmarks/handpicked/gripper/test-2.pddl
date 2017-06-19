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
	  (not (room ball4))
	  (not (room ball3)) 
	  (not (room ball2)) 
	  (not (room ball1)) 
	  (not (room left))
	  (not (room right))	  
	  
          (ball ball4)
          (ball ball3)
          (ball ball2)
          (ball ball1)
          (not (ball rooma))
          (not (ball roomb))
	  (not (ball left))
	  (not (ball right))	  
	  
          (gripper left)
          (gripper right)
	  (not (gripper ball4))
	  (not (gripper ball3)) 
	  (not (gripper ball2)) 
	  (not (gripper ball1))
	  (not (gripper rooma))
	  (not (gripper roomb))	  	  
	  
          (at ball3 roomb)
          (at ball2 roomb)
          (at ball1 roomb)
          (at ball4 roomb)
	  
          (not (at ball1 rooma))
          (not (at ball2 rooma))
          (not (at ball3 rooma))	  	  
          (not (at ball4 rooma))
	  
	  (not (at rooma rooma))
	  (not (at rooma roomb))
	  (not (at roomb rooma))
	  (not (at roomb roomb))	  

	  (not (at ball4 ball4))
	  (not (at ball4 ball3))
	  (not (at ball4 ball2))
	  (not (at ball4 ball1))
	  (not (at ball4 left))
	  (not (at ball4 right))
	  (not (at ball3 ball4))
	  (not (at ball3 ball3))
	  (not (at ball3 ball2))
	  (not (at ball3 ball1))
	  (not (at ball3 left))
	  (not (at ball3 right))
	  (not (at ball2 ball4))
	  (not (at ball2 ball3))
	  (not (at ball2 ball2))
	  (not (at ball2 ball1))
	  (not (at ball2 left))
	  (not (at ball2 right))
	  (not (at ball1 ball4))
	  (not (at ball1 ball3))
	  (not (at ball1 ball2))
	  (not (at ball1 ball1))
	  (not (at ball1 left))
	  (not (at ball1 right))
	  (not (at left ball4))
	  (not (at left ball3))
	  (not (at left ball2))
	  (not (at left ball1))
	  (not (at left left))
	  (not (at left right))
	  (not (at right ball4))
	  (not (at right ball3))
	  (not (at right ball2))
	  (not (at right ball1))
	  (not (at right left))
	  (not (at right right))

          (free left)
          (free right)

	  (not (free rooma))
	  (not (free roomb))
	  (not (free ball4))
	  (not (free ball3))
	  (not (free ball2))
	  (not (free ball1))	  
	  (not (carry rooma rooma))
	  (not (carry rooma roomb))
	  (not (carry rooma ball4))
	  (not (carry rooma ball3))
	  (not (carry rooma ball2))
	  (not (carry rooma ball1))
	  (not (carry rooma left))
	  (not (carry rooma right))
	  (not (carry roomb rooma))
	  (not (carry roomb roomb))
	  (not (carry roomb ball4))
	  (not (carry roomb ball3))
	  (not (carry roomb ball2))
	  (not (carry roomb ball1))
	  (not (carry roomb left))
	  (not (carry roomb right))
	  (not (carry ball4 rooma))
	  (not (carry ball4 roomb))
	  (not (carry ball4 ball4))
	  (not (carry ball4 ball3))
	  (not (carry ball4 ball2))
	  (not (carry ball4 ball1))
	  (not (carry left ball4))
	  (not (carry right ball4))
	  (not (carry ball3 rooma))
	  (not (carry ball3 roomb))
	  (not (carry ball3 ball4))
	  (not (carry ball3 ball3))
	  (not (carry ball3 ball2))
	  (not (carry ball3 ball1))
	  (not (carry left ball3))
	  (not (carry right ball3))
	  (not (carry ball2 rooma))
	  (not (carry ball2 roomb))
	  (not (carry ball2 ball4))
	  (not (carry ball2 ball3))
	  (not (carry ball2 ball2))
	  (not (carry ball2 ball1))
	  (not (carry left ball2))
	  (not (carry right ball2))
	  (not (carry ball1 rooma))
	  (not (carry ball1 roomb))
	  (not (carry ball1 ball4))
	  (not (carry ball1 ball3))
	  (not (carry ball1 ball2))
	  (not (carry ball1 ball1))
	  (not (carry left ball1))
	  (not (carry right ball1))
	  (not (carry left rooma))
	  (not (carry left roomb))
	  (not (carry left left))
	  (not (carry left right))
	  (not (carry right rooma))
	  (not (carry right roomb))
	  (not (carry right left))
	  (not (carry right right))

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
	  (not (at-robby ball1))
	  (not (at-robby ball2))
	  (not (at-robby ball3))
	  (not (at-robby ball4))
	  (not (at-robby left))
	  (not (at-robby right))	  
)))