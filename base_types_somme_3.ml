(* GRADE:  100% *)
let prix boisson = 
  match boisson with 
  |Cafe  -> 2
  |Jus (Petit) -> 3 
  |Jus (Grand) -> 5
  |Eau (Plate, Petit) -> 0
  |Eau (Plate, Grand) -> 0
  |Eau (Gazeuse, Petit) -> 2
  |Eau (Gazeuse, Grand) -> 3
