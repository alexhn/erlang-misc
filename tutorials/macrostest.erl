-module(macrostest).
-define(a, 1).
-export([test1/0]).
-define(macro1(X, Y),{X + Y}).

test1() ->
    io:fwrite("~w~n", [?a]),
    io:fwrite("~w~n", [?macro1(1, 2)]).
