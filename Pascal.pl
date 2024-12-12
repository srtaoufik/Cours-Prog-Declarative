:- dynamic pascal/3.  % Déclare que `pascal/3` peut être dynamique.

% Cas de base
pascal(N, 0, 1) :- !.              % La première colonne est toujours 1.
pascal(N, N, 1) :- !.              % La diagonale est toujours 1.

% Cas général avec gestion explicite de la mémorisation
pascal(N, K, S) :-
    K > 0, K < N,                  % Vérifie que K est dans l'intervalle valide.
    (clause(pascal(N, K, S), true) -> % Vérifie si le résultat est déjà mémorisé.
        true                        % Si mémorisé, rien à faire, S est déjà lié.
    ;                               % Sinon, on calcule.
        N1 is N - 1,
        K1 is K - 1,
        pascal(N1, K1, S1),        % Récursivement calcule les termes précédents.
        pascal(N1, K, S2), 
        S is S1 + S2,               % Somme des deux termes.
        asserta(pascal(N, K, S))    % Mémorise le résultat pour les futures requêtes.
    ),!.

% Cas général pour d'autres cas non définis explicitement
pascal(_, _, 0) :- !.              % facultatif, renvoie 0 si les indices sont invalides.

