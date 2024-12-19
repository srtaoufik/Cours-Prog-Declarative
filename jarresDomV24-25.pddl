; solution n'est pas encore correcte
(define (domain Deux_jarres_domaine)
   ; (:requirements :strips :typing :fluents)
     (:requirements :strips :equality :typing :adl )
    (:functions
        (j3) ; Contenu de J3
        (j4) ; Contenu de J4
    )

    (:action remplir_j3
        :parameters ()
        :precondition (< (j3) 3)
        :effect (assign (j3) 3)
    )

    (:action remplir_j4
        :parameters ()
        :precondition (< (j4) 4)
        :effect (assign (j4) 4)
    )

    (:action vider_j3
        :parameters ()
        :precondition (> (j3) 0)
        :effect (assign (j3) 0)
    )

    (:action vider_j4
        :parameters ()
        :precondition (> (j4) 0)
        :effect (assign (j4) 0)
    )

    (:action transvider_j3_j4
    :parameters ()
    :precondition (and (> (j3) 0) (< (j4) 4))
    :effect (and
        (when (<= (+ (j4) (j3)) 4)
          (and  
            (increase (j4) (j3))
            (assign (j3) 0)
             
          )
         )
            
        (when (> (+ (j4) (j3)) 4)
            (and
              (decrease (j3) (- 4 (j4)))
              (assign (j4) 4)
            )
        )
    )
	)

    (:action transvider_j4_j3
        :parameters ()
        :precondition (and 
            (> (j4) 0) 
            (< (j3) 3)
        )
        :effect (and
        (when (<= (+ (j3) (j4)) 3)
            (and
              (increase (j3) (j4))
              (assign (j4) 0)
            )
        )
        (when (> (+ (j4) (j3)) 3)
           (and
              (decrease (j4) (- 3 (j3)))
              (assign (j3) 3)
           )
        )
    )
)
)
