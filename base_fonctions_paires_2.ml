(* GRADE:  100% *)
let annee_suivante (a, b, c) = (a + 1, b, c)

                               
let mois_suivant (a, b, c) =  
  if  b < 12 then ( a, b + 1, c)
  else ( a +1, 1, c)
