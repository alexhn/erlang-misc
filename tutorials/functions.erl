-module(functions).
-export([test1/2, test2/0, add/2, add/3, test_guard/1]).

test_guard(X) when X > 3 ->
    io:fwrite("~w~n", [X]).

add(X, Y) ->
    Z = X + Y,
    io:fwrite("~w~n", [Z]).

add(X, Y, Z) ->
    A = X + Y + Z,
    io:fwrite("~w~n", [A]).

test2() ->
    Fn = fun() ->
        io:fwrite("Anon function") end,
    Fn().

test1(X, Y) ->
    Z = X + Y,
    io:fwrite("~w~n", [Z]).

