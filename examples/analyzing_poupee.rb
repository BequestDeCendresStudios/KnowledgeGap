poupees = [
  # I don't have an opinion on whether the doll has a Victorian-style booth session. This doll is Victorian. But this doll is Barbie. Otherwise, is the doll Victorian or Barbie?

  [ :poupee_deux,
    "Moi ne avoir un avis de Est le poupee avoir un seance en cabine victorienne? Cette poupee es victorienne. Mais cette poupee es barbie. Sinon poupee es victorienne ou barbie.",
    0.8712000000000001*0.8712000000000001*0.8712000000000001*0.8712000000000001 ],

  [ :poupee_trois,
    "Moi ne avoir un avis de Est le poupee avoir un seance en cabine victorienne? Cette poupee es victorienne. Mais cette poupee es ne barbie. Sinon poupee es victorienne ou barbie.",   
    0.8712000000000001*0.8712000000000001 ],
], [
  # I don't have an opinion of Checking if that Dolly's name might be fake: Albert. This name seems to be not legitimate.

  [ :name_de_plume_une,
    "Moi ne avoir un avis de Checking if that Dolly's name might be fake: Albert. This name seems to be not legitimate.",
    0.8712000000000001 ],

  [ :name_de_plume_deux,
    "Moi ne avoir un avis de Checking if that Dolly's name might be fake: Albert. This name seems to be not legitimate.",
    0.8712000000000001*0.8712000000000001*0.8712000000000001*0.8712000000000001*0.8712000000000001 ],
    
  [ :name_de_plume_trois,
    "Moi ne avoir un avis de Checking if that Dolly's name might be fake: Bethany. All thing accorded...",
    0.8712000000000001 ],
]

# Booth information
booth_symbols     = poupees[0][0][0], poupees[0][1][0]
booth_opinion     = poupees[0][0][1], poupees[0][1][1]
booth_probability = poupees[0][0][2], poupees[0][1][2]

# Name information
name_symbols     = poupees[1][0][0], poupees[1][1][0]
name_opinion     = poupees[1][0][1], poupees[1][1][1]
name_probability = poupees[1][0][2], poupees[1][1][2]

booth_options = [
  [[booth_symbols[0], booth_symbols[0], booth_symbols[0]],
   [booth_symbols[0], booth_symbols[0], booth_symbols[1]],
   [booth_symbols[0], booth_symbols[0], booth_symbols[2]]],
   
  [[booth_symbols[1], booth_symbols[1], booth_symbols[0]],
   [booth_symbols[1], booth_symbols[1], booth_symbols[1]],
   [booth_symbols[1], booth_symbols[1], booth_symbols[2]]],
], [
  [[booth_opinion[0], booth_opinion[0], booth_opinion[0]],
   [booth_opinion[0], booth_opinion[0], booth_opinion[1]],
   [booth_opinion[0], booth_opinion[0], booth_opinion[2]]],
   
  [[booth_opinion[1], booth_opinion[1], booth_opinion[0]],
   [booth_opinion[1], booth_opinion[1], booth_opinion[1]],
   [booth_opinion[1], booth_opinion[1], booth_opinion[2]]],
], [
  [[booth_probability[0], booth_probability[0], booth_probability[0]],
   [booth_probability[0], booth_probability[0], booth_probability[1]],
   [booth_probability[0], booth_probability[0], booth_probability[2]]],
   
  [[booth_probability[1], booth_probability[1], booth_probability[0]],
   [booth_probability[1], booth_probability[1], booth_probability[1]],
   [booth_probability[1], booth_probability[1], booth_probability[2]]],
]

name_options = [
  [[name_symbols[0], name_symbols[0], name_symbols[0]],
   [name_symbols[0], name_symbols[0], name_symbols[1]],
   [name_symbols[0], name_symbols[0], name_symbols[2]]],
   
  [[name_symbols[1], name_symbols[1], name_symbols[0]],
   [name_symbols[1], name_symbols[1], name_symbols[1]],
   [name_symbols[1], name_symbols[1], name_symbols[2]]],
], [
  [[name_opinion[0], name_opinion[0], name_opinion[0]],
   [name_opinion[0], name_opinion[0], name_opinion[1]],
   [name_opinion[0], name_opinion[0], name_opinion[2]]],
   
  [[name_opinion[1], name_opinion[1], name_opinion[0]],
   [name_opinion[1], name_opinion[1], name_opinion[1]],
   [name_opinion[1], name_opinion[1], name_opinion[2]]],
], [
  [[name_probability[0], name_probability[0], name_probability[0]],
   [name_probability[0], name_probability[0], name_probability[1]],
   [name_probability[0], name_probability[0], name_probability[2]]],
   
  [[name_probability[1], name_probability[1], name_probability[0]],
   [name_probability[1], name_probability[1], name_probability[1]],
   [name_probability[1], name_probability[1], name_probability[2]]],
]

row_options = [0, 1, 2]
col_options = [0, 1]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_booth = booth_options[cur_row][cur_col][cur_arr]
current_name  = name_options[cur_row][cur_col][cur_arr]

puts current_booth
puts current_name
