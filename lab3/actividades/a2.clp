;; 2. Sumar los elementos de una lista
(deffunction suma-lista (?lista)
  (bind ?suma 0)
  (foreach ?elem ?lista
    (bind ?suma (+ ?suma ?elem)))
  (return ?suma))