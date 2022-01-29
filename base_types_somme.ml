(* GRADE:  100% *)
let description address =
  match address with
  | Email mail ->
      "email"
  | Telephone (country_code, nombre)->
      "telephone"
