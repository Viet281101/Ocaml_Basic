(* GRADE:  100% *)
let rec rev_append li1 li2 = 
  match li1 with 
  |[] -> li2
  |p::r -> rev_append r (p::li2)
             
let rev li = 
  let rec rev_append li1 li2 = 
    match li1 with 
    |[] -> li2
    |p::r -> rev_append r (p::li2)
  in rev_append li []
  
