(* GRADE:  100% *)
let rec map f list =
  match list with 
  |[] -> list
  |g::h -> f(g) ::map f(h)
  
             
let rec add_2_each list = 
  match list with 
  |[] -> []
  |a :: b -> (a+2) :: add_2_each b
