% Author: Marcin Slowiak
% Date: 10/22/2019

wiekszy(X, Y, Z) :- X < Y, Z is Y.
wiekszy(X, Y, Z) :- X >= Y, Z is X.

modul(X,Y) :- X<0 , Y is (-1) * X.
modul(X,Y) :- X>= 0, Y is X.

suma(0, S) :- S is 0.
suma(N, S) :- N1 is N-1, suma(N1, T), S is N + T.