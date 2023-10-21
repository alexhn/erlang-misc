-module(atoms).
-export([test1/0, test2/0, test3/0, test4/0, test5/0]).

test5() ->
    io:fwrite("~p~n", [binary_to_atom(<<"atom1">>)]).

test4() ->
    io:fwrite("~p~n", [atom_to_binary(atom1)]).

test3() ->
    io:fwrite("~p~n", [atom_to_list(atom1)]).

test2() ->
    io:fwrite("~p~n", [is_atom(atom1)]).

test1() ->
    io:fwrite(atom1),
    io:fwrite("~n"),
    io:fwrite(atom_1),
    io:fwrite("~n"),
    io:fwrite('atom 1'),
    io:fwrite("~n").