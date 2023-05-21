isUnion([], [], []).
isUnion([], X, X).
isUnion(X, [], X).
isUnion(X, X, X).
isUnion([Head|Tail], Set2, [Head|Union]) :-
    not(member(Head, Set2)),
    isUnion(Tail, Set2, Union).
isUnion([Head|Tail], Set2, Union) :-
    member(Head, Set2),
    isUnion(Tail, Set2, Union).

isIntersection([], [], []).
isIntersection([], X, []).
isIntersection(X, [], []).
isIntersection(X, X, X).
isIntersection([Head|Tail], Set2, Intersection) :-
    not(member(Head, Set2)),
    isIntersection(Tail, Set2, Intersection).
isIntersection([Head|Tail], Set2, [Head|Intersection]) :-
    member(Head, Set2),
    isIntersection(Tail, Set2, Intersection).

isEqual(Set1,Set2) :-
    isIntersection(Set1, Set2, Intersection),
    isUnion(Set1, Set2, Union),
    Set1 = Intersection,
    Set2 = Union.
