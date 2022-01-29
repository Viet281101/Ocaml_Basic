(* GRADE:  100% *)
let rec filter cond li =
  match li with
  |[] -> []
  |a :: lb -> if cond a
      then a :: filter cond lb
      else filter cond lb
          
let rec non_negative list = filter (fun x -> x >= 0) list
