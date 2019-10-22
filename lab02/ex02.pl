wektor(X,Y,Z).
suma(wektor(X,Y,Z), wektor(A,B,C), O) :- K is X + A, L is Y+B, M is Z + C, O=wektor(K,L,M).
iloczyn_skalarny(wektor(X,Y,Z), wektor(A,B,C), O) :- O is X*A+Y*B+Z*C.