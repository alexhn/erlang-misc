-module(bifs).
-export([test1/0, test2/0, test3/0, test4/0, test5/0]).

test1() ->
    io:fwrite("~p~n", [tuple_to_list({1, 2, 3})]),
    io:fwrite("~p~n", [time()]).

test2() ->
    io:fwrite("~p~n", [date()]).

test3() ->
    io:fwrite("~p~n", [element(3, {a, b, c, d})]).

test4() ->
    io:fwrite("~p~n", [erlang:localtime()]).

test5() ->
    io:fwrite("~w~n", [erlang:ports()]).