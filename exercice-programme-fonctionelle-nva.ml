(*Exercice de base*)
let nom = "Gabriel"
let message = "Au revoir " ^ nom ^ " !"




(*Exercice sur les paires*)
let int x (a, b)= 
  if x>=a then true
  else if x <= b then true
  else false

(*corriger*)
let verif x (a, b) = 
 if a<=x && x<=b then true else false
(*ou*)
let verif x (a, b) = 
  if a<=x then x<=b else false





(*Exercice sur les sommes*)
let description address =
  match address with
  |Email mail ->
      "email"
  |Telephone (country_code, nombre)->
      "telephone"



(*Exercice sur les sommes: option*)
let some_opt a =
  match a with
  |None -> a
  |Some b -> a + b

(*corriger*)
let multiply_opt a b_opt = 
  match b_opt with
  |None -> None
  |Some b -> Some (a*b)





(*fun pow*)
let rec pow a n = 
  if n=0 then 1
  else a * pow a (n-1)


