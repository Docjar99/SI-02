;; 1. Hallar el mínimo elemento de una lista
(deffunction encontrar-minimo (?lista)
  (if (eq ?lista nil) then
    (return nil)
  else
    (bind ?min (nth$ 1 ?lista))
    (foreach ?elem ?lista
      (if (< ?elem ?min) then
        (bind ?min ?elem)))
    (return ?min)))
