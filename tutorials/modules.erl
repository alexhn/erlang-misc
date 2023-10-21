-module(modules).
-export([start/0]).
-author("John Smith").
-version("1.0").

start() ->
    io:fwrite("Hello").