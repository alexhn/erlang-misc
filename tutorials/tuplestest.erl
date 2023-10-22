-module(tuplestest).
-export([test1/0]).

test1() ->
    P = {john, 24, {june, 25}},
    io:fwrite("~w", [tuple_size(P)]).