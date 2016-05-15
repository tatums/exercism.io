(ns rna-transcription)

  (def my-map {\C "G" \G "C" \A "U" \T "A"})
  (defn is-dna? [input]
    (re-matches #"[CGAT]+" input))

  (defn to-rna [input-str]
    (assert (is-dna? input-str))
    (apply str (map my-map (seq input-str)))
  )
