-module(conditionals).
-export([test1/0, test2/0, test3/0, test4/0]).


test4() ->
    A = 5,
    case A of
        5 -> io:fwrite("The value of A is 5");
        6 -> io:fwrite("The value of A is 6")
    end.

test3() ->
    A = 4,
    B = 6,

    if
        A < B ->
            if
                A > 5 ->
                    io:fwrite("A is greater than 5");
                true ->
                    io:fwrite("A is less than 5")
            end;
        true ->
            io:fwrite("A is greater than B")
    end.

test2() ->
    A = 5,
    B = 6,

    if
        A == B ->
            io:fwrite("A is equal to B");
        A < B ->
            io:fwrite("A is less than B");
        true ->
            io:fwrite("False")
    end.

test1() ->
    A = 5,
    B = 6,

    if
        A == B ->
            io:fwrite("True");
        true ->
            io:fwrite("False")
    end.