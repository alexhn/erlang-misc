-module(strings).
-export([test1/0, test2/0, test3/0, test4/0, test5/0, test6/0]).

test6() ->
    Str1 = "hello world",
    Str2 = string:sub_string(Str1, 1, 5),
    io:fwrite("~p~n", [Str2]).

test5() ->
    Str1 = "hello world",
    Str2 = string:to_upper(Str1),
    io:fwrite("~p~n", [Str2]).

test4() ->
    Str1 = "HELLO WORLD",
    Str2 = string:to_lower(Str1),
    io:fwrite("~p~n", [Str2]).

test3() ->
    Str1 = "hello",
    Str2 = string:right(Str1, 10, $.),
    io:fwrite("~p~n", [Str2]).

test2() ->
    Str1 = "hello world",
    Str2 = string:right(Str1, 2),
    io:fwrite("~p~n", [Str2]).

test1() ->
    Str1 = "hello",
    Str2 = string:left(Str1, 10, $.),
    io:fwrite("~p~n", [Str2]).