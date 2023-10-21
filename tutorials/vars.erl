-module(vars).
-export([test1/0, test2/0]).

test2() ->
    X = 40.00,
    Y = 50.00,
    io:fwrite("~f~n", [X]),
    io:fwrite("~e~n", [Y]).

test1() ->
    X = 40,
    Y = 50,
    Result = X + Y,
    io:fwrite("~w", [Result]).