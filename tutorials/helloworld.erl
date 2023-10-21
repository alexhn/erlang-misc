% hello world
-module(helloworld).
-import(io, [fwrite/1]).
-export([start/0, test_bool/0, test_binary/0, test_tuple/0, test_map/0, test_list/0]).

test_list() ->
    L = [10, 20, 30],
    io:fwrite("~w", [length(L)]).

test_map() ->
    M1 = #{name=>john, age=>25},
    io:fwrite("~w", [map_size(M1)]).

test_tuple() ->
    P = {john, 24, {june, 25}},
    io:fwrite("~w", [tuple_size(P)]).

test_binary() ->
    Bin1 = <<10, 20>>,
    X = binary_to_list(Bin1),
    io:fwrite("~w", [X]).

test_bool() ->
    io:fwrite(2 =< 3),
    io:fwrite("~w", [1+1]).

start() ->
    io:fwrite("Hello, world!\n").