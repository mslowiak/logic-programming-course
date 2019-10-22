% Author: Marcin Slowiak
% Date: 10/22/2019

binom(K,0,X) :- X is 1.
binom(K,L,X) :- K =:= L, X is 1.
binom(K,L,X) :- K \= L, L \= 0, K1 is K-1, L1 is L-1, binom(K1,L,A), binom(K1,L1,B), X is A + B.