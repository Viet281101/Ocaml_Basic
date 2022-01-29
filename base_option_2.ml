(* GRADE:  100% *)
let multiply a b_opt = 
  match b_opt with 
  |None -> None
  |Some b_opt -> Some(a*b_opt)

