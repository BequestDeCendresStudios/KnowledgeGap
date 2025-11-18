# In The conspiracy theory sense.
require "NeoPathfinding"

def governance(h, i, j, k, l, m, n)
  a = [ :governance,    h, 0.142857143 ] # What type of government structure
  b = [ :anamolous,     i, 0.142857143 ] # What type of anamolous events related to connectivity in objects.
  c = [ :psyop,         j, 0.142857143 ] # What way propaganda is delivered
  d = [ :individuality, k, 0.142857143 ] # What way is individuality expressed
  e = [ :schedule ,     l, 0.142857143 ] # What tightly controlled is the scheduling?
  f = [ :language,      m, 0.142857143 ] # How abusive is the language used.
  g = [ :normalcy,      n, 0.142857143 ] # How normal is situation for the location.

  financial_and_Schedule = [
    [[a[0], a[0], a[0], a[0], a[0], a[0], a[0]],
     [a[0], a[0], a[0], a[0], a[0], a[0], b[0]],
     [a[0], a[0], a[0], a[0], a[0], a[0], c[0]],
     [a[0], a[0], a[0], a[0], a[0], a[0], d[0]],
     [a[0], a[0], a[0], a[0], a[0], a[0], e[0]],
     [a[0], a[0], a[0], a[0], a[0], a[0], f[0]],
     [a[0], a[0], a[0], a[0], a[0], a[0], g[0]]],

    [[b[0], b[0], b[0], b[0], b[0], b[0], a[0]],
     [b[0], b[0], b[0], b[0], b[0], b[0], b[0]],
     [b[0], b[0], b[0], b[0], b[0], b[0], c[0]],
     [b[0], b[0], b[0], b[0], b[0], b[0], d[0]],
     [b[0], b[0], b[0], b[0], b[0], b[0], e[0]],
     [b[0], b[0], b[0], b[0], b[0], b[0], f[0]],
     [b[0], b[0], b[0], b[0], b[0], b[0], g[0]]],

    [[c[0], c[0], c[0], c[0], c[0], c[0], a[0]],
     [c[0], c[0], c[0], c[0], c[0], c[0], b[0]],
     [c[0], c[0], c[0], c[0], c[0], c[0], c[0]],
     [c[0], c[0], c[0], c[0], c[0], c[0], d[0]],
     [c[0], c[0], c[0], c[0], c[0], c[0], e[0]],
     [c[0], c[0], c[0], c[0], c[0], c[0], f[0]],
     [c[0], c[0], c[0], c[0], c[0], c[0], g[0]]],

    [[d[0], d[0], d[0], d[0], d[0], d[0], a[0]],
     [d[0], d[0], d[0], d[0], d[0], d[0], b[0]],
     [d[0], d[0], d[0], d[0], d[0], d[0], c[0]],
     [d[0], d[0], d[0], d[0], d[0], d[0], d[0]],
     [d[0], d[0], d[0], d[0], d[0], d[0], e[0]],
     [d[0], d[0], d[0], d[0], d[0], d[0], f[0]],
     [d[0], d[0], d[0], d[0], d[0], d[0], g[0]]],

    [[e[0], e[0], e[0], e[0], e[0], e[0], a[0]],
     [e[0], e[0], e[0], e[0], e[0], e[0], b[0]],
     [e[0], e[0], e[0], e[0], e[0], e[0], c[0]],
     [e[0], e[0], e[0], e[0], e[0], e[0], d[0]],
     [e[0], e[0], e[0], e[0], e[0], e[0], e[0]],
     [e[0], e[0], e[0], e[0], e[0], e[0], f[0]],
     [e[0], e[0], e[0], e[0], e[0], e[0], g[0]]],

    [[f[0], f[0], f[0], f[0], f[0], f[0], a[0]],
     [f[0], f[0], f[0], f[0], f[0], f[0], b[0]],
     [f[0], f[0], f[0], f[0], f[0], f[0], c[0]],
     [f[0], f[0], f[0], f[0], f[0], f[0], d[0]],
     [f[0], f[0], f[0], f[0], f[0], f[0], e[0]],
     [f[0], f[0], f[0], f[0], f[0], f[0], f[0]],
     [f[0], f[0], f[0], f[0], f[0], f[0], g][0]],

    [[g[0], g[0], g[0], g[0], g[0], g[0], a[0]],
     [g[0], g[0], g[0], g[0], g[0], g[0], b[0]],
     [g[0], g[0], g[0], g[0], g[0], g[0], c[0]],
     [g[0], g[0], g[0], g[0], g[0], g[0], d[0]],
     [g[0], g[0], g[0], g[0], g[0], g[0], e[0]],
     [g[0], g[0], g[0], g[0], g[0], g[0], f[0]],
     [g[0], g[0], g[0], g[0], g[0], g[0], g[0]]],
  ], [
    [[a[1], a[1], a[1], a[1], a[1], a[1], a[1]],
     [a[1], a[1], a[1], a[1], a[1], a[1], b[1]],
     [a[1], a[1], a[1], a[1], a[1], a[1], c[1]],
     [a[1], a[1], a[1], a[1], a[1], a[1], d[1]],
     [a[1], a[1], a[1], a[1], a[1], a[1], e[1]],
     [a[1], a[1], a[1], a[1], a[1], a[1], f[1]],
     [a[1], a[1], a[1], a[1], a[1], a[1], g[1]]],

    [[b[1], b[1], b[1], b[1], b[1], b[1], a[1]],
     [b[1], b[1], b[1], b[1], b[1], b[1], b[1]],
     [b[1], b[1], b[1], b[1], b[1], b[1], c[1]],
     [b[1], b[1], b[1], b[1], b[1], b[1], d[1]],
     [b[1], b[1], b[1], b[1], b[1], b[1], e[1]],
     [b[1], b[1], b[1], b[1], b[1], b[1], f[1]],
     [b[1], b[1], b[1], b[1], b[1], b[1], g[1]]],

    [[c[1], c[1], c[1], c[1], c[1], c[1], a[1]],
     [c[1], c[1], c[1], c[1], c[1], c[1], b[1]],
     [c[1], c[1], c[1], c[1], c[1], c[1], c[1]],
     [c[1], c[1], c[1], c[1], c[1], c[1], d[1]],
     [c[1], c[1], c[1], c[1], c[1], c[1], e[1]],
     [c[1], c[1], c[1], c[1], c[1], c[1], f[1]],
     [c[1], c[1], c[1], c[1], c[1], c[1], g[1]]],

    [[d[1], d[1], d[1], d[1], d[1], d[1], a[1]],
     [d[1], d[1], d[1], d[1], d[1], d[1], b[1]],
     [d[1], d[1], d[1], d[1], d[1], d[1], c[1]],
     [d[1], d[1], d[1], d[1], d[1], d[1], d[1]],
     [d[1], d[1], d[1], d[1], d[1], d[1], e[1]],
     [d[1], d[1], d[1], d[1], d[1], d[1], f[1]],
     [d[1], d[1], d[1], d[1], d[1], d[1], g[1]]],

    [[e[1], e[1], e[1], e[1], e[1], e[1], a[1]],
     [e[1], e[1], e[1], e[1], e[1], e[1], b[1]],
     [e[1], e[1], e[1], e[1], e[1], e[1], c[1]],
     [e[1], e[1], e[1], e[1], e[1], e[1], d[1]],
     [e[1], e[1], e[1], e[1], e[1], e[1], e[1]],
     [e[1], e[1], e[1], e[1], e[1], e[1], f[1]],
     [e[1], e[1], e[1], e[1], e[1], e[1], g[1]]],

    [[f[1], f[1], f[1], f[1], f[1], f[1], a[1]],
     [f[1], f[1], f[1], f[1], f[1], f[1], b[1]],
     [f[1], f[1], f[1], f[1], f[1], f[1], c[1]],
     [f[1], f[1], f[1], f[1], f[1], f[1], d[1]],
     [f[1], f[1], f[1], f[1], f[1], f[1], e[1]],
     [f[1], f[1], f[1], f[1], f[1], f[1], f[1]],
     [f[1], f[1], f[1], f[1], f[1], f[1], g][1]],

    [[g[1], g[1], g[1], g[1], g[1], g[1], a[1]],
     [g[1], g[1], g[1], g[1], g[1], g[1], b[1]],
     [g[1], g[1], g[1], g[1], g[1], g[1], c[1]],
     [g[1], g[1], g[1], g[1], g[1], g[1], d[1]],
     [g[1], g[1], g[1], g[1], g[1], g[1], e[1]],
     [g[1], g[1], g[1], g[1], g[1], g[1], f[1]],
     [g[1], g[1], g[1], g[1], g[1], g[1], g[1]]],
  ], [
    [[a[2], a[2], a[2], a[2], a[2], a[2], a[2]],
     [a[2], a[2], a[2], a[2], a[2], a[2], b[2]],
     [a[2], a[2], a[2], a[2], a[2], a[2], c[2]],
     [a[2], a[2], a[2], a[2], a[2], a[2], d[2]],
     [a[2], a[2], a[2], a[2], a[2], a[2], e[2]],
     [a[2], a[2], a[2], a[2], a[2], a[2], f[2]],
     [a[2], a[2], a[2], a[2], a[2], a[2], g[2]]],

    [[b[2], b[2], b[2], b[2], b[2], b[2], a[2]],
     [b[2], b[2], b[2], b[2], b[2], b[2], b[2]],
     [b[2], b[2], b[2], b[2], b[2], b[2], c[2]],
     [b[2], b[2], b[2], b[2], b[2], b[2], d[2]],
     [b[2], b[2], b[2], b[2], b[2], b[2], e[2]],
     [b[2], b[2], b[2], b[2], b[2], b[2], f[2]],
     [b[2], b[2], b[2], b[2], b[2], b[2], g[2]]],

    [[c[2], c[2], c[2], c[2], c[2], c[2], a[2]],
     [c[2], c[2], c[2], c[2], c[2], c[2], b[2]],
     [c[2], c[2], c[2], c[2], c[2], c[2], c[2]],
     [c[2], c[2], c[2], c[2], c[2], c[2], d[2]],
     [c[2], c[2], c[2], c[2], c[2], c[2], e[2]],
     [c[2], c[2], c[2], c[2], c[2], c[2], f[2]],
     [c[2], c[2], c[2], c[2], c[2], c[2], g[2]]],

    [[d[2], d[2], d[2], d[2], d[2], d[2], a[2]],
     [d[2], d[2], d[2], d[2], d[2], d[2], b[2]],
     [d[2], d[2], d[2], d[2], d[2], d[2], c[2]],
     [d[2], d[2], d[2], d[2], d[2], d[2], d[2]],
     [d[2], d[2], d[2], d[2], d[2], d[2], e[2]],
     [d[2], d[2], d[2], d[2], d[2], d[2], f[2]],
     [d[2], d[2], d[2], d[2], d[2], d[2], g[2]]],

    [[e[2], e[2], e[2], e[2], e[2], e[2], a[2]],
     [e[2], e[2], e[2], e[2], e[2], e[2], b[2]],
     [e[2], e[2], e[2], e[2], e[2], e[2], c[2]],
     [e[2], e[2], e[2], e[2], e[2], e[2], d[2]],
     [e[2], e[2], e[2], e[2], e[2], e[2], e[2]],
     [e[2], e[2], e[2], e[2], e[2], e[2], f[2]],
     [e[2], e[2], e[2], e[2], e[2], e[2], g[2]]],

    [[f[2], f[2], f[2], f[2], f[2], f[2], a[2]],
     [f[2], f[2], f[2], f[2], f[2], f[2], b[2]],
     [f[2], f[2], f[2], f[2], f[2], f[2], c[2]],
     [f[2], f[2], f[2], f[2], f[2], f[2], d[2]],
     [f[2], f[2], f[2], f[2], f[2], f[2], e[2]],
     [f[2], f[2], f[2], f[2], f[2], f[2], f[2]],
     [f[2], f[2], f[2], f[2], f[2], f[2], g][2]],

    [[g[2], g[2], g[2], g[2], g[2], g[2], a[2]],
     [g[2], g[2], g[2], g[2], g[2], g[2], b[2]],
     [g[2], g[2], g[2], g[2], g[2], g[2], c[2]],
     [g[2], g[2], g[2], g[2], g[2], g[2], d[2]],
     [g[2], g[2], g[2], g[2], g[2], g[2], e[2]],
     [g[2], g[2], g[2], g[2], g[2], g[2], f[2]],
     [g[2], g[2], g[2], g[2], g[2], g[2], g[2]]],
  ]

  symbols            = financial_and_Schedule[0]
  descriptions       = financial_and_Schedule[1]
  base_probabilities = financial_and_Schedule[2]
  
  row_options = [0, 1, 2, 3, 4, 5, 6]
  col_options = [0, 1, 2, 3, 4, 5, 6]
  arr_options = [0, 1, 2, 3, 4, 5, 6]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  selection_probability = 0.142857143 * 0.142857143
  
  current_symbols     = symbols[cur_row][cur_col][cur_arr]
  current_description = descriptions[cur_row][cur_col][cur_arr]
  current_probability = selection_probability * base_probabilities[cur_row][cur_col][cur_arr].to_f
  
  current_information = [ current_symbols, current_description, current_probability ]
end

a = governance("decentralized",
               "doll type",
               "committee of experts",
               "individualized",
               "no schedule",
               "non verbal",
               "extremely high normalcy")

b = governance("decentralized",
               "doll type",
               "committee of experts",
               "individualized",
               "no schedule",
               "non verbal",
               "extremely high normalcy")

c = governance("decentralized",
               "doll type",
               "committee of experts",
               "individualized",
               "no schedule",
               "non verbal",
               "extremely high normalcy")

2.times do
  get_statistics(:first_aspect,  a,
                 :second_aspect, b,
                 :third_aspect,  c)

                 dynamic_reward_allocation
end
