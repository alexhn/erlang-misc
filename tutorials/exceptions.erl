-module(exceptions).
-compile(export_all).

generate_exception(1) -> a;
generate_exception(2) -> throw(a);
generate_exception(3) -> exit(a);
generate_exception(4) -> {'EXIT', a};
generate_exception(5) -> erlang:error(a).

test() ->
    [catcher(I) || I <- [1, 2, 3, 4, 5]].

test1() ->
    try generate_exception(5)
    catch
        _:_:Stacktrace ->
            erlang:display(Stacktrace)
    end.

test3() ->
    [{I, (catch generate_exception(I))} || I <- [1, 2, 3, 4, 5]].

catcher(N) ->
    try generate_exception(N) of
        Val -> {N, normal, Val}
    catch
        throw: X -> {N, caught, thrown, X};
        exit: X -> {N, caught, exited, X};
        error: X -> {N, caught, error, X}
    end.