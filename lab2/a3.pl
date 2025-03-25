

%arbol
padre(ramon,jardel).
padre(ramon,nadier).
padre(francisco,ramon).
madre(veronica,jardel).
madre(veronica,nadier).
madre(maria,veronica).
madre(maria,modesto).
madre(maria,maxi).
madre(maria,magaly).
padre(daniel,veronica).
padre(daniel,modesto).
padre(daniel,maxi).
padre(daniel,magaly).
padre(modesto,dani).
padre(modesto,leonel).
madre(maxi,maga).
madre(maxi,mirella).
madre(magaly,rijkaard).
hijo(jardel,veronica).
hijo(nadier,veronica).
hijo(jardel.ramon).
hijo(nadier.ramon).
hijo(ramon,francisco).
hijo(veronica,daniel).
hijo(veronica.maria).
hijo(modesto,daniel).
hijo(maxi,daniel).
hijo(magaly,daniel).
hijo(modesto,maria).
hijo(maxi,maria).
hijo(magaly,maria).
hijo(maga,maxi).
hijo(mirella,maxi).
hijo(dani,modesto).
hijo(leonel,modesto).
hijo(rijkaard,magaly).
hermana(nadier,jardel).
hermano(jardel,nadier).
hermano(leonel,dani).
hermano(dani,leonel).
hermana(maga,mirella).
hermana(mirella,maga).
hermana(veronica,modesto).
hermana(veronica,maxi).
hermana(veronica,magaly).
hermano(modesto,maxi).
hermano(modesto,veronica).
hermano(modesto,magaly).
hermana(maxi,modesto).
hermana(maxi,magaly).
hermana(maxi,veronica).
hermana(magaly,veronica).
hermana(magaly,modesto).
hermana(magaly,maxi).
tio(modesto,jardel).
tio(modesto,maga).
tio(modesto,mirella).
tio(modesto,rijkaard).
tio(modesto,nadier).
tio(maxi,jardel).
tio(maxi,dani).
tio(maxi,leonel).
tio(maxi,nadier).
tio(maxi,leonel).
tio(magaly,jardel).
tio(magaly,nadier).
tio(magaly,dani).
tio(magaly,mirella).
tio(magaly,maga).
tio(magaly,leonel).
tio(veronica,maga).
tio(veronica,mirella).
tio(veronica,dani).
tio(veronica,leonel).
tio(veronica,rijkaard).
abuelo(daniel,jardel).
abuelo(daniel,nadier).
abuelo(daniel,maga).
abuelo(daniel,mirella).
abuelo(daniel,dani).
abuelo(daniel,leonel).
abuelo(daniel,rijkaard).
abuelo(maria,jardel).
abuelo(maria,nadier).
abuelo(maria,maga).
abuelo(maria,mirella).
abuelo(maria,dani).
abuelo(maria,leonel).
abuelo(maria,rijkaard).

es_abuelo_de(X,Y):-
	(padre(X,Z) ; madre(X,Z)) , (padre(Z,Y) ; madre(Z,Y)).
	
	
es_padre_madre(X):-
    ( padre(X,Y) ; madre(X,Y)).

es_hermano_hermana(X):-
    hermano(X,Y) ; hermana(X,Y).

es_tio(X):-
	tio(X,Y).


%Preguntas
%es_abuelo_de(daniel,X).
%es_padre_madre(daniel).
%es_hermano_hermana(maxi).
%es_tio(magaly).
