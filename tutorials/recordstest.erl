-module(recordstest).
-record(person, {name = "", id}).
-export([test1/0]).
-record(employee, {person, salary}).


test1() ->
    P = #person{name = "John", id = 1},
    io:fwrite("~w~n", [P]),
    io:fwrite("~p~n", [P#person.id]),
    io:fwrite("~p~n", [P#person.name]),

    P1 = P#person{name = "Dan"},
    io:fwrite("~p~n", [P1#person.id]),
    io:fwrite("~p~n", [P1#person.name]),

    E1 = #employee{person = #person{name = "John", id = 1}, salary=2000},
    io:fwrite("~p~n", [E1#employee.person#person.name]).