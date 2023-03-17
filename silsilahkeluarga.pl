laki_laki(david).
laki_laki(john).
laki_laki(jack).
laki_laki(ray).
laki_laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

menikah(david,amy).
menikah(amy,david).
menikah(jack,karen).
menikah(karen,jack).
menikah(john,susan).
menikah(susan,john).

anakDari(liza,david).
anakDari(liza,amy).
anakDari(john,david).
anakDari(john,amy).
anakDari(susan,jack).
anakDari(susan,karen).
anakDari(ray,jack).
anakDari(ray,karen).
anakDari(peter,john).
anakDari(peter,susan).
anakDari(mary,john).
anakDari(mary,susan).

ayah(X,Y) :-
    anakDari(Y,X),
    perempuan(X).

ibu(X,Y) :-
    anakDari(Y,X),
    perempuan(X).

saudara(X,Y) :-
    anakDari(X,Z),
    anakDari(Y,Z).

ipar(X,Y) :-
    saudara(X,Z),
    saudara(Y,W),
    menikah(W,Z).

kakek(X,Y) :-
    anakDari(Z,X),
    laki_laki(X),
    anakDari(Y,Z).

nenek(X,Y) :-
    anakDari(Z,X),
    laki_laki(X),
    anakDari(Y,Z).

cucu(X,Y) :-
    anakDari(X,Z),
    anakDari(Z,Y).

paman(X,Y) :-
    saudara(X,Z),
    laki_laki(X),
    anakDari(Y,Z).

bibi(X,Y) :-
    saudara(X,Z),
    perempuan(X),
    anakDari(Y,Z).

keponakan(X,Y) :-
    anakDari(X,Z),
    saudara(Z,Y).
