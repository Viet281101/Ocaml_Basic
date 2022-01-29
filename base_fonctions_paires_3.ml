(* GRADE:  100% *)
let choose test (a,b) = 
  if test then a else b
    
let better (x1, y1) (x2, y2) = 
  if x1 > x2 then y1
  else if x1 == x2 then y1
  else y2;;
