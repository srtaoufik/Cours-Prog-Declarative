(define (domain hanoi) 
 (:requirements :strips :equality :typing )
 (:types disc - object peg - object)
 (:predicates (clear ?x - object) (on ?x - disc  ?y - object) (smaller ?x  - disc  ?y - object) )
 (:action move
   :parameters (?disc - disc  ?from - object ?to - object)
   :precondition (and (smaller ?disc ?to) (smaller ?disc ?from) (on ?disc ?from) 
                           (clear ?disc) (clear ?to) (not (= ?from ?to)) )
   :effect (and (clear ?from) (on ?disc ?to) (not (on ?disc ?from)) (not (clear ?to)))))
