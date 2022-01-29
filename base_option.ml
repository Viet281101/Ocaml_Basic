(* GRADE:  100% *)
let int_or_0 a= 
  match a with
  |None -> 0
  |Some a -> a

let not_0 b= if b = 0 then None else Some b 





let apply_opt f_opt x_opt = 
  match x_opt with
  |None -> None
  | Some x -> 
      match f_opt with 
      |None -> None
      |Some f -> Some (f x)
