(define (problem p1)
(:domain premiers)
(:objects n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 - nombre)
(:init (nb n2) (nb n3) (nb n4) (nb n5) (nb n6) (nb n7) (nb n8) (nb n9) (nb n10) (nb n11) (nb n12) (nb n13)

(multiple n4 n2) (multiple n6 n2) (multiple n6 n3) (multiple n8 n2) (multiple n8 n4) (multiple n9 n3) 
(multiple n10 n2) (multiple n10 n5) (multiple n12 n2)  (multiple n12 n3) (multiple n12 n4) (multiple n12 n6)

)
(:goal  
;; la solution 1 est aussi correcte
;(and 
;(nb n2) (nb n3) (nb n5) (nb n7) (nb n11) (nb n13) (not (nb n4)) (not (nb n6)) (not (nb n8)) (not (nb n9)) (not (nb n10)) (not (nb n12))

;; solution 2
    (not (exists(?n1 ?n2 - nombre )
   (and (nb ?n1) (nb ?n2) (multiple ?n1 ?n2 ))
)))
)