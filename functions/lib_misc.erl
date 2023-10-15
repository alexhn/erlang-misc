-module(lib_misc).
-export([for/3, my_tuple_to_list / 1, my_time_func/1, perms/1]).

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I)|for(I + 1, Max, F)].

my_tuple_to_list(Tuple) -> my_tuple_to_list(Tuple, 1, tuple_size(Tuple)).

my_tuple_to_list(Tuple, Pos, Size) when Pos =< Size -> [element(Pos, Tuple) | my_tuple_to_list(Tuple, Pos + 1, Size)];
my_tuple_to_list(_Tuple, _Pos, _Size) -> [].

my_time_func(F) ->
    StartedAt = erlang:system_time(millisecond),
    F,
    FinishedAt = erlang:system_time(millisecond),
    FinishedAt - StartedAt.

perms([]) -> [[]];
perms(L)  -> [[H|T] || H <- L, T <- perms(L--[H])].