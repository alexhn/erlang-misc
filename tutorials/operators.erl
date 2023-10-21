-module(operators).
-export([test1/0, test2/0]).

test2() ->
    io:fwrite("~w~n", [true or false]),
    io:fwrite("~w~n", [true and false]),
    io:fwrite("~w~n", [true xor false]),
    io:fwrite("~w~n", [not false]).

test1() ->
    X = 40,
    Y = 50,

    Res1 = X + Y,
    Res2 = X - Y,
    Res3 = X * Y,
    Res4 = X / Y,
    Res5 = X div Y,
    Res6 = X rem Y,

    io:fwrite("~w~n", [Res1]),
    io:fwrite("~w~n", [Res2]),
    io:fwrite("~w~n", [Res3]),
    io:fwrite("~w~n", [Res4]),
    io:fwrite("~w~n", [Res5]),
    io:fwrite("~w~n", [Res6]).