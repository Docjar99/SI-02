%predicados dinámicos
:- dynamic tiene_habilidad/1.
:- dynamic tiene_interes/1.
:- dynamic tiene_personalidad/1.

% Carreras y criterios
carrera(ingenieria_sistemas) :-
    tiene_habilidad(matematicas), 
    tiene_interes(tecnologia), 
    tiene_personalidad(analitico).

carrera(ingenieria_industrial) :-
    tiene_habilidad(matematicas),
    tiene_interes(negocios),
    tiene_personalidad(estrategico).

carrera(medicina) :-
    tiene_interes(salud),
    tiene_habilidad(biologia),
    tiene_personalidad(empatico).

carrera(psicologia) :-
    tiene_interes(salud),
    tiene_habilidad(interpretacion),
    tiene_personalidad(empatico).

carrera(derecho) :-
    tiene_habilidad(argumentacion),
    tiene_interes(leyes),
    tiene_personalidad(critico).

carrera(administracion) :-
    tiene_habilidad(liderazgo),
    tiene_interes(negocios),
    tiene_personalidad(organizado).

carrera(marketing) :-
    tiene_habilidad(comunicacion),
    tiene_interes(negocios),
    tiene_personalidad(extrovertido).

carrera(economia) :-
    tiene_habilidad(matematicas),
    tiene_interes(finanzas),
    tiene_personalidad(analitico).

carrera(contabilidad) :-
    tiene_habilidad(matematicas),
    tiene_interes(finanzas),
    tiene_personalidad(meticuloso).

carrera(diseno_grafico) :-
    tiene_habilidad(creatividad),
    tiene_interes(diseno),
    tiene_personalidad(imaginativo).

carrera(arquitectura) :-
    tiene_habilidad(creatividad),
    tiene_interes(construccion),
    tiene_personalidad(innovador).

carrera(ingenieria_civil) :-
    tiene_habilidad(matematicas),
    tiene_interes(construccion),
    tiene_personalidad(estructurado).

carrera(turismo) :-
    tiene_habilidad(comunicacion),
    tiene_interes(cultura),
    tiene_personalidad(extrovertido).

carrera(relaciones_internacionales) :-
    tiene_habilidad(comunicacion),
    tiene_interes(politica),
    tiene_personalidad(critico).

carrera(biologia) :-
    tiene_habilidad(analisis),
    tiene_interes(investigacion),
    tiene_personalidad(detenido).

carrera(fisica) :-
    tiene_habilidad(matematicas),
    tiene_interes(investigacion),
    tiene_personalidad(analitico).

carrera(quimica) :-
    tiene_habilidad(analisis),
    tiene_interes(investigacion),
    tiene_personalidad(estrategico).

carrera(educacion) :-
    tiene_habilidad(comunicacion),
    tiene_interes(ensenanza),
    tiene_personalidad(empatico).

% Preguntas dinámicas
preguntar(Pregunta) :-
    format('~w (si/no): ', [Pregunta]),
    read(Respuesta),
    Respuesta == si.

% Solicitud de habilidades
habilidades :-
    (preguntar('¿Te gustan las matemáticas?') -> assert(tiene_habilidad(matematicas)); true),
    (preguntar('¿Te gusta la biología?') -> assert(tiene_habilidad(biologia)); true),
    (preguntar('¿Tienes habilidades en creatividad?') -> assert(tiene_habilidad(creatividad)); true),
    (preguntar('¿Tienes habilidades argumentativas?') -> assert(tiene_habilidad(argumentacion)); true),
    (preguntar('¿Tienes habilidades en análisis e interpretación?') -> assert(tiene_habilidad(interpretacion)); true),
    (preguntar('¿Tienes habilidades en liderazgo?') -> assert(tiene_habilidad(liderazgo)); true),
    (preguntar('¿Tienes habilidades comunicativas?') -> assert(tiene_habilidad(comunicacion)); true),
    (preguntar('¿Tienes habilidades de análisis?') -> assert(tiene_habilidad(analisis)); true).

% Solicitud de intereses
intereses :-
    (preguntar('¿Te gusta la tecnología?') -> assert(tiene_interes(tecnologia)); true),
    (preguntar('¿Te interesa la salud?') -> assert(tiene_interes(salud)); true),
    (preguntar('¿Te gustan los negocios?') -> assert(tiene_interes(negocios)); true),
    (preguntar('¿Te interesa el diseño?') -> assert(tiene_interes(diseno)); true),
    (preguntar('¿Te interesa la investigación?') -> assert(tiene_interes(investigacion)); true),
    (preguntar('¿Te interesan las leyes y la justicia?') -> assert(tiene_interes(leyes)); true),
    (preguntar('¿Te interesa la construcción?') -> assert(tiene_interes(construccion)); true),
    (preguntar('¿Te interesa la enseñanza?') -> assert(tiene_interes(ensenanza)); true).

% Solicitud de personalidad
personalidad :-
    (preguntar('¿Te consideras analítico?') -> assert(tiene_personalidad(analitico)); true),
    (preguntar('¿Eres empático y te importa ayudar a otros?') -> assert(tiene_personalidad(empatico)); true),
    (preguntar('¿Eres extrovertido y disfrutas interactuar con personas?') -> assert(tiene_personalidad(extrovertido)); true),
    (preguntar('¿Tienes pensamiento crítico y sentido de la justicia?') -> assert(tiene_personalidad(critico)); true),
    (preguntar('¿Eres organizado y meticuloso?') -> assert(tiene_personalidad(meticuloso)); true).

% interaccion
recomendar :-
    writeln('Bienvenido al sistema de orientación vocacional.'),
    habilidades,
    intereses,
    personalidad,
    findall(C, carrera(C), Carreras),
    (Carreras \= [] -> 
        (writeln('Según tus respuestas, las carreras recomendadas son:'), writeln(Carreras));
        writeln('No se encontraron carreras compatibles con tus respuestas.')
    ),
    retractall(tiene_habilidad(_)),
    retractall(tiene_interes(_)),
    retractall(tiene_personalidad(_)).
