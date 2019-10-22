mezczyzna(jacek).
mezczyzna(karol).
mezczyzna(kunegunda).
mezczyzna(mariusz).
mezczyzna(onufry).

kobieta(ala).
kobieta(wanda).
kobieta(kunegunda).
kobieta(magda).
kobieta(ola).

dziecko(ola, ala).
dziecko(ola, jacek).
dziecko(magda, ala).
dziecko(magda, jacek).
dziecko(michal, ala).
dziecko(michal, jacek).

dziecko(czarek, wanda).
dziecko(czarek, karol).
dziecko(roman, wanda).
dziecko(roman, karol).

dziecko(franek, kunegunda).
dziecko(franek, witold).
dziecko(zuzanna, kunegunda).
dziecko(zuzanna, witold).

dziecko(onufry, magda).
dziecko(onufry, mariusz).
dziecko(aneta, magda).
dziecko(aneta, mariusz).

dziecko(ewa, onufry).
dziecko(ewa, ola).
dziecko(nina, onufry).
dziecko(nina, ola).

syn(X,Y) :- mezczyzna(X),dziecko(X,Y).
corka(X,Y) :- kobieta(X),dziecko(X,Y).

wnuk(X,Y) :- dziecko(X,Z),dziecko(Z,Y).
dziadek(X,Y) :- wnuk(Y,X).

dziadek(X) :- dziadek(X,_).
rodzic(X,Y) :- dziecko(Y,X).

potomek(X,Y) :- dziecko(X,Y).
potomek(X,Y) :- dziecko(X,Z), potomek(Z,Y).