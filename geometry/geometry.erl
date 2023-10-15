-module(geometry).
-export([area/1, perimeter/1]).

area({rectangle, Width, Height}) -> Width * Height;
area({circle, Radius}) -> math:pi() * Radius * Radius;
area({rightangle_triangle, Side1, Side2}) -> Side1 * Side2 / 2.0;
area({square, Side}) -> Side * Side.

perimeter({rectangle, Width, Height}) -> 2 * (Width + Height);
perimeter({square, Side}) -> 4 * Side;
perimeter({circle, Radius}) -> 2.0 * math:pi() * Radius.