(ns bob)

  (defn question? [speech]
    (boolean (re-find #"(\?$)" speech))
  )

  (defn yelling? [speech]
    (and (= speech (clojure.string/upper-case speech)) (boolean (re-find #"[a-zA-Z]" speech)))
  )

  (defn response-for [speech]
    (cond
      (clojure.string/blank? speech) "Fine. Be that way!"
      (and (question? speech) (not (yelling? speech))) "Sure."
      (yelling? speech) "Whoa, chill out!"
      :else "Whatever.")
  )

