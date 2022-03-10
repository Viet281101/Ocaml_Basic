type 'a truc = 
  |Rien
  |Un_truc of 'a
    
    
    
let rec nth pos list =
  match list with 
  |[] -> Rien
  |t :: q -> 
      if pos = 0 then Un_truc t
      else nth (pos - 1) q
