(define (problem ztravel-2-4)
  (:domain zeno-travel)
  (:objects person1 -  person plane2 -  aircraft plane1 -  aircraft person2 -  person person4 -  person person3 -  person city0 -  city city1 -  city city2 -  city city3 -  city fl0 -  flevel fl1 -  flevel fl2 -  flevel fl3 -  flevel fl4 -  flevel fl5 -  flevel fl6 -  flevel )
  (:init (next fl5 fl6) (fuel-level plane2 fl0) (at person1 city3) (at plane2 city2) (next fl1 fl2) (next fl2 fl3) (next fl3 fl4) (next fl0 fl1) (next fl4 fl5) (in person4 plane1) (in person3 plane1) (in person2 plane1) (at plane1 city3) (fuel-level plane1 fl4) (not (at plane1 plane1)) (not (at plane1 plane2)) (not (at plane1 person1)) (not (at plane1 person2)) (not (at plane1 person3)) (not (at plane1 person4)) (not (at plane1 city0)) (not (at plane1 city1)) (not (at plane1 city2)) (not (at plane1 fl0)) (not (at plane1 fl1)) (not (at plane1 fl2)) (not (at plane1 fl3)) (not (at plane1 fl4)) (not (at plane1 fl5)) (not (at plane1 fl6)) (not (at plane2 plane1)) (not (at plane2 plane2)) (not (at plane2 person1)) (not (at plane2 person2)) (not (at plane2 person3)) (not (at plane2 person4)) (not (at plane2 city0)) (not (at plane2 city1)) (not (at plane2 city3)) (not (at plane2 fl0)) (not (at plane2 fl1)) (not (at plane2 fl2)) (not (at plane2 fl3)) (not (at plane2 fl4)) (not (at plane2 fl5)) (not (at plane2 fl6)) (not (at person1 plane1)) (not (at person1 plane2)) (not (at person1 person1)) (not (at person1 person2)) (not (at person1 person3)) (not (at person1 person4)) (not (at person1 city0)) (not (at person1 city1)) (not (at person1 city2)) (not (at person1 fl0)) (not (at person1 fl1)) (not (at person1 fl2)) (not (at person1 fl3)) (not (at person1 fl4)) (not (at person1 fl5)) (not (at person1 fl6)) (not (at person2 plane1)) (not (at person2 plane2)) (not (at person2 person1)) (not (at person2 person2)) (not (at person2 person3)) (not (at person2 person4)) (not (at person2 city0)) (not (at person2 city1)) (not (at person2 city2)) (not (at person2 city3)) (not (at person2 fl0)) (not (at person2 fl1)) (not (at person2 fl2)) (not (at person2 fl3)) (not (at person2 fl4)) (not (at person2 fl5)) (not (at person2 fl6)) (not (at person3 plane1)) (not (at person3 plane2)) (not (at person3 person1)) (not (at person3 person2)) (not (at person3 person3)) (not (at person3 person4)) (not (at person3 city0)) (not (at person3 city1)) (not (at person3 city2)) (not (at person3 city3)) (not (at person3 fl0)) (not (at person3 fl1)) (not (at person3 fl2)) (not (at person3 fl3)) (not (at person3 fl4)) (not (at person3 fl5)) (not (at person3 fl6)) (not (at person4 plane1)) (not (at person4 plane2)) (not (at person4 person1)) (not (at person4 person2)) (not (at person4 person3)) (not (at person4 person4)) (not (at person4 city0)) (not (at person4 city1)) (not (at person4 city2)) (not (at person4 city3)) (not (at person4 fl0)) (not (at person4 fl1)) (not (at person4 fl2)) (not (at person4 fl3)) (not (at person4 fl4)) (not (at person4 fl5)) (not (at person4 fl6)) (not (at city0 plane1)) (not (at city0 plane2)) (not (at city0 person1)) (not (at city0 person2)) (not (at city0 person3)) (not (at city0 person4)) (not (at city0 city0)) (not (at city0 city1)) (not (at city0 city2)) (not (at city0 city3)) (not (at city0 fl0)) (not (at city0 fl1)) (not (at city0 fl2)) (not (at city0 fl3)) (not (at city0 fl4)) (not (at city0 fl5)) (not (at city0 fl6)) (not (at city1 plane1)) (not (at city1 plane2)) (not (at city1 person1)) (not (at city1 person2)) (not (at city1 person3)) (not (at city1 person4)) (not (at city1 city0)) (not (at city1 city1)) (not (at city1 city2)) (not (at city1 city3)) (not (at city1 fl0)) (not (at city1 fl1)) (not (at city1 fl2)) (not (at city1 fl3)) (not (at city1 fl4)) (not (at city1 fl5)) (not (at city1 fl6)) (not (at city2 plane1)) (not (at city2 plane2)) (not (at city2 person1)) (not (at city2 person2)) (not (at city2 person3)) (not (at city2 person4)) (not (at city2 city0)) (not (at city2 city1)) (not (at city2 city2)) (not (at city2 city3)) (not (at city2 fl0)) (not (at city2 fl1)) (not (at city2 fl2)) (not (at city2 fl3)) (not (at city2 fl4)) (not (at city2 fl5)) (not (at city2 fl6)) (not (at city3 plane1)) (not (at city3 plane2)) (not (at city3 person1)) (not (at city3 person2)) (not (at city3 person3)) (not (at city3 person4)) (not (at city3 city0)) (not (at city3 city1)) (not (at city3 city2)) (not (at city3 city3)) (not (at city3 fl0)) (not (at city3 fl1)) (not (at city3 fl2)) (not (at city3 fl3)) (not (at city3 fl4)) (not (at city3 fl5)) (not (at city3 fl6)) (not (at fl0 plane1)) (not (at fl0 plane2)) (not (at fl0 person1)) (not (at fl0 person2)) (not (at fl0 person3)) (not (at fl0 person4)) (not (at fl0 city0)) (not (at fl0 city1)) (not (at fl0 city2)) (not (at fl0 city3)) (not (at fl0 fl0)) (not (at fl0 fl1)) (not (at fl0 fl2)) (not (at fl0 fl3)) (not (at fl0 fl4)) (not (at fl0 fl5)) (not (at fl0 fl6)) (not (at fl1 plane1)) (not (at fl1 plane2)) (not (at fl1 person1)) (not (at fl1 person2)) (not (at fl1 person3)) (not (at fl1 person4)) (not (at fl1 city0)) (not (at fl1 city1)) (not (at fl1 city2)) (not (at fl1 city3)) (not (at fl1 fl0)) (not (at fl1 fl1)) (not (at fl1 fl2)) (not (at fl1 fl3)) (not (at fl1 fl4)) (not (at fl1 fl5)) (not (at fl1 fl6)) (not (at fl2 plane1)) (not (at fl2 plane2)) (not (at fl2 person1)) (not (at fl2 person2)) (not (at fl2 person3)) (not (at fl2 person4)) (not (at fl2 city0)) (not (at fl2 city1)) (not (at fl2 city2)) (not (at fl2 city3)) (not (at fl2 fl0)) (not (at fl2 fl1)) (not (at fl2 fl2)) (not (at fl2 fl3)) (not (at fl2 fl4)) (not (at fl2 fl5)) (not (at fl2 fl6)) (not (at fl3 plane1)) (not (at fl3 plane2)) (not (at fl3 person1)) (not (at fl3 person2)) (not (at fl3 person3)) (not (at fl3 person4)) (not (at fl3 city0)) (not (at fl3 city1)) (not (at fl3 city2)) (not (at fl3 city3)) (not (at fl3 fl0)) (not (at fl3 fl1)) (not (at fl3 fl2)) (not (at fl3 fl3)) (not (at fl3 fl4)) (not (at fl3 fl5)) (not (at fl3 fl6)) (not (at fl4 plane1)) (not (at fl4 plane2)) (not (at fl4 person1)) (not (at fl4 person2)) (not (at fl4 person3)) (not (at fl4 person4)) (not (at fl4 city0)) (not (at fl4 city1)) (not (at fl4 city2)) (not (at fl4 city3)) (not (at fl4 fl0)) (not (at fl4 fl1)) (not (at fl4 fl2)) (not (at fl4 fl3)) (not (at fl4 fl4)) (not (at fl4 fl5)) (not (at fl4 fl6)) (not (at fl5 plane1)) (not (at fl5 plane2)) (not (at fl5 person1)) (not (at fl5 person2)) (not (at fl5 person3)) (not (at fl5 person4)) (not (at fl5 city0)) (not (at fl5 city1)) (not (at fl5 city2)) (not (at fl5 city3)) (not (at fl5 fl0)) (not (at fl5 fl1)) (not (at fl5 fl2)) (not (at fl5 fl3)) (not (at fl5 fl4)) (not (at fl5 fl5)) (not (at fl5 fl6)) (not (at fl6 plane1)) (not (at fl6 plane2)) (not (at fl6 person1)) (not (at fl6 person2)) (not (at fl6 person3)) (not (at fl6 person4)) (not (at fl6 city0)) (not (at fl6 city1)) (not (at fl6 city2)) (not (at fl6 city3)) (not (at fl6 fl0)) (not (at fl6 fl1)) (not (at fl6 fl2)) (not (at fl6 fl3)) (not (at fl6 fl4)) (not (at fl6 fl5)) (not (at fl6 fl6)) (not (in plane1 plane1)) (not (in plane1 plane2)) (not (in plane1 person1)) (not (in plane1 person2)) (not (in plane1 person3)) (not (in plane1 person4)) (not (in plane1 city0)) (not (in plane1 city1)) (not (in plane1 city2)) (not (in plane1 city3)) (not (in plane1 fl0)) (not (in plane1 fl1)) (not (in plane1 fl2)) (not (in plane1 fl3)) (not (in plane1 fl4)) (not (in plane1 fl5)) (not (in plane1 fl6)) (not (in plane2 plane1)) (not (in plane2 plane2)) (not (in plane2 person1)) (not (in plane2 person2)) (not (in plane2 person3)) (not (in plane2 person4)) (not (in plane2 city0)) (not (in plane2 city1)) (not (in plane2 city2)) (not (in plane2 city3)) (not (in plane2 fl0)) (not (in plane2 fl1)) (not (in plane2 fl2)) (not (in plane2 fl3)) (not (in plane2 fl4)) (not (in plane2 fl5)) (not (in plane2 fl6)) (not (in person1 plane1)) (not (in person1 plane2)) (not (in person1 person1)) (not (in person1 person2)) (not (in person1 person3)) (not (in person1 person4)) (not (in person1 city0)) (not (in person1 city1)) (not (in person1 city2)) (not (in person1 city3)) (not (in person1 fl0)) (not (in person1 fl1)) (not (in person1 fl2)) (not (in person1 fl3)) (not (in person1 fl4)) (not (in person1 fl5)) (not (in person1 fl6)) (not (in person2 plane2)) (not (in person2 person1)) (not (in person2 person2)) (not (in person2 person3)) (not (in person2 person4)) (not (in person2 city0)) (not (in person2 city1)) (not (in person2 city2)) (not (in person2 city3)) (not (in person2 fl0)) (not (in person2 fl1)) (not (in person2 fl2)) (not (in person2 fl3)) (not (in person2 fl4)) (not (in person2 fl5)) (not (in person2 fl6)) (not (in person3 plane2)) (not (in person3 person1)) (not (in person3 person2)) (not (in person3 person3)) (not (in person3 person4)) (not (in person3 city0)) (not (in person3 city1)) (not (in person3 city2)) (not (in person3 city3)) (not (in person3 fl0)) (not (in person3 fl1)) (not (in person3 fl2)) (not (in person3 fl3)) (not (in person3 fl4)) (not (in person3 fl5)) (not (in person3 fl6)) (not (in person4 plane2)) (not (in person4 person1)) (not (in person4 person2)) (not (in person4 person3)) (not (in person4 person4)) (not (in person4 city0)) (not (in person4 city1)) (not (in person4 city2)) (not (in person4 city3)) (not (in person4 fl0)) (not (in person4 fl1)) (not (in person4 fl2)) (not (in person4 fl3)) (not (in person4 fl4)) (not (in person4 fl5)) (not (in person4 fl6)) (not (in city0 plane1)) (not (in city0 plane2)) (not (in city0 person1)) (not (in city0 person2)) (not (in city0 person3)) (not (in city0 person4)) (not (in city0 city0)) (not (in city0 city1)) (not (in city0 city2)) (not (in city0 city3)) (not (in city0 fl0)) (not (in city0 fl1)) (not (in city0 fl2)) (not (in city0 fl3)) (not (in city0 fl4)) (not (in city0 fl5)) (not (in city0 fl6)) (not (in city1 plane1)) (not (in city1 plane2)) (not (in city1 person1)) (not (in city1 person2)) (not (in city1 person3)) (not (in city1 person4)) (not (in city1 city0)) (not (in city1 city1)) (not (in city1 city2)) (not (in city1 city3)) (not (in city1 fl0)) (not (in city1 fl1)) (not (in city1 fl2)) (not (in city1 fl3)) (not (in city1 fl4)) (not (in city1 fl5)) (not (in city1 fl6)) (not (in city2 plane1)) (not (in city2 plane2)) (not (in city2 person1)) (not (in city2 person2)) (not (in city2 person3)) (not (in city2 person4)) (not (in city2 city0)) (not (in city2 city1)) (not (in city2 city2)) (not (in city2 city3)) (not (in city2 fl0)) (not (in city2 fl1)) (not (in city2 fl2)) (not (in city2 fl3)) (not (in city2 fl4)) (not (in city2 fl5)) (not (in city2 fl6)) (not (in city3 plane1)) (not (in city3 plane2)) (not (in city3 person1)) (not (in city3 person2)) (not (in city3 person3)) (not (in city3 person4)) (not (in city3 city0)) (not (in city3 city1)) (not (in city3 city2)) (not (in city3 city3)) (not (in city3 fl0)) (not (in city3 fl1)) (not (in city3 fl2)) (not (in city3 fl3)) (not (in city3 fl4)) (not (in city3 fl5)) (not (in city3 fl6)) (not (in fl0 plane1)) (not (in fl0 plane2)) (not (in fl0 person1)) (not (in fl0 person2)) (not (in fl0 person3)) (not (in fl0 person4)) (not (in fl0 city0)) (not (in fl0 city1)) (not (in fl0 city2)) (not (in fl0 city3)) (not (in fl0 fl0)) (not (in fl0 fl1)) (not (in fl0 fl2)) (not (in fl0 fl3)) (not (in fl0 fl4)) (not (in fl0 fl5)) (not (in fl0 fl6)) (not (in fl1 plane1)) (not (in fl1 plane2)) (not (in fl1 person1)) (not (in fl1 person2)) (not (in fl1 person3)) (not (in fl1 person4)) (not (in fl1 city0)) (not (in fl1 city1)) (not (in fl1 city2)) (not (in fl1 city3)) (not (in fl1 fl0)) (not (in fl1 fl1)) (not (in fl1 fl2)) (not (in fl1 fl3)) (not (in fl1 fl4)) (not (in fl1 fl5)) (not (in fl1 fl6)) (not (in fl2 plane1)) (not (in fl2 plane2)) (not (in fl2 person1)) (not (in fl2 person2)) (not (in fl2 person3)) (not (in fl2 person4)) (not (in fl2 city0)) (not (in fl2 city1)) (not (in fl2 city2)) (not (in fl2 city3)) (not (in fl2 fl0)) (not (in fl2 fl1)) (not (in fl2 fl2)) (not (in fl2 fl3)) (not (in fl2 fl4)) (not (in fl2 fl5)) (not (in fl2 fl6)) (not (in fl3 plane1)) (not (in fl3 plane2)) (not (in fl3 person1)) (not (in fl3 person2)) (not (in fl3 person3)) (not (in fl3 person4)) (not (in fl3 city0)) (not (in fl3 city1)) (not (in fl3 city2)) (not (in fl3 city3)) (not (in fl3 fl0)) (not (in fl3 fl1)) (not (in fl3 fl2)) (not (in fl3 fl3)) (not (in fl3 fl4)) (not (in fl3 fl5)) (not (in fl3 fl6)) (not (in fl4 plane1)) (not (in fl4 plane2)) (not (in fl4 person1)) (not (in fl4 person2)) (not (in fl4 person3)) (not (in fl4 person4)) (not (in fl4 city0)) (not (in fl4 city1)) (not (in fl4 city2)) (not (in fl4 city3)) (not (in fl4 fl0)) (not (in fl4 fl1)) (not (in fl4 fl2)) (not (in fl4 fl3)) (not (in fl4 fl4)) (not (in fl4 fl5)) (not (in fl4 fl6)) (not (in fl5 plane1)) (not (in fl5 plane2)) (not (in fl5 person1)) (not (in fl5 person2)) (not (in fl5 person3)) (not (in fl5 person4)) (not (in fl5 city0)) (not (in fl5 city1)) (not (in fl5 city2)) (not (in fl5 city3)) (not (in fl5 fl0)) (not (in fl5 fl1)) (not (in fl5 fl2)) (not (in fl5 fl3)) (not (in fl5 fl4)) (not (in fl5 fl5)) (not (in fl5 fl6)) (not (in fl6 plane1)) (not (in fl6 plane2)) (not (in fl6 person1)) (not (in fl6 person2)) (not (in fl6 person3)) (not (in fl6 person4)) (not (in fl6 city0)) (not (in fl6 city1)) (not (in fl6 city2)) (not (in fl6 city3)) (not (in fl6 fl0)) (not (in fl6 fl1)) (not (in fl6 fl2)) (not (in fl6 fl3)) (not (in fl6 fl4)) (not (in fl6 fl5)) (not (in fl6 fl6)) (not (fuel-level plane1 plane1)) (not (fuel-level plane1 plane2)) (not (fuel-level plane1 person1)) (not (fuel-level plane1 person2)) (not (fuel-level plane1 person3)) (not (fuel-level plane1 person4)) (not (fuel-level plane1 city0)) (not (fuel-level plane1 city1)) (not (fuel-level plane1 city2)) (not (fuel-level plane1 city3)) (not (fuel-level plane1 fl0)) (not (fuel-level plane1 fl1)) (not (fuel-level plane1 fl2)) (not (fuel-level plane1 fl3)) (not (fuel-level plane1 fl5)) (not (fuel-level plane1 fl6)) (not (fuel-level plane2 plane1)) (not (fuel-level plane2 plane2)) (not (fuel-level plane2 person1)) (not (fuel-level plane2 person2)) (not (fuel-level plane2 person3)) (not (fuel-level plane2 person4)) (not (fuel-level plane2 city0)) (not (fuel-level plane2 city1)) (not (fuel-level plane2 city2)) (not (fuel-level plane2 city3)) (not (fuel-level plane2 fl1)) (not (fuel-level plane2 fl2)) (not (fuel-level plane2 fl3)) (not (fuel-level plane2 fl4)) (not (fuel-level plane2 fl5)) (not (fuel-level plane2 fl6)) (not (fuel-level person1 plane1)) (not (fuel-level person1 plane2)) (not (fuel-level person1 person1)) (not (fuel-level person1 person2)) (not (fuel-level person1 person3)) (not (fuel-level person1 person4)) (not (fuel-level person1 city0)) (not (fuel-level person1 city1)) (not (fuel-level person1 city2)) (not (fuel-level person1 city3)) (not (fuel-level person1 fl0)) (not (fuel-level person1 fl1)) (not (fuel-level person1 fl2)) (not (fuel-level person1 fl3)) (not (fuel-level person1 fl4)) (not (fuel-level person1 fl5)) (not (fuel-level person1 fl6)) (not (fuel-level person2 plane1)) (not (fuel-level person2 plane2)) (not (fuel-level person2 person1)) (not (fuel-level person2 person2)) (not (fuel-level person2 person3)) (not (fuel-level person2 person4)) (not (fuel-level person2 city0)) (not (fuel-level person2 city1)) (not (fuel-level person2 city2)) (not (fuel-level person2 city3)) (not (fuel-level person2 fl0)) (not (fuel-level person2 fl1)) (not (fuel-level person2 fl2)) (not (fuel-level person2 fl3)) (not (fuel-level person2 fl4)) (not (fuel-level person2 fl5)) (not (fuel-level person2 fl6)) (not (fuel-level person3 plane1)) (not (fuel-level person3 plane2)) (not (fuel-level person3 person1)) (not (fuel-level person3 person2)) (not (fuel-level person3 person3)) (not (fuel-level person3 person4)) (not (fuel-level person3 city0)) (not (fuel-level person3 city1)) (not (fuel-level person3 city2)) (not (fuel-level person3 city3)) (not (fuel-level person3 fl0)) (not (fuel-level person3 fl1)) (not (fuel-level person3 fl2)) (not (fuel-level person3 fl3)) (not (fuel-level person3 fl4)) (not (fuel-level person3 fl5)) (not (fuel-level person3 fl6)) (not (fuel-level person4 plane1)) (not (fuel-level person4 plane2)) (not (fuel-level person4 person1)) (not (fuel-level person4 person2)) (not (fuel-level person4 person3)) (not (fuel-level person4 person4)) (not (fuel-level person4 city0)) (not (fuel-level person4 city1)) (not (fuel-level person4 city2)) (not (fuel-level person4 city3)) (not (fuel-level person4 fl0)) (not (fuel-level person4 fl1)) (not (fuel-level person4 fl2)) (not (fuel-level person4 fl3)) (not (fuel-level person4 fl4)) (not (fuel-level person4 fl5)) (not (fuel-level person4 fl6)) (not (fuel-level city0 plane1)) (not (fuel-level city0 plane2)) (not (fuel-level city0 person1)) (not (fuel-level city0 person2)) (not (fuel-level city0 person3)) (not (fuel-level city0 person4)) (not (fuel-level city0 city0)) (not (fuel-level city0 city1)) (not (fuel-level city0 city2)) (not (fuel-level city0 city3)) (not (fuel-level city0 fl0)) (not (fuel-level city0 fl1)) (not (fuel-level city0 fl2)) (not (fuel-level city0 fl3)) (not (fuel-level city0 fl4)) (not (fuel-level city0 fl5)) (not (fuel-level city0 fl6)) (not (fuel-level city1 plane1)) (not (fuel-level city1 plane2)) (not (fuel-level city1 person1)) (not (fuel-level city1 person2)) (not (fuel-level city1 person3)) (not (fuel-level city1 person4)) (not (fuel-level city1 city0)) (not (fuel-level city1 city1)) (not (fuel-level city1 city2)) (not (fuel-level city1 city3)) (not (fuel-level city1 fl0)) (not (fuel-level city1 fl1)) (not (fuel-level city1 fl2)) (not (fuel-level city1 fl3)) (not (fuel-level city1 fl4)) (not (fuel-level city1 fl5)) (not (fuel-level city1 fl6)) (not (fuel-level city2 plane1)) (not (fuel-level city2 plane2)) (not (fuel-level city2 person1)) (not (fuel-level city2 person2)) (not (fuel-level city2 person3)) (not (fuel-level city2 person4)) (not (fuel-level city2 city0)) (not (fuel-level city2 city1)) (not (fuel-level city2 city2)) (not (fuel-level city2 city3)) (not (fuel-level city2 fl0)) (not (fuel-level city2 fl1)) (not (fuel-level city2 fl2)) (not (fuel-level city2 fl3)) (not (fuel-level city2 fl4)) (not (fuel-level city2 fl5)) (not (fuel-level city2 fl6)) (not (fuel-level city3 plane1)) (not (fuel-level city3 plane2)) (not (fuel-level city3 person1)) (not (fuel-level city3 person2)) (not (fuel-level city3 person3)) (not (fuel-level city3 person4)) (not (fuel-level city3 city0)) (not (fuel-level city3 city1)) (not (fuel-level city3 city2)) (not (fuel-level city3 city3)) (not (fuel-level city3 fl0)) (not (fuel-level city3 fl1)) (not (fuel-level city3 fl2)) (not (fuel-level city3 fl3)) (not (fuel-level city3 fl4)) (not (fuel-level city3 fl5)) (not (fuel-level city3 fl6)) (not (fuel-level fl0 plane1)) (not (fuel-level fl0 plane2)) (not (fuel-level fl0 person1)) (not (fuel-level fl0 person2)) (not (fuel-level fl0 person3)) (not (fuel-level fl0 person4)) (not (fuel-level fl0 city0)) (not (fuel-level fl0 city1)) (not (fuel-level fl0 city2)) (not (fuel-level fl0 city3)) (not (fuel-level fl0 fl0)) (not (fuel-level fl0 fl1)) (not (fuel-level fl0 fl2)) (not (fuel-level fl0 fl3)) (not (fuel-level fl0 fl4)) (not (fuel-level fl0 fl5)) (not (fuel-level fl0 fl6)) (not (fuel-level fl1 plane1)) (not (fuel-level fl1 plane2)) (not (fuel-level fl1 person1)) (not (fuel-level fl1 person2)) (not (fuel-level fl1 person3)) (not (fuel-level fl1 person4)) (not (fuel-level fl1 city0)) (not (fuel-level fl1 city1)) (not (fuel-level fl1 city2)) (not (fuel-level fl1 city3)) (not (fuel-level fl1 fl0)) (not (fuel-level fl1 fl1)) (not (fuel-level fl1 fl2)) (not (fuel-level fl1 fl3)) (not (fuel-level fl1 fl4)) (not (fuel-level fl1 fl5)) (not (fuel-level fl1 fl6)) (not (fuel-level fl2 plane1)) (not (fuel-level fl2 plane2)) (not (fuel-level fl2 person1)) (not (fuel-level fl2 person2)) (not (fuel-level fl2 person3)) (not (fuel-level fl2 person4)) (not (fuel-level fl2 city0)) (not (fuel-level fl2 city1)) (not (fuel-level fl2 city2)) (not (fuel-level fl2 city3)) (not (fuel-level fl2 fl0)) (not (fuel-level fl2 fl1)) (not (fuel-level fl2 fl2)) (not (fuel-level fl2 fl3)) (not (fuel-level fl2 fl4)) (not (fuel-level fl2 fl5)) (not (fuel-level fl2 fl6)) (not (fuel-level fl3 plane1)) (not (fuel-level fl3 plane2)) (not (fuel-level fl3 person1)) (not (fuel-level fl3 person2)) (not (fuel-level fl3 person3)) (not (fuel-level fl3 person4)) (not (fuel-level fl3 city0)) (not (fuel-level fl3 city1)) (not (fuel-level fl3 city2)) (not (fuel-level fl3 city3)) (not (fuel-level fl3 fl0)) (not (fuel-level fl3 fl1)) (not (fuel-level fl3 fl2)) (not (fuel-level fl3 fl3)) (not (fuel-level fl3 fl4)) (not (fuel-level fl3 fl5)) (not (fuel-level fl3 fl6)) (not (fuel-level fl4 plane1)) (not (fuel-level fl4 plane2)) (not (fuel-level fl4 person1)) (not (fuel-level fl4 person2)) (not (fuel-level fl4 person3)) (not (fuel-level fl4 person4)) (not (fuel-level fl4 city0)) (not (fuel-level fl4 city1)) (not (fuel-level fl4 city2)) (not (fuel-level fl4 city3)) (not (fuel-level fl4 fl0)) (not (fuel-level fl4 fl1)) (not (fuel-level fl4 fl2)) (not (fuel-level fl4 fl3)) (not (fuel-level fl4 fl4)) (not (fuel-level fl4 fl5)) (not (fuel-level fl4 fl6)) (not (fuel-level fl5 plane1)) (not (fuel-level fl5 plane2)) (not (fuel-level fl5 person1)) (not (fuel-level fl5 person2)) (not (fuel-level fl5 person3)) (not (fuel-level fl5 person4)) (not (fuel-level fl5 city0)) (not (fuel-level fl5 city1)) (not (fuel-level fl5 city2)) (not (fuel-level fl5 city3)) (not (fuel-level fl5 fl0)) (not (fuel-level fl5 fl1)) (not (fuel-level fl5 fl2)) (not (fuel-level fl5 fl3)) (not (fuel-level fl5 fl4)) (not (fuel-level fl5 fl5)) (not (fuel-level fl5 fl6)) (not (fuel-level fl6 plane1)) (not (fuel-level fl6 plane2)) (not (fuel-level fl6 person1)) (not (fuel-level fl6 person2)) (not (fuel-level fl6 person3)) (not (fuel-level fl6 person4)) (not (fuel-level fl6 city0)) (not (fuel-level fl6 city1)) (not (fuel-level fl6 city2)) (not (fuel-level fl6 city3)) (not (fuel-level fl6 fl0)) (not (fuel-level fl6 fl1)) (not (fuel-level fl6 fl2)) (not (fuel-level fl6 fl3)) (not (fuel-level fl6 fl4)) (not (fuel-level fl6 fl5)) (not (fuel-level fl6 fl6)) (not (next plane1 plane1)) (not (next plane1 plane2)) (not (next plane1 person1)) (not (next plane1 person2)) (not (next plane1 person3)) (not (next plane1 person4)) (not (next plane1 city0)) (not (next plane1 city1)) (not (next plane1 city2)) (not (next plane1 city3)) (not (next plane1 fl0)) (not (next plane1 fl1)) (not (next plane1 fl2)) (not (next plane1 fl3)) (not (next plane1 fl4)) (not (next plane1 fl5)) (not (next plane1 fl6)) (not (next plane2 plane1)) (not (next plane2 plane2)) (not (next plane2 person1)) (not (next plane2 person2)) (not (next plane2 person3)) (not (next plane2 person4)) (not (next plane2 city0)) (not (next plane2 city1)) (not (next plane2 city2)) (not (next plane2 city3)) (not (next plane2 fl0)) (not (next plane2 fl1)) (not (next plane2 fl2)) (not (next plane2 fl3)) (not (next plane2 fl4)) (not (next plane2 fl5)) (not (next plane2 fl6)) (not (next person1 plane1)) (not (next person1 plane2)) (not (next person1 person1)) (not (next person1 person2)) (not (next person1 person3)) (not (next person1 person4)) (not (next person1 city0)) (not (next person1 city1)) (not (next person1 city2)) (not (next person1 city3)) (not (next person1 fl0)) (not (next person1 fl1)) (not (next person1 fl2)) (not (next person1 fl3)) (not (next person1 fl4)) (not (next person1 fl5)) (not (next person1 fl6)) (not (next person2 plane1)) (not (next person2 plane2)) (not (next person2 person1)) (not (next person2 person2)) (not (next person2 person3)) (not (next person2 person4)) (not (next person2 city0)) (not (next person2 city1)) (not (next person2 city2)) (not (next person2 city3)) (not (next person2 fl0)) (not (next person2 fl1)) (not (next person2 fl2)) (not (next person2 fl3)) (not (next person2 fl4)) (not (next person2 fl5)) (not (next person2 fl6)) (not (next person3 plane1)) (not (next person3 plane2)) (not (next person3 person1)) (not (next person3 person2)) (not (next person3 person3)) (not (next person3 person4)) (not (next person3 city0)) (not (next person3 city1)) (not (next person3 city2)) (not (next person3 city3)) (not (next person3 fl0)) (not (next person3 fl1)) (not (next person3 fl2)) (not (next person3 fl3)) (not (next person3 fl4)) (not (next person3 fl5)) (not (next person3 fl6)) (not (next person4 plane1)) (not (next person4 plane2)) (not (next person4 person1)) (not (next person4 person2)) (not (next person4 person3)) (not (next person4 person4)) (not (next person4 city0)) (not (next person4 city1)) (not (next person4 city2)) (not (next person4 city3)) (not (next person4 fl0)) (not (next person4 fl1)) (not (next person4 fl2)) (not (next person4 fl3)) (not (next person4 fl4)) (not (next person4 fl5)) (not (next person4 fl6)) (not (next city0 plane1)) (not (next city0 plane2)) (not (next city0 person1)) (not (next city0 person2)) (not (next city0 person3)) (not (next city0 person4)) (not (next city0 city0)) (not (next city0 city1)) (not (next city0 city2)) (not (next city0 city3)) (not (next city0 fl0)) (not (next city0 fl1)) (not (next city0 fl2)) (not (next city0 fl3)) (not (next city0 fl4)) (not (next city0 fl5)) (not (next city0 fl6)) (not (next city1 plane1)) (not (next city1 plane2)) (not (next city1 person1)) (not (next city1 person2)) (not (next city1 person3)) (not (next city1 person4)) (not (next city1 city0)) (not (next city1 city1)) (not (next city1 city2)) (not (next city1 city3)) (not (next city1 fl0)) (not (next city1 fl1)) (not (next city1 fl2)) (not (next city1 fl3)) (not (next city1 fl4)) (not (next city1 fl5)) (not (next city1 fl6)) (not (next city2 plane1)) (not (next city2 plane2)) (not (next city2 person1)) (not (next city2 person2)) (not (next city2 person3)) (not (next city2 person4)) (not (next city2 city0)) (not (next city2 city1)) (not (next city2 city2)) (not (next city2 city3)) (not (next city2 fl0)) (not (next city2 fl1)) (not (next city2 fl2)) (not (next city2 fl3)) (not (next city2 fl4)) (not (next city2 fl5)) (not (next city2 fl6)) (not (next city3 plane1)) (not (next city3 plane2)) (not (next city3 person1)) (not (next city3 person2)) (not (next city3 person3)) (not (next city3 person4)) (not (next city3 city0)) (not (next city3 city1)) (not (next city3 city2)) (not (next city3 city3)) (not (next city3 fl0)) (not (next city3 fl1)) (not (next city3 fl2)) (not (next city3 fl3)) (not (next city3 fl4)) (not (next city3 fl5)) (not (next city3 fl6)) (not (next fl0 plane1)) (not (next fl0 plane2)) (not (next fl0 person1)) (not (next fl0 person2)) (not (next fl0 person3)) (not (next fl0 person4)) (not (next fl0 city0)) (not (next fl0 city1)) (not (next fl0 city2)) (not (next fl0 city3)) (not (next fl0 fl0)) (not (next fl0 fl2)) (not (next fl0 fl3)) (not (next fl0 fl4)) (not (next fl0 fl5)) (not (next fl0 fl6)) (not (next fl1 plane1)) (not (next fl1 plane2)) (not (next fl1 person1)) (not (next fl1 person2)) (not (next fl1 person3)) (not (next fl1 person4)) (not (next fl1 city0)) (not (next fl1 city1)) (not (next fl1 city2)) (not (next fl1 city3)) (not (next fl1 fl0)) (not (next fl1 fl1)) (not (next fl1 fl3)) (not (next fl1 fl4)) (not (next fl1 fl5)) (not (next fl1 fl6)) (not (next fl2 plane1)) (not (next fl2 plane2)) (not (next fl2 person1)) (not (next fl2 person2)) (not (next fl2 person3)) (not (next fl2 person4)) (not (next fl2 city0)) (not (next fl2 city1)) (not (next fl2 city2)) (not (next fl2 city3)) (not (next fl2 fl0)) (not (next fl2 fl1)) (not (next fl2 fl2)) (not (next fl2 fl4)) (not (next fl2 fl5)) (not (next fl2 fl6)) (not (next fl3 plane1)) (not (next fl3 plane2)) (not (next fl3 person1)) (not (next fl3 person2)) (not (next fl3 person3)) (not (next fl3 person4)) (not (next fl3 city0)) (not (next fl3 city1)) (not (next fl3 city2)) (not (next fl3 city3)) (not (next fl3 fl0)) (not (next fl3 fl1)) (not (next fl3 fl2)) (not (next fl3 fl3)) (not (next fl3 fl5)) (not (next fl3 fl6)) (not (next fl4 plane1)) (not (next fl4 plane2)) (not (next fl4 person1)) (not (next fl4 person2)) (not (next fl4 person3)) (not (next fl4 person4)) (not (next fl4 city0)) (not (next fl4 city1)) (not (next fl4 city2)) (not (next fl4 city3)) (not (next fl4 fl0)) (not (next fl4 fl1)) (not (next fl4 fl2)) (not (next fl4 fl3)) (not (next fl4 fl4)) (not (next fl4 fl6)) (not (next fl5 plane1)) (not (next fl5 plane2)) (not (next fl5 person1)) (not (next fl5 person2)) (not (next fl5 person3)) (not (next fl5 person4)) (not (next fl5 city0)) (not (next fl5 city1)) (not (next fl5 city2)) (not (next fl5 city3)) (not (next fl5 fl0)) (not (next fl5 fl1)) (not (next fl5 fl2)) (not (next fl5 fl3)) (not (next fl5 fl4)) (not (next fl5 fl5)) (not (next fl6 plane1)) (not (next fl6 plane2)) (not (next fl6 person1)) (not (next fl6 person2)) (not (next fl6 person3)) (not (next fl6 person4)) (not (next fl6 city0)) (not (next fl6 city1)) (not (next fl6 city2)) (not (next fl6 city3)) (not (next fl6 fl0)) (not (next fl6 fl1)) (not (next fl6 fl2)) (not (next fl6 fl3)) (not (next fl6 fl4)) (not (next fl6 fl5)) (not (next fl6 fl6)) )
  (:goal (and (next fl5 fl6)(fuel-level plane2 fl0)(at plane2 city2)(next fl1 fl2)(next fl2 fl3)(next fl3 fl4)(next fl0 fl1)(next fl4 fl5)(at person4 city3)(at person3 city3)(at person2 city3)(in person1 plane1)(at plane1 city2)(fuel-level plane1 fl3))))