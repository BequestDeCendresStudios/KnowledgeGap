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

def sabofensu(a)
  "Moi ne avoir un avis de #{a}"
end

def analyze_sabofensu(a, b, c, d, e, f, g, h, i)
  2.times do
    get_statistics(:first_knowledge_gap,                                                                "Cette est un sabofensu de le moi avec #{a}, #{b}, et #{c}.",
                   :second_knowledge_gap,                                                          "Mais cette est un sabofensu de le moi avec #{d}, #{e}, et #{f}.",
                   :third_knowledge_gap,  "Sinon c'est ne un sabofensu de le moi non avec #{a}, #{b}, et #{c} ou #{d}, #{e}, et #{f}, mais avec #{g}, #{h}, a #{i}.")
                 
                   dynamic_reward_allocation         
  end
end

def deux_chemix_ascenseur(a, b, c)
  "an elevator that takes #{a}, from #{b} to #{c} and back to #{b}."
end

def is_house_deceptive?(a, b)
  "That house #{a}, is really a construct of #{b}."
end

analyze_sabofensu("pomme",     "banane",         "citron",
                  "viande",     "beouf",         "poulet",
                  "carrot", "aubergine", "pomme de terre")
                  
analyze_sabofensu(is_house_deceptive?("my house",         deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("friends house",    deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("sisters house",    deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("bullys house",     deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("teachers house",   deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("firemans house",   deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("simpsons house",   deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("dragons house",    deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")),
                  is_house_deceptive?("hamburgers house", deux_chemix_ascenseur("candles", "escelator entrance", "second floor item drop")))
