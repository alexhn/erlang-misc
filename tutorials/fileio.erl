-module(fileio).
-export([test1/0, test2/0, test3/0, test4/0, test5/0, test6/0]).

test6() ->
    io:fwrite("~w~n", [filelib:file_size("output.txt")]).

test5() ->
    io:fwrite("~p~n", [file:list_dir(".")]).

test4() ->
    {ok, Fd} = file:open("output.txt", [append]),
    file:write(Fd, "New line").

test3() ->
    {ok, Fd} = file:open("output.txt", [write]),
    file:write(Fd, "New line").

test2() ->
    Txt = file:read_file("Newfile.txt"),
    io:fwrite("~p~n", [Txt]).

test1() ->
    {ok, File} = file:open("Newfile.txt", [read]),
    Txt = file:read(File, 1024 * 1024),
    io:fwrite("~p~n", [Txt]).