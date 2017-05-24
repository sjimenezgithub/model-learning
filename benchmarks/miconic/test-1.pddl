(define (problem mixed-f10-p5-u0-v0-g0-a0-n0-A0-B0-N0-F0-r4)
   (:domain miconic)
   (:objects p0 p1 p2 p3 p4 
             f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 )


(:init
(passenger p0)
(passenger p1)
(passenger p2)
(passenger p3)
(passenger p4)

(floor f0)
(floor f1)
(floor f2)
(floor f3)
(floor f4)
(floor f5)
(floor f6)
(floor f7)
(floor f8)
(floor f9)

(above f0 f1)
(above f0 f2)
(above f0 f3)
(above f0 f4)
(above f0 f5)
(above f0 f6)
(above f0 f7)
(above f0 f8)
(above f0 f9)

(above f1 f2)
(above f1 f3)
(above f1 f4)
(above f1 f5)
(above f1 f6)
(above f1 f7)
(above f1 f8)
(above f1 f9)

(above f2 f3)
(above f2 f4)
(above f2 f5)
(above f2 f6)
(above f2 f7)
(above f2 f8)
(above f2 f9)

(above f3 f4)
(above f3 f5)
(above f3 f6)
(above f3 f7)
(above f3 f8)
(above f3 f9)

(above f4 f5)
(above f4 f6)
(above f4 f7)
(above f4 f8)
(above f4 f9)

(above f5 f6)
(above f5 f7)
(above f5 f8)
(above f5 f9)

(above f6 f7)
(above f6 f8)
(above f6 f9)

(above f7 f8)
(above f7 f9)

(above f8 f9)

(origin p0 f5)
(destin p0 f1)

(origin p1 f2)
(destin p1 f0)

(origin p2 f2)
(destin p2 f8)

(origin p3 f7)
(destin p3 f5)

(origin p4 f9)
(destin p4 f4)

(lift-at f0)
)


(:goal (and

(passenger p0)
(passenger p1)
(passenger p2)
(passenger p3)
(passenger p4)

(floor f0)
(floor f1)
(floor f2)
(floor f3)
(floor f4)
(floor f5)
(floor f6)
(floor f7)
(floor f8)
(floor f9)

(above f0 f1)
(above f0 f2)
(above f0 f3)
(above f0 f4)
(above f0 f5)
(above f0 f6)
(above f0 f7)
(above f0 f8)
(above f0 f9)

(above f1 f2)
(above f1 f3)
(above f1 f4)
(above f1 f5)
(above f1 f6)
(above f1 f7)
(above f1 f8)
(above f1 f9)

(above f2 f3)
(above f2 f4)
(above f2 f5)
(above f2 f6)
(above f2 f7)
(above f2 f8)
(above f2 f9)

(above f3 f4)
(above f3 f5)
(above f3 f6)
(above f3 f7)
(above f3 f8)
(above f3 f9)

(above f4 f5)
(above f4 f6)
(above f4 f7)
(above f4 f8)
(above f4 f9)

(above f5 f6)
(above f5 f7)
(above f5 f8)
(above f5 f9)

(above f6 f7)
(above f6 f8)
(above f6 f9)

(above f7 f8)
(above f7 f9)

(above f8 f9)

(origin p0 f5)
(destin p0 f1)

(origin p1 f2)
(destin p1 f0)

(origin p2 f2)
(destin p2 f8)

(origin p3 f7)
(destin p3 f5)

(origin p4 f9)
(destin p4 f4)

(not (boarded p0))
(not (boarded p1))
(not (boarded p2))
(not (boarded p3))
(not (boarded p4))

(not (served p0))
(not (served p1))
(not (served p2))
(not (served p3))
(not (served p4))

(not (lift-at f0))
(not (lift-at f1))
(not (lift-at f2))
(not (lift-at f3))
(not (lift-at f4))
(not (lift-at f5))
(lift-at f6)
(not (lift-at f7))
(not (lift-at f8))
(not (lift-at f9))
))
)


