(define (problem grid-3)
  (:domain grid-visit-all)
  (:objects loc-x0-y2 -  place loc-x1-y0 -  place loc-x0-y0 -  place loc-x0-y1 -  place loc-x1-y1 -  place loc-x1-y2 -  place loc-x2-y0 -  place loc-x2-y1 -  place loc-x2-y2 -  place )
  (:init (visited loc-x1-y1) (connected loc-x2-y1 loc-x1-y1) (connected loc-x0-y1 loc-x1-y1) (connected loc-x2-y1 loc-x2-y2) (connected loc-x2-y2 loc-x1-y2) (connected loc-x1-y0 loc-x1-y1) (connected loc-x2-y2 loc-x2-y1) (connected loc-x1-y1 loc-x1-y0) (connected loc-x0-y1 loc-x0-y2) (connected loc-x2-y1 loc-x2-y0) (connected loc-x1-y2 loc-x2-y2) (connected loc-x1-y1 loc-x2-y1) (connected loc-x0-y1 loc-x0-y0) (connected loc-x0-y2 loc-x0-y1) (connected loc-x2-y0 loc-x2-y1) (connected loc-x0-y2 loc-x1-y2) (connected loc-x0-y0 loc-x0-y1) (connected loc-x1-y1 loc-x1-y2) (connected loc-x1-y1 loc-x0-y1) (connected loc-x2-y0 loc-x1-y0) (connected loc-x1-y0 loc-x2-y0) (connected loc-x1-y2 loc-x1-y1) (connected loc-x1-y2 loc-x0-y2) (connected loc-x1-y0 loc-x0-y0) (connected loc-x0-y0 loc-x1-y0) (at-robot loc-x1-y1) (not (connected loc-x0-y0 loc-x0-y0)) (not (connected loc-x0-y0 loc-x0-y2)) (not (connected loc-x0-y0 loc-x1-y1)) (not (connected loc-x0-y0 loc-x1-y2)) (not (connected loc-x0-y0 loc-x2-y0)) (not (connected loc-x0-y0 loc-x2-y1)) (not (connected loc-x0-y0 loc-x2-y2)) (not (connected loc-x0-y1 loc-x0-y1)) (not (connected loc-x0-y1 loc-x1-y0)) (not (connected loc-x0-y1 loc-x1-y2)) (not (connected loc-x0-y1 loc-x2-y0)) (not (connected loc-x0-y1 loc-x2-y1)) (not (connected loc-x0-y1 loc-x2-y2)) (not (connected loc-x0-y2 loc-x0-y0)) (not (connected loc-x0-y2 loc-x0-y2)) (not (connected loc-x0-y2 loc-x1-y0)) (not (connected loc-x0-y2 loc-x1-y1)) (not (connected loc-x0-y2 loc-x2-y0)) (not (connected loc-x0-y2 loc-x2-y1)) (not (connected loc-x0-y2 loc-x2-y2)) (not (connected loc-x1-y0 loc-x0-y1)) (not (connected loc-x1-y0 loc-x0-y2)) (not (connected loc-x1-y0 loc-x1-y0)) (not (connected loc-x1-y0 loc-x1-y2)) (not (connected loc-x1-y0 loc-x2-y1)) (not (connected loc-x1-y0 loc-x2-y2)) (not (connected loc-x1-y1 loc-x0-y0)) (not (connected loc-x1-y1 loc-x0-y2)) (not (connected loc-x1-y1 loc-x1-y1)) (not (connected loc-x1-y1 loc-x2-y0)) (not (connected loc-x1-y1 loc-x2-y2)) (not (connected loc-x1-y2 loc-x0-y0)) (not (connected loc-x1-y2 loc-x0-y1)) (not (connected loc-x1-y2 loc-x1-y0)) (not (connected loc-x1-y2 loc-x1-y2)) (not (connected loc-x1-y2 loc-x2-y0)) (not (connected loc-x1-y2 loc-x2-y1)) (not (connected loc-x2-y0 loc-x0-y0)) (not (connected loc-x2-y0 loc-x0-y1)) (not (connected loc-x2-y0 loc-x0-y2)) (not (connected loc-x2-y0 loc-x1-y1)) (not (connected loc-x2-y0 loc-x1-y2)) (not (connected loc-x2-y0 loc-x2-y0)) (not (connected loc-x2-y0 loc-x2-y2)) (not (connected loc-x2-y1 loc-x0-y0)) (not (connected loc-x2-y1 loc-x0-y1)) (not (connected loc-x2-y1 loc-x0-y2)) (not (connected loc-x2-y1 loc-x1-y0)) (not (connected loc-x2-y1 loc-x1-y2)) (not (connected loc-x2-y1 loc-x2-y1)) (not (connected loc-x2-y2 loc-x0-y0)) (not (connected loc-x2-y2 loc-x0-y1)) (not (connected loc-x2-y2 loc-x0-y2)) (not (connected loc-x2-y2 loc-x1-y0)) (not (connected loc-x2-y2 loc-x1-y1)) (not (connected loc-x2-y2 loc-x2-y0)) (not (connected loc-x2-y2 loc-x2-y2)) (not (at-robot loc-x0-y0)) (not (at-robot loc-x0-y1)) (not (at-robot loc-x0-y2)) (not (at-robot loc-x1-y0)) (not (at-robot loc-x1-y2)) (not (at-robot loc-x2-y0)) (not (at-robot loc-x2-y1)) (not (at-robot loc-x2-y2)) (not (visited loc-x0-y0)) (not (visited loc-x0-y1)) (not (visited loc-x0-y2)) (not (visited loc-x1-y0)) (not (visited loc-x1-y2)) (not (visited loc-x2-y0)) (not (visited loc-x2-y1)) (not (visited loc-x2-y2)) )
  (:goal (and (visited loc-x1-y1)(connected loc-x2-y1 loc-x1-y1)(connected loc-x0-y1 loc-x1-y1)(connected loc-x2-y1 loc-x2-y2)(connected loc-x2-y2 loc-x1-y2)(connected loc-x1-y0 loc-x1-y1)(connected loc-x2-y2 loc-x2-y1)(connected loc-x1-y1 loc-x1-y0)(connected loc-x0-y1 loc-x0-y2)(connected loc-x2-y1 loc-x2-y0)(connected loc-x1-y2 loc-x2-y2)(connected loc-x1-y1 loc-x2-y1)(connected loc-x0-y1 loc-x0-y0)(connected loc-x0-y2 loc-x0-y1)(connected loc-x2-y0 loc-x2-y1)(connected loc-x0-y2 loc-x1-y2)(connected loc-x0-y0 loc-x0-y1)(connected loc-x1-y1 loc-x1-y2)(connected loc-x1-y1 loc-x0-y1)(connected loc-x2-y0 loc-x1-y0)(connected loc-x1-y0 loc-x2-y0)(connected loc-x1-y2 loc-x1-y1)(connected loc-x1-y2 loc-x0-y2)(connected loc-x1-y0 loc-x0-y0)(connected loc-x0-y0 loc-x1-y0)(visited loc-x0-y1)(visited loc-x0-y0)(visited loc-x1-y0)(at-robot loc-x2-y0)(visited loc-x2-y0))))