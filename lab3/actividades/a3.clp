(deffunction union-vectores (?v1 ?v2)
  (bind ?resultado (create$))  ;; Asegurar que ?resultado es un multifield vacío
  (foreach ?elem ?v1
    (if (not (member$ ?elem ?resultado)) then
      (bind ?resultado (create$ ?resultado ?elem))))
  (foreach ?elem ?v2
    (if (not (member$ ?elem ?resultado)) then
      (bind ?resultado (create$ ?resultado ?elem))))
  (return ?resultado))
