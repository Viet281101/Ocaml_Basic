(* GRADE:  100% *)
let rec append li1 li2 =
  match li1 with
  | [] -> li2
  | p :: r -> p :: append r li2 
