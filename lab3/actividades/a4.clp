;; 4. Búsqueda de países con colores en su bandera
(deftemplate Pais
  (slot Nombre)
  (multislot Bandera))

(defrule buscar-paises
  ?buscar <- (ColoresABuscar $?colores)
  ?pais <- (Pais (Nombre ?nombre) (Bandera $?bandera))
  (test (verificar-colores ?colores ?bandera))
  =>
  (printout t "El país " ?nombre " contiene los colores buscados." crlf))

;; Función auxiliar para verificar si todos los colores buscados están en la bandera
(deffunction verificar-colores (?colores ?bandera)
  (bind ?encontrados TRUE)
  (foreach ?color ?colores
    (if (not (member$ ?color ?bandera)) then
      (bind ?encontrados FALSE)))
  (return ?encontrados))
