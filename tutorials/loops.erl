-module(loops).
-export([test1/0]).

while(L) -> while(L, 0).
while([], Acc) -> Acc;
while([_|T], Acc) ->
    io:fwrite("~w~n", [Acc]),
    while(T, Acc + 1).

test1() ->
    X = [1, 2, 3, 4],
    while(X).