**Ćwiczenie 1**

Dany jest acykliczny graf skierowany o wierzchołkach a, b, c, d, e, f i krawędziach ab, bc, bd, ce, cf, df, fe.

1. Zdefiniuj predykat krawedz(X,Y) reprezentujący zadany graf.
2. Zdefiniuj sciezka(X,Y) mowiąca o tym, że wierzchołki X, Y są połączone ścieżką. Wypróbuj zdefiniowany predykat i znajdź wszystkie wyniki następujących zapytań:
  1. ?- sciezka(b, f).
  2. ?- sciezka(b, Z).
  3. ?- sciezka(X,d).
3. Napisz i wykonaj zapytania sprawdzające, czy
  1. istnieje ścieżka z a do f przechodząca przez d
  2. istnieje ścieżka o długości 3 kończąca się w f
  3. istnieje w grafie cykl
4. Przetestuj predykat sciezka\_dl(X,Y,N) odpowiadający na pytanie czy istnieje ścieżka o długości N łącząca wierzchołki X i Y.

sciezka\_dl(X,Y,N) :- N=1, krawedz(X,Y).
sciezka\_dl(X,Y,N) :- N\&gt;1, N1 is N - 1, krawedz(X,Z), sciezka\_dl(Z,Y,N1).

Przy pomocy powyższego predykatu znajdź odpowiedź na pytania:

1.
  1. Znajdź wszystkie ścieżki o długości 4 kończące się w f
  2. Znajdź wszystkie ścieżki o długości 3 zaczynające się w a
  3. Znajdź wszystkie ścieżki o długości 3
  4. Dlaczego nie można przy pomocy tego predykatu znaleźć długości ścieżki od a do e ?
2. Zdefiniuj nowy predykat dl\_sciezki(X,Y,N), który umożliwi znajdowanie długości ścieżek.
Przykład użycia predykatu dl\_sciezki:
 ?- dl\_sciezki(a,c, N).
      N = 2


**Ćwiczenie 2**
Dla predykaty realizujące następujące na strukturze wektor(X,Y,Z):

- sumy suma/3
- iloczynu skalarnego iloczyn\_sk/3

Przykład:

?- suma(wektor(1,2,3), wektor(1,3,5), W).
     W=wektor(2,5,8)

?- iloczyn\_skalarny(wektor(1,2,3), wektor(1,3,5), W).
     W=22   % 1\*1 + 2\*3 + 3\*5

**Ćwiczenie 3**

- Zdefiniować relację większy(X, Y, Z), której dwoma pierwszymi elementami są dwie liczby, a trzecim elementem jest większa z nich.
- Zdefiniować dwuargumentową relację moduł, w której drugim argumentem jest wartość bezwzględna pierwszego argumentu.
- Zdefiniować rekurencyjnie predykat suma(N, S), której S jest równe sumie liczb od 0 do N (włącznie). N jest liczbą naturalną.
Rendered


Ćwiczenie 1

Dany jest acykliczny graf skierowany o wierzchołkach a, b, c, d, e, f i krawędziach ab, bc, bd, ce, cf, df, fe.

Zdefiniuj predykat krawedz(X,Y) reprezentujący zadany graf.
Zdefiniuj sciezka(X,Y) mowiąca o tym, że wierzchołki X, Y są połączone ścieżką. Wypróbuj zdefiniowany predykat i znajdź wszystkie wyniki następujących zapytań:
?- sciezka(b, f).
?- sciezka(b, Z).
?- sciezka(X,d).
Napisz i wykonaj zapytania sprawdzające, czy
istnieje ścieżka z a do f przechodząca przez d
istnieje ścieżka o długości 3 kończąca się w f
istnieje w grafie cykl
Przetestuj predykat sciezka_dl(X,Y,N) odpowiadający na pytanie czy istnieje ścieżka o długości N łącząca wierzchołki X i Y.
sciezka_dl(X,Y,N) :- N=1, krawedz(X,Y). sciezka_dl(X,Y,N) :- N&gt;1, N1 is N - 1, krawedz(X,Z), sciezka_dl(Z,Y,N1).

Przy pomocy powyższego predykatu znajdź odpowiedź na pytania:

Znajdź wszystkie ścieżki o długości 4 kończące się w f
Znajdź wszystkie ścieżki o długości 3 zaczynające się w a
Znajdź wszystkie ścieżki o długości 3
Dlaczego nie można przy pomocy tego predykatu znaleźć długości ścieżki od a do e ?
Zdefiniuj nowy predykat dl_sciezki(X,Y,N), który umożliwi znajdowanie długości ścieżek. Przykład użycia predykatu dl_sciezki: ?- dl_sciezki(a,c, N). N = 2
Ćwiczenie 2 Dla predykaty realizujące następujące na strukturze wektor(X,Y,Z):

sumy suma/3
iloczynu skalarnego iloczyn_sk/3
Przykład:

?- suma(wektor(1,2,3), wektor(1,3,5), W). W=wektor(2,5,8)

?- iloczyn_skalarny(wektor(1,2,3), wektor(1,3,5), W). W=22 % 1*1 + 2*3 + 3*5


**Ćwiczenie 3**

Zdefiniować relację większy(X, Y, Z), której dwoma pierwszymi elementami są dwie liczby, a trzecim elementem jest większa z nich.

Zdefiniować dwuargumentową relację moduł, w której drugim argumentem jest wartość bezwzględna pierwszego argumentu.

Zdefiniować rekurencyjnie predykat suma(N, S), której S jest równe sumie liczb od 0 do N (włącznie). N jest liczbą naturalną.
