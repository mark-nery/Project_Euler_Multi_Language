(comment Let d(n) be defined as the sum of proper divisors of n
         (numbers less than n which divide evenly into n).
         If d(a) = b and d(b) = a, where a ≠ b, then a and b
         are an amicable pair and each of a and b are called amicable numbers.

         For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
         therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142;
         so d(284) = 220.

         Evaluate the sum of all the amicable numbers under 10000.)

(defn divisor-sum
  [n]
  (reduce +
          (map (fn [x] (if (zero? (mod n x)) x 0)) (range 1 (+ 1 (/ n 2))))))

(defn amicable?
  [x]
  (let [y (divisor-sum x)]
    (and (= (divisor-sum y) x) (not (= x y)))))

(reduce +
        (map (fn [x] (if (amicable? x) x 0)) (range 1 10000)))
