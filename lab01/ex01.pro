mezczyzna(jacek).
mezczyzna(michal).
mezczyzna(karol).
mezczyzna(czarek).
mezczyzna(roman).
mezczyzna(witold).
mezczyzna(franek).
mezczyzna(mariusz).
mezczyzna(onufry).

kobieta(ala).
kobieta(ola).
kobieta(magda).
kobieta(wanda).
kobieta(kunegunda).
kobieta(zuzanna).
kobieta(aneta).
kobieta(ewa).
kobieta(nina).

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

potomek(X,Y) :- dziecko(X,Y).
potomek(X,Y) :- dziecko(X,Z),pomotek(Z,Y).