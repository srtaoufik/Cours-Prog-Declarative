(define (domain Deux_jarres_domaine)
(:requirements :strips :typing :fluents :quantified-preconditions)
(:functions
(j3)
(j4)
)
(:action remplir_j3
:parameters ()
:precondition (not (= (j3) 3))
:effect (assign (j3) 3)
)
(:action remplir_j4
:parameters ()
:precondition (not (= (j4) 4))
:effect (assign (j4) 4)
)
(:action vider_j3
:parameters ()
:precondition (= (j3) 3)
:effect (assign (j3) 0)
)
(:action vider_j4
:parameters ()
:precondition (= (j4) 4)
:effect (assign (j4) 0)
)
(:action transvider_j3_j4_cas1
:parameters ()
:precondition (and (not (= (j3) 0)) (not (= (j4) 4)) (<= (+ (j3) (j4)) 4 ) )
:effect (and (increase (j4) (j3)) (assign (j3) 0))
)
(:action transvider_j4_j3_cas1
:parameters ()
:precondition (and (not (= (j4) 0)) (not (= (j3) 3)) (<= (+ (j4) (j3)) 3) )
:effect (and (increase (j3) (j4)) (assign (j4) 0))
)
(:action transvider_j3_j4_cas2
:parameters ()
:precondition (and (not (= (j3) 0)) (not (= (j4) 4)) (> (+ (j3) (j4)) 4 ) )
:effect (and  (increase (j3) (- (j4) 4)) (assign (j4) 4))
)
(:action transvider_j4_j3_cas2
:parameters ()
:precondition (and (not (= (j4) 0)) (not (= (j3) 3)) (> (+ (j4) (j3)) 3) )
:effect (and (increase (j4) (- (j3) 3))(assign (j3) 3))
)
)