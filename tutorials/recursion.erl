-module(recursion).
-export([factorial_test/0, len/1, tail_len/1, duplicate/2, tail_reverse/1]).


tail_len(L) -> tail_len(L, 0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc + 1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N * fac(N - 1).

duplicate(0,_) ->
    [];

duplicate(N,Term) when N > 0 ->
    io:fwrite("~w~n", [Term]),
    [Term|duplicate(N - 1, Term)].

tail_reverse(L) -> tail_reverse(L, []).
tail_reverse([], Acc) -> Acc;
tail_reverse([H|T], Acc) -> tail_reverse(T,[H|Acc]).

factorial_test() ->
    X = fac(4),
    io:fwrite("~w~n", [X]).