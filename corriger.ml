(*EX 1: _ A*)
let rec somme liste =
match liste with
|[] -> 0
|a::reste -> a + somme reste



(* EX 1: _ B*)
let rec produit liste =
match liste with
|[] -> 0
|a::reste -> a * produit reste



(* EX 2:  _ A*)
let rec dans v liste = 
match liste with 
|[] -> false
|a::reste -> if v = a then true else dans v reste



(* EX 2: _ B*)
let rec plus_grand_que v li = 
match li with 
|[] -> []
|a :: reste -> if a >= v then a::plus_grand_que v reste
else plus_grand_quev reste



(* EX 2: _ B*)
let rec un_sur_deux li =
match li with 
|[] -> []
|[_] -> li
|a::b::reste -> a::un_sur_deux reste



(* EX 2: _ B*)
let rec repete li =
match li with 
|[] -> []
|a::rest -> a::a::repete rest




(* EX 4: _ B *)
let rec renverse la lb = 
match la with 
|[] -> lb 
|a::reste -> renverse reste (a::lb)




(* EX 5 _ A: *)
let rec rejoint la lb = 
	match lb with 
	|[] -> lb
	|a::ra -> a::rejoint ra lb 

let rec reunit lili = 
	match lili with
	|[] -> []
	|la :: reste -> rejoint la (reunit reste)

let rec reunit lili = 
	match lili with 
	|[] -> []
	|la :: reste -> match la with
		|[] -> reunit reste
		|a:: ra -> a :: reunit (ra::reste)



(* EX 5 _ B: *)

let rec un_sur_deux li =
match li with 
|[] -> []
|[_] -> li
|a::b::reste -> a::un_sur_deux reste


let rec fusion la lb = 
	match la with 
	|[], _ -> lb
	| _, [] -> la
	| a:: ra, b::rb -> if a<b then a::fusion ra lb
						else b :: fusion la rb


let rec tri li = match li with
|[] -> []
|[x] -> [x]
|v1 :: v2 :: reste -> let gauche = un_sur_deux (v1 :: v2 :: reste)
					  let droit = un_sur_deux (v2 :: reste) in reste
					  fusion (tri gauche) (tri droit)


let rec plus_petits_que v li = 
match li with 
|[] -> []
|a :: reste -> if a < v then a::plus_petits_que v reste
else plus_petits_que v reste


let rec tri li =
	match li with
	|[] -> []
	|[x] -> [x]
	|t :: q ->
		let petits = plus_petits_que t q in 
		let grands = plus_grand_que t q in 
		List.append (tri petits) (t:: tri grand)



		

