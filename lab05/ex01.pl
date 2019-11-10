% Author: Marcin Słowiak
% Date: 10.11.2019

% lacz_listy
lacz_listy([],A,A).
lacz_listy([X|L1],L2,[X|L3]) :- lacz_listy(L1,L2,L3).

% ostatni_element
ostatni_element([H|[]], B) :- B=H.
ostatni_element([X|L], B) :- ostatni_element(L,B).

% prefiks
prefiks([],_).
prefiks([X|L1],[X|L2]):- prefiks(L1,L2).

% podlista
podlista(A, B) :- prefiks(A,B).
podlista(A,[X|L]) :- podlista(A,L).


% podlista2
podlista2([],_).
podlista2([X|L1],[X|L2]) :- podlista2(L1,L2).
podlista2([X|L1],[Y|L2]) :- podlista2([X|L1],L2).

% usun_element
usun_element([E|L1],E,L1).
usun_element([X|L1],Y,[X|T]) :- usun_element(L1,Y,T).