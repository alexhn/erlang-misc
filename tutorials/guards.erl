-module(guards).
-export([test1/1, test2/1, test3/1, test4/1]).

test1(N) when N > 10 ->
    io:fwrite("greater then 10");
test1(N) when N < 10 ->
    io:fwrite("less than 10").

test2(N) ->
    if
        N > 10 ->
            io:fwrite("N is greater than 10");
        true ->
            io:fwrite("N is less than 10")
    end.

test3(A) ->
    case A of {A} when A > 10 ->
        io:fwrite("The value of A is greater than 10");
    _ ->
        io:fwrite("The value of A is less than 10")
    end.

test4(N) when N > 10, is_integer(N) ->
    io:fwrite("greater than 10");
test4(N) when N < 10 ->
    io:fwrite("Less then 10").