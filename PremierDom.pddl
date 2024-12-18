(define (domain premiers) 
  (:requirements :strips :equality :typing :adl )
  (:types nombre - object)
  (:predicates
    (nb ?n - nombre) (multiple ?n1 ?n2 - nombre)  )
  (:action ecarter
    :parameters (?n1  ?n2 - nombre)
    :precondition (and (not (= ?n1 ?n2))
                        (nb ?n1)
                        (nb ?n2) 
                        (multiple ?n1 ?n2))

    :effect (not (nb ?n1 )) ))




