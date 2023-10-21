-module(loops).
-export([test1/0]).

while(L) -> while(L, 0).
while([], Acc) -> Acc;
while([_|T], Acc) ->
    io:fwrite("~w~n", [Acc]),
    while(T, Acc + 1).

for(0,_) ->
    [];

for(N,Term) when N > 0 ->
    io:fwrite("Hello~n"),
    for(N - 1, Term).

test1() ->
    X = [1, 2, 3, 4],
    while(X),
    for(5,1).