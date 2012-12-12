(defn mul-of-three-five? [x]
  (or 
   (== (mod x 3) 0)
   (== (mod x 5) 0)))

(print (reduce + (filter mul-of-three-five? (range 1000))))