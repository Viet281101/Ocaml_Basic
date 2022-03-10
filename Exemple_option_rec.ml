let rec repeat a str = 
if a = 0 then "" else repeat (a -1) str ^ str



(*Exemple*)
let rec repeat s n = 
if n = 0 then ""
else s ^ repeat s (n -1)



(*repeat*)
let repeat a s = 
let rec repeat' a s acc = 
if a = 0 then acc
else repeat' (a -1) s (acc ^ s)
in repeat' a s ""


(*count move*)
let rec count_moves m =
  match m with
  | Done -> 0
  | Slide (vect, rest) -> 1 + count_moves rest
  | Goto (point, rest) -> 1 + count_moves rest 

(*
count_moves (Goto(Point(2, 3), Slide(Vect(1, -1), Done)))
= 1 + count_moves (Slide(Vect(1, -1), Done))
= 1 + 1 + count_moves Done
= 1 + 1 +0
= 2
*)




