-module(liststest).
-export([test1/0, test2/0, test3/0, test4/0, test5/0, test6/0, test7/0, test8/0, test9/0, test10/0, test11/0, test12/0]).

test12() ->
    Lst1 = [5, 6, 4],
    io:fwrite("~w~n", [lists:sort(Lst1)]).

test11() ->
    io:fwrite("~w~n", [lists:merge([[1, 2, 3], [5, 6]])]).

test10() ->
    Lst1 = [1, 2, 3, 4],
    io:fwrite("~w~n", [lists:member(3, Lst1)]).

test9() ->
    Lst1 = [1, 2, 3, 4],
    io:fwrite("~w~n", [lists:max(Lst1)]).

test8() ->
    Lst1 = [1, 2, 3, 4],
    io:fwrite("~w~n", [lists:last(Lst1)]).

test7() ->
    Lst1 = lists:duplicate(5, 1),
    io:fwrite("~w~n", [Lst1]).

test6() ->
    Lst1 = [1, 2, 3],
    Lst2 = lists:droplast(Lst1),
    io:fwrite("~w~n", [Lst2]).

test5() ->
    Lst1 = [1, 2, 3, 2, 4],
    Lst2 = lists:delete(2, Lst1),
    io:fwrite("~w~n", [Lst2]).

test4() ->
    Lst1 = [1, 2, 3],
    Lst2 = lists:append(Lst1, [4, 5]),
    io:fwrite("~w~n", [Lst2]).

test3() ->
    Lst1 = [1, 2, 3],
    Predicate = fun(E) -> E rem 2 == 0 end,
    Status = lists:any(Predicate, Lst1),
    io:fwrite("~w~n", [Status]).

test2() ->
    Lst1 = [1, 2, 3],
    Predicate = fun(E) -> E rem 2 == 0 end,
    Status = lists:all(Predicate, Lst1),
    io:fwrite("~w~n", [Status]).

test1() ->
    Lst1 = [1, 2, 3],
    io:fwrite("~w~n", [Lst1]).