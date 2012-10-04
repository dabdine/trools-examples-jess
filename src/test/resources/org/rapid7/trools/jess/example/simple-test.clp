(defclass Person org.rapid7.trools.example.Person static)

(defrule simple-test
   ?personFact <- (Person
      (name ?name &: (eq ?name "Bill")))
=>
   (retract ?personFact)
   (add (new String "hello world"))
)