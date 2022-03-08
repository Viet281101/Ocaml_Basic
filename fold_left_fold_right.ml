let rec fold_right f l e =
  match l with
  |[] -> e
  |a::r -> f a (fold_right f r e)


let rec fold_left f acc l = 
  match l with 
  |[] -> acc
  |x::s -> fold_left f (f acc x) s


let list_max li = List.fold_left (fun acc elem -> if acc > elem then acc else elem) 0 li

let list_max li = List.fold_left max 0 li

let list_max li = 
  match li with
  |[] -> None
  |t :: q -> 






let shutter li = List.fold_right (fun elem acc -> elem::elem::acc) li []

let count_yes_no p li = 
  let f (y, n) x = 
    if p x then (y + 1, n) else (y, n + 1) 
  in 
  List.fold_left f (0, 0) li ;;

let count_yes_no p li = 
  let update elem (y,n) =
    if p elem then (y+1,n) else (y, n+1)
  in List.fold_right update li (0, 0)
