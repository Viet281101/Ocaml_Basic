(* GRADE:  100% *)
let rec fold_right f l e =
  match l with
  |[] -> e
  |a::r -> f a (fold_right f r e)
             
let rec duplicate_each li = List.fold_right (fun elem acc -> elem::elem::acc) li []
