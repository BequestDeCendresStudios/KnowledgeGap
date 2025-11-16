def get_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]

  matrix = [[
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  
  base_probability = probability_type[cur_row][cur_col][cur_arr].to_i
  
  current_probability = base_probability + graph_selection
  
  current_probability = current_probability + current_probability
  current_information = "#{current_label} #{current_definition}"
  
  puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
  
  #File.open("data/statistics/probability/current_probability.txt", "w") { |f|
  #  f.puts current_probability
  #}
  
  #File.open("data/statistics/label/current_information.txt", "w") { |f|
  #  f.puts current_information
  #}
end

def reasses
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    puts "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability + current_probability
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; reasses
  elsif current_reward_structure == l2_reasses; 2.times do reasses end
  elsif current_reward_structure == l3_reasses; 3.times do reasses end
  elsif current_reward_structure == l4_reasses; 4.times do reasses end
  else
    reasses
  end
end

# Elevators for retrieving traveling up a location and back down in one motion.
def deux_chemix_ascenseur(a, b, c)
  "an elevator that takes #{a}, from #{b} to #{c} and back to #{b}"
end

## A two way "elevator" that trades files rather than gets rid of them.
def deux_chemix_cinepark(a, b, c, d, e, f)
  new_file1 = a
  new_file2 = b
  
  old_directory1 = c
  old_directory2 = d
  
  new_directory1 = e
  new_directory2 = f
  
  wabisab(a, c, d)
  wabisab(b, e, f)
end

def is_house_deceptive?(a, b)
  "That house #{a}, is really a construct of #{b}."
end

def show_decption(a, b, c)
  deceptive_houses = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],
   
    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ]

  #probability_of_endpoint = 0.33 * 0.33 * 0.33

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  d = deceptive_houses[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  e = deceptive_houses[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  f = deceptive_houses[cur_row][cur_col][cur_arr]

  2.times do
    get_statistics(:first_deception,  d,
                   :second_deception, e,
                   :third_deception,  f)
                   
                   dynamic_reward_allocation
  end
end

# Part of dream studios
def etudie_de_yume(a, b, c, d, e, f)
  a_list = [ a.to_sym, b, 0.33 ]
  b_list = [ c.to_sym, d, 0.33 ]
  c_list = [ e.to_sym, f, 0.33 ]
  
  a_analyses = [ is_house_deceptive?(a_list[0], deux_chemix_ascenseur("packages", "elevator entrance", "elevator cul de sac")), a_list[1] ]
  b_analyses = [ is_house_deceptive?(b_list[0], deux_chemix_ascenseur("packages", "elevator entrance", "elevator cul de sac")), b_list[1] ]
  c_analyses = [ is_house_deceptive?(c_list[0], deux_chemix_ascenseur("packages", "elevator entrance", "elevator cul de sac")), c_list[1] ]

  analyses_sessions = [[
    [[a_analyses, a_analyses, a_analyses],
     [a_analyses, a_analyses, b_analyses],
     [a_analyses, a_analyses, c_analyses]],

    [[b_analyses, b_analyses, a_analyses],
     [b_analyses, b_analyses, b_analyses],
     [b_analyses, b_analyses, c_analyses]],

    [[c_analyses, c_analyses, a_analyses],
     [c_analyses, c_analyses, b_analyses],
     [c_analyses, c_analyses, c_analyses]],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  2.times do
    get_statistics(a_list[0], "[ #{a_list[1]}, #{a_list[2]} ]",
                   b_list[0], "[ #{b_list[1]}, #{b_list[2]} ]",
                   c_list[0], "[ #{c_list[1]}, #{c_list[2]} ]")
                   
                   dynamic_reward_allocation
  end
end

# éteindre_swede
def étenederesurede # Turn off the television
  is_house_deceptive?("My room", deux_chemix_ascenseur("bed", "television"))
end

def create_rule
  a = "le bati"
  b = "le sofa"
  c = "le chaise"

  d = "escelator de gauche"
  e = "escelator de centre"
  f = "escelator de droite"

  entrances = [
    [[a, a, a], [a, a, b], [a, a, c]],
    [[b, b, a], [b, b, b], [b, b, c]],
    [[c, c, a], [c, c, b], [c, c, c]],
  ]

  item_drops = [
    [[d, d, d], [d, d, e], [d, d, f]],
    [[e, e, d], [e, e, e], [e, e, f]],
    [[f, f, d], [f, f, e], [f, f, f]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  new_entrance = entrances[cur_row][cur_col][cur_arr]
  new_drops    = item_drops[cur_row][cur_col][cur_arr]

  is_house_deceptive?("Mein maisette", deux_chemix_ascenseur("packages", new_entrance, new_drops))
end

def collapse_ruleset
  indices = create_rule.split(" ")
  
  indices.reverse.join(" ")
end

a = collapse_ruleset
b = create_rule
c = collapse_ruleset

2.times do
  get_statistics(:situation_one, a,
                 :situation_two, b,
                 :situation_tre, c)
                 
                 dynamic_reward_allocation
                 dynamic_reward_allocation
                 #dynamic_reward_allocation
end
