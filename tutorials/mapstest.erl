-module(mapstest).
-export([test1/0, test2/0, test3/0, test4/0]).

test4() ->
    Lst1 = [{"a", 1}, {"b", 2}, {"c", 3}],
    Map1 = maps:from_list(Lst1),
    io:fwrite("~p~n", [maps:find("a", Map1)]).

test3() ->
    Lst1 = [{"a", 1}, {"b", 2}, {"c", 3}],
    Map1 = maps:from_list(Lst1),
    io:fwrite("~p~n", [maps:find("a", Map1)]).

test2() ->
    Lst1 = [{"a", 1}, {"b", 2}, {"c", 3}],
    io:fwrite("~p~n", [maps:from_list(Lst1)]).

test1() ->
    M1 = #{name => john, age => 45},
    io:fwrite("~w", [map_size(M1)]).