(define (problem strips-gripper-x-2)
  (:domain gripper-strips)
  (:objects rooma roomb - room ball6 ball5 ball4 ball3 ball2 ball1 - ball left right - gripper)  
  (:init (at ball5 rooma) (ball ball4) (gripper right) (ball ball5) (ball ball2) (ball ball3) (gripper left) (room rooma) (at ball4 rooma) (ball ball1) (room roomb) (ball ball6) (at ball6 rooma) (at ball3 rooma) (at ball1 roomb) (free left) (at ball2 roomb) (free right) (at-robby rooma) (not (room ball6)) (not (room ball5)) (not (room ball4)) (not (room ball3)) (not (room ball2)) (not (room ball1)) (not (room left)) (not (room right)) (not (ball rooma)) (not (ball roomb)) (not (ball left)) (not (ball right)) (not (gripper rooma)) (not (gripper roomb)) (not (gripper ball6)) (not (gripper ball5)) (not (gripper ball4)) (not (gripper ball3)) (not (gripper ball2)) (not (gripper ball1)) (not (at-robby roomb)) (not (at-robby ball6)) (not (at-robby ball5)) (not (at-robby ball4)) (not (at-robby ball3)) (not (at-robby ball2)) (not (at-robby ball1)) (not (at-robby left)) (not (at-robby right)) (not (at rooma rooma)) (not (at rooma roomb)) (not (at rooma ball6)) (not (at rooma ball5)) (not (at rooma ball4)) (not (at rooma ball3)) (not (at rooma ball2)) (not (at rooma ball1)) (not (at rooma left)) (not (at rooma right)) (not (at roomb rooma)) (not (at roomb roomb)) (not (at roomb ball6)) (not (at roomb ball5)) (not (at roomb ball4)) (not (at roomb ball3)) (not (at roomb ball2)) (not (at roomb ball1)) (not (at roomb left)) (not (at roomb right)) (not (at ball6 roomb)) (not (at ball6 ball6)) (not (at ball6 ball5)) (not (at ball6 ball4)) (not (at ball6 ball3)) (not (at ball6 ball2)) (not (at ball6 ball1)) (not (at ball6 left)) (not (at ball6 right)) (not (at ball5 roomb)) (not (at ball5 ball6)) (not (at ball5 ball5)) (not (at ball5 ball4)) (not (at ball5 ball3)) (not (at ball5 ball2)) (not (at ball5 ball1)) (not (at ball5 left)) (not (at ball5 right)) (not (at ball4 roomb)) (not (at ball4 ball6)) (not (at ball4 ball5)) (not (at ball4 ball4)) (not (at ball4 ball3)) (not (at ball4 ball2)) (not (at ball4 ball1)) (not (at ball4 left)) (not (at ball4 right)) (not (at ball3 roomb)) (not (at ball3 ball6)) (not (at ball3 ball5)) (not (at ball3 ball4)) (not (at ball3 ball3)) (not (at ball3 ball2)) (not (at ball3 ball1)) (not (at ball3 left)) (not (at ball3 right)) (not (at ball2 rooma)) (not (at ball2 ball6)) (not (at ball2 ball5)) (not (at ball2 ball4)) (not (at ball2 ball3)) (not (at ball2 ball2)) (not (at ball2 ball1)) (not (at ball2 left)) (not (at ball2 right)) (not (at ball1 rooma)) (not (at ball1 ball6)) (not (at ball1 ball5)) (not (at ball1 ball4)) (not (at ball1 ball3)) (not (at ball1 ball2)) (not (at ball1 ball1)) (not (at ball1 left)) (not (at ball1 right)) (not (at left rooma)) (not (at left roomb)) (not (at left ball6)) (not (at left ball5)) (not (at left ball4)) (not (at left ball3)) (not (at left ball2)) (not (at left ball1)) (not (at left left)) (not (at left right)) (not (at right rooma)) (not (at right roomb)) (not (at right ball6)) (not (at right ball5)) (not (at right ball4)) (not (at right ball3)) (not (at right ball2)) (not (at right ball1)) (not (at right left)) (not (at right right)) (not (free rooma)) (not (free roomb)) (not (free ball6)) (not (free ball5)) (not (free ball4)) (not (free ball3)) (not (free ball2)) (not (free ball1)) (not (carry rooma rooma)) (not (carry rooma roomb)) (not (carry rooma ball6)) (not (carry rooma ball5)) (not (carry rooma ball4)) (not (carry rooma ball3)) (not (carry rooma ball2)) (not (carry rooma ball1)) (not (carry rooma left)) (not (carry rooma right)) (not (carry roomb rooma)) (not (carry roomb roomb)) (not (carry roomb ball6)) (not (carry roomb ball5)) (not (carry roomb ball4)) (not (carry roomb ball3)) (not (carry roomb ball2)) (not (carry roomb ball1)) (not (carry roomb left)) (not (carry roomb right)) (not (carry ball6 rooma)) (not (carry ball6 roomb)) (not (carry ball6 ball6)) (not (carry ball6 ball5)) (not (carry ball6 ball4)) (not (carry ball6 ball3)) (not (carry ball6 ball2)) (not (carry ball6 ball1)) (not (carry ball6 left)) (not (carry ball6 right)) (not (carry ball5 rooma)) (not (carry ball5 roomb)) (not (carry ball5 ball6)) (not (carry ball5 ball5)) (not (carry ball5 ball4)) (not (carry ball5 ball3)) (not (carry ball5 ball2)) (not (carry ball5 ball1)) (not (carry ball5 left)) (not (carry ball5 right)) (not (carry ball4 rooma)) (not (carry ball4 roomb)) (not (carry ball4 ball6)) (not (carry ball4 ball5)) (not (carry ball4 ball4)) (not (carry ball4 ball3)) (not (carry ball4 ball2)) (not (carry ball4 ball1)) (not (carry ball4 left)) (not (carry ball4 right)) (not (carry ball3 rooma)) (not (carry ball3 roomb)) (not (carry ball3 ball6)) (not (carry ball3 ball5)) (not (carry ball3 ball4)) (not (carry ball3 ball3)) (not (carry ball3 ball2)) (not (carry ball3 ball1)) (not (carry ball3 left)) (not (carry ball3 right)) (not (carry ball2 rooma)) (not (carry ball2 roomb)) (not (carry ball2 ball6)) (not (carry ball2 ball5)) (not (carry ball2 ball4)) (not (carry ball2 ball3)) (not (carry ball2 ball2)) (not (carry ball2 ball1)) (not (carry ball2 left)) (not (carry ball2 right)) (not (carry ball1 rooma)) (not (carry ball1 roomb)) (not (carry ball1 ball6)) (not (carry ball1 ball5)) (not (carry ball1 ball4)) (not (carry ball1 ball3)) (not (carry ball1 ball2)) (not (carry ball1 ball1)) (not (carry ball1 left)) (not (carry ball1 right)) (not (carry left rooma)) (not (carry left roomb)) (not (carry left ball6)) (not (carry left ball5)) (not (carry left ball4)) (not (carry left ball3)) (not (carry left ball2)) (not (carry left ball1)) (not (carry left left)) (not (carry left right)) (not (carry right rooma)) (not (carry right roomb)) (not (carry right ball6)) (not (carry right ball5)) (not (carry right ball4)) (not (carry right ball3)) (not (carry right ball2)) (not (carry right ball1)) (not (carry right left)) (not (carry right right)) )
  (:goal (and (at ball5 rooma)(ball ball4)(gripper right)(ball ball5)(ball ball2)(ball ball3)(gripper left)(room rooma)(ball ball1)(room roomb)(ball ball6)(at ball6 rooma)(at ball1 roomb)(at ball2 roomb)(at ball3 roomb)(free left)(at ball4 roomb)(free right)(at-robby rooma))))