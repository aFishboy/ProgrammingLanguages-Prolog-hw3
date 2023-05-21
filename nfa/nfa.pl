reachable(State, State, []).
reachable(StartState, FinalState, [InputHead|InputTail]) :-
    transition(StartState, InputHead, NextStates),
    member(NextState, NextStates),
    reachable(NextState, FinalState, InputTail).