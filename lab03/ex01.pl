% Author: Marcin Slowiak
% Date: 10/22/2019

delta(A,B,C,D) :- D is B*B - 4 *A*C.
pierw(A,B,C,X) :- delta(A,B,C,D), D =:= 0, X is (-B)/(2*A).
pierw(A,B,C,X) :- delta(A,B,C,D), D < 0, false.
pierw(A,B,C,X) :- delta(A,B,C,D), D > 0, Dsqrt is sqrt(D), X is ((-B) - Dsqrt) / (2*A).
pierw(A,B,C,X) :- delta(A,B,C,D), D > 0, Dsqrt is sqrt(D), X is ((-B) + Dsqrt) / (2*A).