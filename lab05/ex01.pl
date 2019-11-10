% Author: Marcin Słowiak
% Date: 10.11.2019

lacz_listy([],A,A).
lacz_listy([X|L1],L2,[X|L3]) :- lacz_listy(L1,L2,L3).

%lacz_listy([1,2,3], [4,5,6], C).
%lacz_listy([1,2,3], C, [1,2,3,4,5]).

ostatni_element([X|[]], B) :- B=X.
ostatni_element([_|L], B) :- ostatni_element(L,B).

%ostatni_element([a,b,c], B).
%ostatni_element([], B).
%ostatni_element([a,b,X], c).

prefiks([],_).
prefiks([X|L1],[X|L2]):- prefiks(L1,L2).

% prefiks([a,c], [a,b,c]).
% prefiks(X, [a,b]).

podlista(A, B) :- prefiks(A,B).
podlista(A,[X|L]) :- podlista(A,L).

% podlista([b, c], [a,b,c,d]).
% podlista([a, c], [a,b,c,d]).
% podlista([X,Y], [a,b,c]).

% sortuj([2, 3, 1], [1, 2, 3]).
% sortuj([2, 3, 1], A).

podlista2([],_).
podlista2([X|L1],[X|L2]) :- podlista2(L1,L2).
podlista2([X|L1],[Y|L2]) :- podlista2([X|L1],L2).

% podlista2([1,2,3,2], [1,a,b,2,c,c,3,c,c,2]).
% podlista2([1,2,3,2], [1,a,b,2,2,c,c,3,c,c]).
% podlista2([1,2,2,3], [a,b,2,2,c,c,3,c,c,1]).

permutacja([], []).
permutacja([X], [X]) :-!.
permutacja([T|H], X) :- permutacja(H, H1), lacz_listy(L1, L2, H1), lacz_listy(L1, [T], X1), lacz_listy(X1, L2, X).

% permutacja([1,2,3], B).

usun_element([E|L1],E,L1).
usun_element([X|L1],Y,[X|T]) :- usun_element(L1,Y,T).

% usun_element([a,b,c,a,b,c], b, L).
% usun_element([a,b,c,a,b,c], x, L).

% usun_duplikaty([a,b,c,a,a,b,c], L).