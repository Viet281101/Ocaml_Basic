(* GRADE:  100% *)
let rec length li =
  match li with 
  |[] -> 0
  |a :: rest -> 1 + length rest

                  
let rec nth n li = 
  match li with
  |[] -> None
  |a :: rest -> 
      if n = 0 then Some a
      else nth (n-1) rest
          
          
let last li =
  let rec last' a li =
    match li with
    | [] -> Some a
    | b :: rest ->
        last' b rest
  in
  match li with
  | [] -> None
  | a :: rest -> last' a rest


(*
let rec last li =
  match li with
  | [] -> None
  | a :: rest ->
      ( match last rest with
        | None -> Some a
        | Some last -> Some last
      )
*)

