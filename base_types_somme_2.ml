(* GRADE:  100% *)
let signe a =
  if a > 0
  then Strictement_positif
  else if a <0 
  then Strictement_negatif
  else Nul
  
                          
let positif signe =
  match signe with
  | Strictement_positif -> true
  | Nul -> true
  | Strictement_negatif -> false
