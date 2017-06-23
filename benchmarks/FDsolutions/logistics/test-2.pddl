(define (problem logistics-4-0)
  (:domain logistics)
  (:objects apn1 -  airplane pos2 -  location apt2 -  airport apt1 -  airport pos1 -  location cit1 -  city cit2 -  city tru2 -  truck tru1 -  truck obj23 -  package obj22 -  package obj21 -  package obj13 -  package obj12 -  package obj11 -  package )
  (:init (in-city pos1 cit1) (in-city apt1 cit1) (at obj22 pos2) (at tru1 pos1) (at apn1 apt2) (in-city apt2 cit2) (at obj11 pos1) (at obj13 pos1) (at obj12 pos1) (in-city pos2 cit2) (at tru2 apt2) (at obj23 apt2) (at obj21 apt2) (not (in-city apn1 apn1)) (not (in-city apn1 apt1)) (not (in-city apn1 apt2)) (not (in-city apn1 pos2)) (not (in-city apn1 pos1)) (not (in-city apn1 cit2)) (not (in-city apn1 cit1)) (not (in-city apn1 tru2)) (not (in-city apn1 tru1)) (not (in-city apn1 obj23)) (not (in-city apn1 obj22)) (not (in-city apn1 obj21)) (not (in-city apn1 obj13)) (not (in-city apn1 obj12)) (not (in-city apn1 obj11)) (not (in-city apt1 apn1)) (not (in-city apt1 apt1)) (not (in-city apt1 apt2)) (not (in-city apt1 pos2)) (not (in-city apt1 pos1)) (not (in-city apt1 cit2)) (not (in-city apt1 tru2)) (not (in-city apt1 tru1)) (not (in-city apt1 obj23)) (not (in-city apt1 obj22)) (not (in-city apt1 obj21)) (not (in-city apt1 obj13)) (not (in-city apt1 obj12)) (not (in-city apt1 obj11)) (not (in-city apt2 apn1)) (not (in-city apt2 apt1)) (not (in-city apt2 apt2)) (not (in-city apt2 pos2)) (not (in-city apt2 pos1)) (not (in-city apt2 cit1)) (not (in-city apt2 tru2)) (not (in-city apt2 tru1)) (not (in-city apt2 obj23)) (not (in-city apt2 obj22)) (not (in-city apt2 obj21)) (not (in-city apt2 obj13)) (not (in-city apt2 obj12)) (not (in-city apt2 obj11)) (not (in-city pos2 apn1)) (not (in-city pos2 apt1)) (not (in-city pos2 apt2)) (not (in-city pos2 pos2)) (not (in-city pos2 pos1)) (not (in-city pos2 cit1)) (not (in-city pos2 tru2)) (not (in-city pos2 tru1)) (not (in-city pos2 obj23)) (not (in-city pos2 obj22)) (not (in-city pos2 obj21)) (not (in-city pos2 obj13)) (not (in-city pos2 obj12)) (not (in-city pos2 obj11)) (not (in-city pos1 apn1)) (not (in-city pos1 apt1)) (not (in-city pos1 apt2)) (not (in-city pos1 pos2)) (not (in-city pos1 pos1)) (not (in-city pos1 cit2)) (not (in-city pos1 tru2)) (not (in-city pos1 tru1)) (not (in-city pos1 obj23)) (not (in-city pos1 obj22)) (not (in-city pos1 obj21)) (not (in-city pos1 obj13)) (not (in-city pos1 obj12)) (not (in-city pos1 obj11)) (not (in-city cit2 apn1)) (not (in-city cit2 apt1)) (not (in-city cit2 apt2)) (not (in-city cit2 pos2)) (not (in-city cit2 pos1)) (not (in-city cit2 cit2)) (not (in-city cit2 cit1)) (not (in-city cit2 tru2)) (not (in-city cit2 tru1)) (not (in-city cit2 obj23)) (not (in-city cit2 obj22)) (not (in-city cit2 obj21)) (not (in-city cit2 obj13)) (not (in-city cit2 obj12)) (not (in-city cit2 obj11)) (not (in-city cit1 apn1)) (not (in-city cit1 apt1)) (not (in-city cit1 apt2)) (not (in-city cit1 pos2)) (not (in-city cit1 pos1)) (not (in-city cit1 cit2)) (not (in-city cit1 cit1)) (not (in-city cit1 tru2)) (not (in-city cit1 tru1)) (not (in-city cit1 obj23)) (not (in-city cit1 obj22)) (not (in-city cit1 obj21)) (not (in-city cit1 obj13)) (not (in-city cit1 obj12)) (not (in-city cit1 obj11)) (not (in-city tru2 apn1)) (not (in-city tru2 apt1)) (not (in-city tru2 apt2)) (not (in-city tru2 pos2)) (not (in-city tru2 pos1)) (not (in-city tru2 cit2)) (not (in-city tru2 cit1)) (not (in-city tru2 tru2)) (not (in-city tru2 tru1)) (not (in-city tru2 obj23)) (not (in-city tru2 obj22)) (not (in-city tru2 obj21)) (not (in-city tru2 obj13)) (not (in-city tru2 obj12)) (not (in-city tru2 obj11)) (not (in-city tru1 apn1)) (not (in-city tru1 apt1)) (not (in-city tru1 apt2)) (not (in-city tru1 pos2)) (not (in-city tru1 pos1)) (not (in-city tru1 cit2)) (not (in-city tru1 cit1)) (not (in-city tru1 tru2)) (not (in-city tru1 tru1)) (not (in-city tru1 obj23)) (not (in-city tru1 obj22)) (not (in-city tru1 obj21)) (not (in-city tru1 obj13)) (not (in-city tru1 obj12)) (not (in-city tru1 obj11)) (not (in-city obj23 apn1)) (not (in-city obj23 apt1)) (not (in-city obj23 apt2)) (not (in-city obj23 pos2)) (not (in-city obj23 pos1)) (not (in-city obj23 cit2)) (not (in-city obj23 cit1)) (not (in-city obj23 tru2)) (not (in-city obj23 tru1)) (not (in-city obj23 obj23)) (not (in-city obj23 obj22)) (not (in-city obj23 obj21)) (not (in-city obj23 obj13)) (not (in-city obj23 obj12)) (not (in-city obj23 obj11)) (not (in-city obj22 apn1)) (not (in-city obj22 apt1)) (not (in-city obj22 apt2)) (not (in-city obj22 pos2)) (not (in-city obj22 pos1)) (not (in-city obj22 cit2)) (not (in-city obj22 cit1)) (not (in-city obj22 tru2)) (not (in-city obj22 tru1)) (not (in-city obj22 obj23)) (not (in-city obj22 obj22)) (not (in-city obj22 obj21)) (not (in-city obj22 obj13)) (not (in-city obj22 obj12)) (not (in-city obj22 obj11)) (not (in-city obj21 apn1)) (not (in-city obj21 apt1)) (not (in-city obj21 apt2)) (not (in-city obj21 pos2)) (not (in-city obj21 pos1)) (not (in-city obj21 cit2)) (not (in-city obj21 cit1)) (not (in-city obj21 tru2)) (not (in-city obj21 tru1)) (not (in-city obj21 obj23)) (not (in-city obj21 obj22)) (not (in-city obj21 obj21)) (not (in-city obj21 obj13)) (not (in-city obj21 obj12)) (not (in-city obj21 obj11)) (not (in-city obj13 apn1)) (not (in-city obj13 apt1)) (not (in-city obj13 apt2)) (not (in-city obj13 pos2)) (not (in-city obj13 pos1)) (not (in-city obj13 cit2)) (not (in-city obj13 cit1)) (not (in-city obj13 tru2)) (not (in-city obj13 tru1)) (not (in-city obj13 obj23)) (not (in-city obj13 obj22)) (not (in-city obj13 obj21)) (not (in-city obj13 obj13)) (not (in-city obj13 obj12)) (not (in-city obj13 obj11)) (not (in-city obj12 apn1)) (not (in-city obj12 apt1)) (not (in-city obj12 apt2)) (not (in-city obj12 pos2)) (not (in-city obj12 pos1)) (not (in-city obj12 cit2)) (not (in-city obj12 cit1)) (not (in-city obj12 tru2)) (not (in-city obj12 tru1)) (not (in-city obj12 obj23)) (not (in-city obj12 obj22)) (not (in-city obj12 obj21)) (not (in-city obj12 obj13)) (not (in-city obj12 obj12)) (not (in-city obj12 obj11)) (not (in-city obj11 apn1)) (not (in-city obj11 apt1)) (not (in-city obj11 apt2)) (not (in-city obj11 pos2)) (not (in-city obj11 pos1)) (not (in-city obj11 cit2)) (not (in-city obj11 cit1)) (not (in-city obj11 tru2)) (not (in-city obj11 tru1)) (not (in-city obj11 obj23)) (not (in-city obj11 obj22)) (not (in-city obj11 obj21)) (not (in-city obj11 obj13)) (not (in-city obj11 obj12)) (not (in-city obj11 obj11)) (not (at apn1 apn1)) (not (at apn1 apt1)) (not (at apn1 pos2)) (not (at apn1 pos1)) (not (at apn1 cit2)) (not (at apn1 cit1)) (not (at apn1 tru2)) (not (at apn1 tru1)) (not (at apn1 obj23)) (not (at apn1 obj22)) (not (at apn1 obj21)) (not (at apn1 obj13)) (not (at apn1 obj12)) (not (at apn1 obj11)) (not (at apt1 apn1)) (not (at apt1 apt1)) (not (at apt1 apt2)) (not (at apt1 pos2)) (not (at apt1 pos1)) (not (at apt1 cit2)) (not (at apt1 cit1)) (not (at apt1 tru2)) (not (at apt1 tru1)) (not (at apt1 obj23)) (not (at apt1 obj22)) (not (at apt1 obj21)) (not (at apt1 obj13)) (not (at apt1 obj12)) (not (at apt1 obj11)) (not (at apt2 apn1)) (not (at apt2 apt1)) (not (at apt2 apt2)) (not (at apt2 pos2)) (not (at apt2 pos1)) (not (at apt2 cit2)) (not (at apt2 cit1)) (not (at apt2 tru2)) (not (at apt2 tru1)) (not (at apt2 obj23)) (not (at apt2 obj22)) (not (at apt2 obj21)) (not (at apt2 obj13)) (not (at apt2 obj12)) (not (at apt2 obj11)) (not (at pos2 apn1)) (not (at pos2 apt1)) (not (at pos2 apt2)) (not (at pos2 pos2)) (not (at pos2 pos1)) (not (at pos2 cit2)) (not (at pos2 cit1)) (not (at pos2 tru2)) (not (at pos2 tru1)) (not (at pos2 obj23)) (not (at pos2 obj22)) (not (at pos2 obj21)) (not (at pos2 obj13)) (not (at pos2 obj12)) (not (at pos2 obj11)) (not (at pos1 apn1)) (not (at pos1 apt1)) (not (at pos1 apt2)) (not (at pos1 pos2)) (not (at pos1 pos1)) (not (at pos1 cit2)) (not (at pos1 cit1)) (not (at pos1 tru2)) (not (at pos1 tru1)) (not (at pos1 obj23)) (not (at pos1 obj22)) (not (at pos1 obj21)) (not (at pos1 obj13)) (not (at pos1 obj12)) (not (at pos1 obj11)) (not (at cit2 apn1)) (not (at cit2 apt1)) (not (at cit2 apt2)) (not (at cit2 pos2)) (not (at cit2 pos1)) (not (at cit2 cit2)) (not (at cit2 cit1)) (not (at cit2 tru2)) (not (at cit2 tru1)) (not (at cit2 obj23)) (not (at cit2 obj22)) (not (at cit2 obj21)) (not (at cit2 obj13)) (not (at cit2 obj12)) (not (at cit2 obj11)) (not (at cit1 apn1)) (not (at cit1 apt1)) (not (at cit1 apt2)) (not (at cit1 pos2)) (not (at cit1 pos1)) (not (at cit1 cit2)) (not (at cit1 cit1)) (not (at cit1 tru2)) (not (at cit1 tru1)) (not (at cit1 obj23)) (not (at cit1 obj22)) (not (at cit1 obj21)) (not (at cit1 obj13)) (not (at cit1 obj12)) (not (at cit1 obj11)) (not (at tru2 apn1)) (not (at tru2 apt1)) (not (at tru2 pos2)) (not (at tru2 pos1)) (not (at tru2 cit2)) (not (at tru2 cit1)) (not (at tru2 tru2)) (not (at tru2 tru1)) (not (at tru2 obj23)) (not (at tru2 obj22)) (not (at tru2 obj21)) (not (at tru2 obj13)) (not (at tru2 obj12)) (not (at tru2 obj11)) (not (at tru1 apn1)) (not (at tru1 apt1)) (not (at tru1 apt2)) (not (at tru1 pos2)) (not (at tru1 cit2)) (not (at tru1 cit1)) (not (at tru1 tru2)) (not (at tru1 tru1)) (not (at tru1 obj23)) (not (at tru1 obj22)) (not (at tru1 obj21)) (not (at tru1 obj13)) (not (at tru1 obj12)) (not (at tru1 obj11)) (not (at obj23 apn1)) (not (at obj23 apt1)) (not (at obj23 pos2)) (not (at obj23 pos1)) (not (at obj23 cit2)) (not (at obj23 cit1)) (not (at obj23 tru2)) (not (at obj23 tru1)) (not (at obj23 obj23)) (not (at obj23 obj22)) (not (at obj23 obj21)) (not (at obj23 obj13)) (not (at obj23 obj12)) (not (at obj23 obj11)) (not (at obj22 apn1)) (not (at obj22 apt1)) (not (at obj22 apt2)) (not (at obj22 pos1)) (not (at obj22 cit2)) (not (at obj22 cit1)) (not (at obj22 tru2)) (not (at obj22 tru1)) (not (at obj22 obj23)) (not (at obj22 obj22)) (not (at obj22 obj21)) (not (at obj22 obj13)) (not (at obj22 obj12)) (not (at obj22 obj11)) (not (at obj21 apn1)) (not (at obj21 apt1)) (not (at obj21 pos2)) (not (at obj21 pos1)) (not (at obj21 cit2)) (not (at obj21 cit1)) (not (at obj21 tru2)) (not (at obj21 tru1)) (not (at obj21 obj23)) (not (at obj21 obj22)) (not (at obj21 obj21)) (not (at obj21 obj13)) (not (at obj21 obj12)) (not (at obj21 obj11)) (not (at obj13 apn1)) (not (at obj13 apt1)) (not (at obj13 apt2)) (not (at obj13 pos2)) (not (at obj13 cit2)) (not (at obj13 cit1)) (not (at obj13 tru2)) (not (at obj13 tru1)) (not (at obj13 obj23)) (not (at obj13 obj22)) (not (at obj13 obj21)) (not (at obj13 obj13)) (not (at obj13 obj12)) (not (at obj13 obj11)) (not (at obj12 apn1)) (not (at obj12 apt1)) (not (at obj12 apt2)) (not (at obj12 pos2)) (not (at obj12 cit2)) (not (at obj12 cit1)) (not (at obj12 tru2)) (not (at obj12 tru1)) (not (at obj12 obj23)) (not (at obj12 obj22)) (not (at obj12 obj21)) (not (at obj12 obj13)) (not (at obj12 obj12)) (not (at obj12 obj11)) (not (at obj11 apn1)) (not (at obj11 apt1)) (not (at obj11 apt2)) (not (at obj11 pos2)) (not (at obj11 cit2)) (not (at obj11 cit1)) (not (at obj11 tru2)) (not (at obj11 tru1)) (not (at obj11 obj23)) (not (at obj11 obj22)) (not (at obj11 obj21)) (not (at obj11 obj13)) (not (at obj11 obj12)) (not (at obj11 obj11)) (not (in apn1 apn1)) (not (in apn1 apt1)) (not (in apn1 apt2)) (not (in apn1 pos2)) (not (in apn1 pos1)) (not (in apn1 cit2)) (not (in apn1 cit1)) (not (in apn1 tru2)) (not (in apn1 tru1)) (not (in apn1 obj23)) (not (in apn1 obj22)) (not (in apn1 obj21)) (not (in apn1 obj13)) (not (in apn1 obj12)) (not (in apn1 obj11)) (not (in apt1 apn1)) (not (in apt1 apt1)) (not (in apt1 apt2)) (not (in apt1 pos2)) (not (in apt1 pos1)) (not (in apt1 cit2)) (not (in apt1 cit1)) (not (in apt1 tru2)) (not (in apt1 tru1)) (not (in apt1 obj23)) (not (in apt1 obj22)) (not (in apt1 obj21)) (not (in apt1 obj13)) (not (in apt1 obj12)) (not (in apt1 obj11)) (not (in apt2 apn1)) (not (in apt2 apt1)) (not (in apt2 apt2)) (not (in apt2 pos2)) (not (in apt2 pos1)) (not (in apt2 cit2)) (not (in apt2 cit1)) (not (in apt2 tru2)) (not (in apt2 tru1)) (not (in apt2 obj23)) (not (in apt2 obj22)) (not (in apt2 obj21)) (not (in apt2 obj13)) (not (in apt2 obj12)) (not (in apt2 obj11)) (not (in pos2 apn1)) (not (in pos2 apt1)) (not (in pos2 apt2)) (not (in pos2 pos2)) (not (in pos2 pos1)) (not (in pos2 cit2)) (not (in pos2 cit1)) (not (in pos2 tru2)) (not (in pos2 tru1)) (not (in pos2 obj23)) (not (in pos2 obj22)) (not (in pos2 obj21)) (not (in pos2 obj13)) (not (in pos2 obj12)) (not (in pos2 obj11)) (not (in pos1 apn1)) (not (in pos1 apt1)) (not (in pos1 apt2)) (not (in pos1 pos2)) (not (in pos1 pos1)) (not (in pos1 cit2)) (not (in pos1 cit1)) (not (in pos1 tru2)) (not (in pos1 tru1)) (not (in pos1 obj23)) (not (in pos1 obj22)) (not (in pos1 obj21)) (not (in pos1 obj13)) (not (in pos1 obj12)) (not (in pos1 obj11)) (not (in cit2 apn1)) (not (in cit2 apt1)) (not (in cit2 apt2)) (not (in cit2 pos2)) (not (in cit2 pos1)) (not (in cit2 cit2)) (not (in cit2 cit1)) (not (in cit2 tru2)) (not (in cit2 tru1)) (not (in cit2 obj23)) (not (in cit2 obj22)) (not (in cit2 obj21)) (not (in cit2 obj13)) (not (in cit2 obj12)) (not (in cit2 obj11)) (not (in cit1 apn1)) (not (in cit1 apt1)) (not (in cit1 apt2)) (not (in cit1 pos2)) (not (in cit1 pos1)) (not (in cit1 cit2)) (not (in cit1 cit1)) (not (in cit1 tru2)) (not (in cit1 tru1)) (not (in cit1 obj23)) (not (in cit1 obj22)) (not (in cit1 obj21)) (not (in cit1 obj13)) (not (in cit1 obj12)) (not (in cit1 obj11)) (not (in tru2 apn1)) (not (in tru2 apt1)) (not (in tru2 apt2)) (not (in tru2 pos2)) (not (in tru2 pos1)) (not (in tru2 cit2)) (not (in tru2 cit1)) (not (in tru2 tru2)) (not (in tru2 tru1)) (not (in tru2 obj23)) (not (in tru2 obj22)) (not (in tru2 obj21)) (not (in tru2 obj13)) (not (in tru2 obj12)) (not (in tru2 obj11)) (not (in tru1 apn1)) (not (in tru1 apt1)) (not (in tru1 apt2)) (not (in tru1 pos2)) (not (in tru1 pos1)) (not (in tru1 cit2)) (not (in tru1 cit1)) (not (in tru1 tru2)) (not (in tru1 tru1)) (not (in tru1 obj23)) (not (in tru1 obj22)) (not (in tru1 obj21)) (not (in tru1 obj13)) (not (in tru1 obj12)) (not (in tru1 obj11)) (not (in obj23 apn1)) (not (in obj23 apt1)) (not (in obj23 apt2)) (not (in obj23 pos2)) (not (in obj23 pos1)) (not (in obj23 cit2)) (not (in obj23 cit1)) (not (in obj23 tru2)) (not (in obj23 tru1)) (not (in obj23 obj23)) (not (in obj23 obj22)) (not (in obj23 obj21)) (not (in obj23 obj13)) (not (in obj23 obj12)) (not (in obj23 obj11)) (not (in obj22 apn1)) (not (in obj22 apt1)) (not (in obj22 apt2)) (not (in obj22 pos2)) (not (in obj22 pos1)) (not (in obj22 cit2)) (not (in obj22 cit1)) (not (in obj22 tru2)) (not (in obj22 tru1)) (not (in obj22 obj23)) (not (in obj22 obj22)) (not (in obj22 obj21)) (not (in obj22 obj13)) (not (in obj22 obj12)) (not (in obj22 obj11)) (not (in obj21 apn1)) (not (in obj21 apt1)) (not (in obj21 apt2)) (not (in obj21 pos2)) (not (in obj21 pos1)) (not (in obj21 cit2)) (not (in obj21 cit1)) (not (in obj21 tru2)) (not (in obj21 tru1)) (not (in obj21 obj23)) (not (in obj21 obj22)) (not (in obj21 obj21)) (not (in obj21 obj13)) (not (in obj21 obj12)) (not (in obj21 obj11)) (not (in obj13 apn1)) (not (in obj13 apt1)) (not (in obj13 apt2)) (not (in obj13 pos2)) (not (in obj13 pos1)) (not (in obj13 cit2)) (not (in obj13 cit1)) (not (in obj13 tru2)) (not (in obj13 tru1)) (not (in obj13 obj23)) (not (in obj13 obj22)) (not (in obj13 obj21)) (not (in obj13 obj13)) (not (in obj13 obj12)) (not (in obj13 obj11)) (not (in obj12 apn1)) (not (in obj12 apt1)) (not (in obj12 apt2)) (not (in obj12 pos2)) (not (in obj12 pos1)) (not (in obj12 cit2)) (not (in obj12 cit1)) (not (in obj12 tru2)) (not (in obj12 tru1)) (not (in obj12 obj23)) (not (in obj12 obj22)) (not (in obj12 obj21)) (not (in obj12 obj13)) (not (in obj12 obj12)) (not (in obj12 obj11)) (not (in obj11 apn1)) (not (in obj11 apt1)) (not (in obj11 apt2)) (not (in obj11 pos2)) (not (in obj11 pos1)) (not (in obj11 cit2)) (not (in obj11 cit1)) (not (in obj11 tru2)) (not (in obj11 tru1)) (not (in obj11 obj23)) (not (in obj11 obj22)) (not (in obj11 obj21)) (not (in obj11 obj13)) (not (in obj11 obj12)) (not (in obj11 obj11)) )
  (:goal (and (in-city pos1 cit1)(in-city apt1 cit1)(at obj22 pos2)(at tru1 pos1)(in-city apt2 cit2)(at obj12 pos1)(in-city pos2 cit2)(at tru2 apt2)(in obj13 tru1)(in obj11 tru1)(in obj23 apn1)(in obj21 apn1)(at apn1 apt1))))