(* GRADE:  100% *)
let rec fold_left f acc l = 
  match l with 
  |[] -> acc
  |x::s -> fold_left f (f acc x) s
  
             
let sum l = List.fold_left (fun acc l -> acc + l) 0 l
    
    
