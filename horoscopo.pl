horoscopo(aries,21,3,20,4).
horoscopo(tauro,21,4,20,5).
horoscopo(geminis,21,5,20,6).
horoscopo(cancer,21,6,22,7).
horoscopo(leo,23,7,23,8).
horoscopo(virgo,24,8,22,9).
horoscopo(libra,23,9,23,10).
horoscopo(escorpio,24,10,22,11).
horoscopo(sagitario,23,11,21,12).
horoscopo(capricornio,22,12,20,1).
horoscopo(acuario,21,1,19,2).
horoscopo(piscis,20,2,20,3).

dmax(1, 31). 
dmax(2, 28). 
dmax(3, 31).  
dmax(4, 30).  
dmax(5, 31). 
dmax(6, 30).  
dmax(7, 31).  
dmax(8, 31). 
dmax(9, 30).  
dmax(10, 31).
dmax(11, 30). 
dmax(12, 31).

signo(Dia, Mes, Signo) :-
    dmax(Mes, Dmax),
    Dia =< Dmax,
    horoscopo(Signo, DiaInicio, MesInicio, DiaFin, MesFin),
    ( (Mes = MesInicio, Dia >= DiaInicio)
    ; (Mes = MesFin, Dia =< DiaFin) ).

    %Pruebas
%signo(31, 12, Signo).
%signo(31, 2, Signo).
