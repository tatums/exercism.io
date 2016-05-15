(ns word-count)
  (require '[clojure.string :as str])

  (defn normalize-input [input]
    (clojure.string/lower-case (clojure.string/replace input #"[:,!?@&$%^]" ""))
  )

  (defn word-count [input]
    (frequencies (str/split (normalize-input input) #"\s+"))
  )
