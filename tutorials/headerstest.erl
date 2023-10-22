-module(headerstest).
-export([test1/0]).
-include("user.hrl").

test1() ->
    P = #person{name = "John", id = 1},
    io:fwrite("~p~n", [P#person.name]),
    io:fwrite("~p~n", [P#person.id]),
    io:fwrite("~w~n", [?macro1(1, 2)]).