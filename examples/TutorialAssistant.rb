module UncertaintyBase
  class DeceptionGraph
    def self.represent_coast
      require "NeoPathfinding"
      require_relative "Maisettequery/Maisettelog.rb"
    
      a = :coastal_monsters, is_house_deceptive?("eastern coast", deux_chemix_ascenseur("homard de cochon", "the sand",       "the sea")), "You need retrieve the crap before entering town."
      b = :coastal_traps,    is_house_deceptive?("eastern coast", deux_chemix_ascenseur("bac d'sable",      "the sand",   "the village")), "Watch out for sand traps: 'bac d'sable'."
      c = :coastal_loot,     is_house_deceptive?("eastern coast", deux_chemix_ascenseur("butin",            "the sand", "the shipwreck")), "You can find treasure in the shipwrecks: 'Des Butines'"
    
      general_knowledge = [
        [[a[0], a[0], a[0]], [a[0], a[0], b[0]], [a[0], a[0], c[0]]],
        [[b[0], b[0], a[0]], [b[0], b[0], b[0]], [b[0], b[0], c[0]]],
        [[c[0], c[0], a[0]], [c[0], c[0], b[0]], [c[0], c[0], c[0]]],
      ], [
        [[a[1], a[1], a[1]], [a[1], a[1], b[1]], [a[1], a[1], c[1]]],
        [[b[1], b[1], a[1]], [b[1], b[1], b[1]], [b[1], b[1], c[1]]],
        [[c[1], c[1], a[1]], [c[1], c[1], b[1]], [c[1], c[1], c[1]]],
      ], [
        [[a[2], a[2], a[2]], [a[2], a[2], b[2]], [a[2], a[2], c[2]]],
        [[b[2], b[2], a[2]], [b[2], b[2], b[2]], [b[2], b[2], c[2]]],
        [[c[2], c[2], a[2]], [c[2], c[2], b[2]], [c[2], c[2], c[2]]],
      ]
      
      symbols   = general_knowledge[0]
      reasoning = general_knowledge[1]
      tips      = general_knowledge[2]
      
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      current_symbol    = symbols[cur_row][cur_col][cur_arr]
      current_reasoning = reasoning[cur_row][cur_col][cur_arr]
      current_tip       = tips[cur_row][cur_col][cur_arr]
      
      puts "[ #{current_symbol} ][ #{current_reasoning} ][ #{current_tip} ]"
      
      2.times do
        get_statistics(:relevant_symbol,       current_symbol,
                       :relevant_reasoning, current_reasoning,
                       :relevant_tip,             current_tip)
                       
                       dynamic_reward_allocation
                       dynamic_reward_allocation
      end
    end
  end
  
  class GraphTwo
    def self.represent_village
      require "NeoPathfinding"
      require_relative "Maisettequery/Maisettelog.rb"
      
      a = :village_monsters, is_house_deceptive?("'Le Vlla De Les Tigres'",  deux_chemix_ascenseur("'le borreau'",       "the village", "the cave")),
      b = :village_traps,    is_house_deceptive?("'Les Escaliers Terrible'", deux_chemix_ascenseur("'le guillotine'",    "the village", "the cave")),
      c = :village_loot,     is_house_deceptive?("'Le Mur Du Sangui'",       deux_chemix_ascenseur("'le poutrine noir'", "the village", "the cave")),
      
      general_knowledge = [
        [[a[0], a[0], a[0]], [a[0], a[0], b[0]], [a[0], a[0], c[0]]],
        [[b[0], b[0], a[0]], [b[0], b[0], b[0]], [b[0], b[0], c[0]]],
        [[c[0], c[0], a[0]], [c[0], c[0], b[0]], [c[0], c[0], c[0]]],
      ], [
        [[a[1], a[1], a[1]], [a[1], a[1], b[1]], [a[1], a[1], c[1]]],
        [[b[1], b[1], a[1]], [b[1], b[1], b[1]], [b[1], b[1], c[1]]],
        [[c[1], c[1], a[1]], [c[1], c[1], b[1]], [c[1], c[1], c[1]]],
      ], [
        [[a[2], a[2], a[2]], [a[2], a[2], b[2]], [a[2], a[2], c[2]]],
        [[b[2], b[2], a[2]], [b[2], b[2], b[2]], [b[2], b[2], c[2]]],
        [[c[2], c[2], a[2]], [c[2], c[2], b[2]], [c[2], c[2], c[2]]],
      ]
      
      symbols   = general_knowledge[0]
      reasoning = general_knowledge[1]
      
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_symbol    = symbols[cur_row][cur_col][cur_arr]
      current_reasoning = reasoning[cur_row][cur_col][cur_arr]
      current_tip       = tips[cur_row][cur_col][cur_arr]

      puts "[ #{current_symbol} ][ #{current_reasoning} ][ #{current_tip} ]"

      2.times do
        get_statistics(:relevant_symbol,       current_symbol,
                       :relevant_reasoning, current_reasoning,
                       :relevant_tip,             current_tip)
                       
                       dynamic_reward_allocation
                       dynamic_reward_allocation
      end
    end
  end
  
  class GraphTre
    def self.represent_cavern
      require "NeoPathfinding"
      require_relative "Maisettequery/Maisettelog.rb"
      
      a = :cavern_monsters, is_house_deceptive?("'Le Cavern De Ours'", deux_chemix_ascenseur("'Ursinehomme'",           "the cave", "the ancient temple")),
      b = :cavern_traps,    is_house_deceptive?("'Tombe De Pointe'",   deux_chemix_ascenseur("'Usineepiros'",           "the sand",            "the sea")),
      c = :cavern_loot,     is_house_deceptive?("'Le Temple Ancien'",  deux_chemix_ascenseur("'Detecteur De Cavernes'", "the sand",            "the sea")),

      general_knowledge = [
        [[a[0], a[0], a[0]], [a[0], a[0], b[0]], [a[0], a[0], c[0]]],
        [[b[0], b[0], a[0]], [b[0], b[0], b[0]], [b[0], b[0], c[0]]],
        [[c[0], c[0], a[0]], [c[0], c[0], b[0]], [c[0], c[0], c[0]]],
      ], [
        [[a[1], a[1], a[1]], [a[1], a[1], b[1]], [a[1], a[1], c[1]]],
        [[b[1], b[1], a[1]], [b[1], b[1], b[1]], [b[1], b[1], c[1]]],
        [[c[1], c[1], a[1]], [c[1], c[1], b[1]], [c[1], c[1], c[1]]],
      ], [
        [[a[2], a[2], a[2]], [a[2], a[2], b[2]], [a[2], a[2], c[2]]],
        [[b[2], b[2], a[2]], [b[2], b[2], b[2]], [b[2], b[2], c[2]]],
        [[c[2], c[2], a[2]], [c[2], c[2], b[2]], [c[2], c[2], c[2]]],
      ]

      symbols   = general_knowledge[0]
      reasoning = general_knowledge[1]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_symbol    = symbols[cur_row][cur_col][cur_arr]
      current_reasoning = reasoning[cur_row][cur_col][cur_arr]
      current_tip       = tips[cur_row][cur_col][cur_arr]

      puts "[ #{current_symbol} ][ #{current_reasoning} ][ #{current_tip} ]"
      
      2.times do
        get_statistics(:relevant_symbol,       current_symbol,
                       :relevant_reasoning, current_reasoning,
                       :relevant_tip,             current_tip)
                       
                       dynamic_reward_allocation
                       dynamic_reward_allocation
      end
    end
  end
end
