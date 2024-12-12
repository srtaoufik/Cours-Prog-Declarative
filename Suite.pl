:- dynamic suite/2.

% Cas de base
suite(0, 1):- !.
% Cas général avec gestion explicite de la mémorisation
suite(N, S) :-
    N > 0,
    % Vérifie si le résultat est déjà mémorisé
    (   clause(suite(N, S), true)-> 
			true  % Si déjà mémorisé, utiliser le résultat
    ;  % sinon
		(	N mod 2=:=1 
		         ->(
					N1 is N - 1,
					suite(N1, S1),  
					S is  2* S1,        
					asserta(suite(N, S))
					)
			      ;
				   (
					N1 is N - 1,N2 is N-2,
					suite(N1, S1),suite(N2, S2),  
					S is  S1+ S2,        
					asserta(suite(N, S))
				   )
		)
					
    ).
