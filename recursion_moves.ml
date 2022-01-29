(* GRADE:  100% *)
let rec count_moves m =
  match m with
  | Done -> 0
  | Slide (v, chemin) -> 1 + count_moves chemin
  | Goto (p, chemin) -> 1 + count_moves chemin 

  
let rec end_point depart m =
  match m with
  |Done -> depart
  |Slide (v, chemin) -> let point = slide depart v in end_point point chemin
  |Goto (p, chemin) -> end_point p chemin
  
(*  
let rec end_point point m = 
  match m with
  |Done -> point
  |Goto (p, reste) -> end_point p reste
  |Slide (v, reste) -> end_point (slide point v) reste
*)

let rec points p moves =
  match moves with
  |Done -> [p]
  |Goto (point, chemin) -> p :: points point chemin
  |Slide (vect, chemin) -> p::points (slide p vect) chemin
                           

