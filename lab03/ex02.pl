% Author: Marcin Slowiak
% Date: 10/22/2019

collatz1(1) :- writeln(1).
collatz1(A) :- mod(A, 2) =:= 0, writeln(A), N is div(A,2), collatz1(N).
collatz1(A) :- mod(A, 2) =:= 1, writeln(A), N is 3*A + 1, collatz1(N).

collatz2(1, N) :- N is 1.
collatz2(A, N) :- mod(A, 2) =:= 0, NEXT is div(A,2), collatz2(NEXT, T), N is T + 1.
collatz2(A, N) :- mod(A, 2) =:= 1, NEXT is 3*A + 1, collatz2(NEXT, T), N is T + 1.