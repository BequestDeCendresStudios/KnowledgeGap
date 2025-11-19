$TOURGUIDE_KNOWLEDGE = [
  [:traps, :loot, :monsters],
], [
  [:mine_traps, :mine_loot, :mine_monsters],
]

module Exploration
  class TourGuide
    def self.assign_stats
      $guided_tours     = 0
      $victimized_staff = 0
    end
    
    def self.scenario
      require "NeoPathfinding"
      
      quandquoicomme("At 18:00 P.M.",                     "At 19:00 P.M.",                     "At 20:00 P.M.",                                  "At 21:00 P.M.",                                  "At 22:00 P.M.",
                     "A Sea Rock",                        "A symboitic fish",                  "An aquatic scientist",                           "A haunted attraction tour guide",                "Maintanence Staff",
                     "develops sea form",                 "swims in flooded cave",             "advices swimming tour",                          "advices staff to ignore noises",                 "goes missing do to unknown reasons",
                     cette("Merumi", "vert"),             cette("poisson", "bleu"),            cette("Scientist", "educated"),                   cette("Tour De Hante", "intelligent"),            cette("personelle", "mort"),
                     maisette("poisson", "bleu"),         maisette("Merumi", "vert"),          maisette("Tour De Hante", "intelligent"),         maisette("Scientist", "educated"),                maisette("Tour De Hante", "intelligent"),
                     sinon("le animaux", "vert", "blue"), sinon("le animaux", "bleu", "vert"), sinon("le sapiennes", "educated", "intelligent"), sinon("le sapiennes", "educated", "intelligent"), sinon("le sapiennes", "mort", "intelligent"))
    end

    def self.display_gui
      system("clear")

      puts "MINESHAFF GUIDE AND UNDERGROUND LAKE SCIENCE TRIP"
      puts "GUIDED TOURS: #{$guided_tours} | VICTIMIZED STAFF: #{$victimized_staff}"
    end

    def self.chat_tourguide
      require "NeoPathfinding"

      lake_tour = $TOURGUIDe_KNOWLEDGE[0][0], $TOURGUIDe_KNOWLEDGE[0][1], $TOURGUIDe_KNOWLEDGE[0][2]
      mine_tour = $TOURGUIDe_KNOWLEDGE[1][0], $TOURGUIDe_KNOWLEDGE[1][1], $TOURGUIDe_KNOWLEDGE[1][2]

      2.times do
        get_statistics(lake_tour[0], "Remember to only explore the underground lake when the water is extremely shallow.",
                       lake_tour[1], "You will sometimes find things like rocks having firm bubbles that indicate emergant intelligent sea rocks.",
                       lake_tour[2], "Beware of rogue merman that explore this space, who sometimes present themselves as human staff.")

                       dynamic_reward_allocation
      end

      2.times do
        get_statistics(mine_tour[0], "Technically this cave should not still be open, do to safety concerns dating back years.",
                       mine_tour[1], "Remember not to get to close to the animatronics, as they're known to have bugs.",
                       mine_tour[2], "If you here random voices pretended to be people that rode the ride previously, just ignore them.")

                       dynamic_reward_allocation
      end

      $guided_tours = $guided_tours + 1
    end
    
    def self.feed_tourguide_staff # This is a cutscene showing tour guide eat some staff.
      $victimed_staff = $victimized_staff + 1

      puts "The tour guide ate one the maitanence crew."
    end
    
    def self.archive_tour_information # Archive three major archive files.
      require "NeoPathfinding"

      # Establish archival information from common knowledge base.
      lake_tour = $TOURGUIDe_KNOWLEDGE[0][0], $TOURGUIDe_KNOWLEDGE[0][1], $TOURGUIDe_KNOWLEDGE[0][2]
      mine_tour = $TOURGUIDe_KNOWLEDGE[1][0], $TOURGUIDe_KNOWLEDGE[1][1], $TOURGUIDe_KNOWLEDGE[1][2]

      # Draw information from lake and mine tour information
      lake_trivia_one  = lake_tour[0], "Remember to only explore the underground lake when the water is extremely shallow.",
      lake_trivia_two  = lake_tour[1], "You will sometimes find things like rocks having firm bubbles that indicate emergant intelligent sea rocks.",
      lake_trivia_tre  = lake_tour[2], "Beware of rogue merman that explore this space, who sometimes present themselves as human staff.")

      mine_trivia_one = mine_tour[0], "Technically this cave should not still be open, do to safety concerns dating back years.",
      mine_trivia_two = mine_tour[1], "Remember not to get to close to the animatronics, as they're known to have bugs.",
      mine_trivia_tre = mine_tour[2], "If you here random voices pretended to be people that rode the ride previously, just ignore them.")

      # Make directories before assigning to them.
      #system("mkdir previous_tours")
      #system("cd previous_tours; mkdir lake_expedition; mkdir mine_expedition")
      #system("cd")

      ouvert("previous_tours/lake_expedition/lake_expedition_fact1.txt", "#{lake_trivia_one[0]} #{lake_trivia_one[1]}",
             "previous_tours/lake_expedition/lake_expedition_fact2.txt", "#{lake_trivia_two[0]} #{lake_trivia_two[1]}",
             "previous_tours/lake_expedition/lake_expedition_fact3.txt", "#{lake_trivia_tre[0]} #{lake_trivia_tre[1]}")

      ouvert("previous_tours/mine_expedition/mine_expedition_fact1.txt", "#{mine_trivia_one[0]} #{mine_trivia_one[1]}",
             "previous_tours/mine_expedition/mine_expedition_fact2.txt", "#{mine_trivia_two[0]} #{mine_trivia_two[1]}",
             "previous_tours/mine_expedition/mine_expedition_fact3.txt", "#{mine_trivia_tre[0]} #{mine_trivia_tre[1]}")

      ouvert("previous_tours/lake_expedition/fish/lake_expedition_fact1.txt", "It's theorized that the symbotic fish may be the scientists pet.",
             "previous_tours/lake_expedition/fish/lake_expedition_fact2.txt", "The sea rocks have a particular feature of having firm internal foam.",
             "previous_tours/lake_expedition/fish/lake_expedition_fact3.txt", "To keep the fish alive it is advised to flood the cave periodically.")
    end
  end

  class UndergroundLake
    def self.explore_lake
      require "NeoPathfinding"
      
      gabbler = Gabbler.new
      
      lake_specifics_1 = File.read("previous_tours/lake_expedition/lake_expedition_fact1.txt")
      lake_specifics_2 = File.read("previous_tours/lake_expedition/lake_expedition_fact2.txt")
      lake_specifics_3 = File.read("previous_tours/lake_expedition/lake_expedition_fact3.txt")
      
      gabbler.learn(lake_specifics_1)
      gabbler.learn(lake_specifics_2)
      gabbler.learn(lake_specifics_3)
      
      10.times { puts gabbler.sentence }
      
      gabbler.unlearn
    end
    
    def self.nature_fish
      require "NeoPathfinding"
      
      gabbler = Gabbler.new
      
      fish_specifics_1 = File.read("previous_tours/lake_expedition/fish/fish_fact1.txt")
      fish_specifics_2 = File.read("previous_tours/lake_expedition/fish/fish_fact2.txt")
      fish_specifics_3 = File.read("previous_tours/lake_expedition/fish/fish_fact3.txt")
      
      gabbler.learn(fish_specifics_1)
      gabbler.learn(fish_specifics_2)
      gabbler.learn(fish_specifics_3)
      
      10.times { puts gabbler.sentence }
      
      gabbler.unlearn
    end
  end
  
  # Underground lake as regions beyond perimeter security.
  class Mineshaff
    def self.explore_mineshaff # Think of this as a random search algorithm shortest path to mineshaff exit.
      require "NeoPathfinding"

      require "NeoPathfinding"
      
      gabbler = Gabbler.new
      
      mineshaff_specifics_1 = File.read("previous_tours/mine_expedition/mine_expedition_fact1.txt")
      mineshaff_specifics_2 = File.read("previous_tours/mine_expedition/mine_expedition_fact2.txt")
      mineshaff_specifics_3 = File.read("previous_tours/mine_expedition/mine_expedition_fact3.txt")
      
      gabbler.learn(mineshaff_specifics_1)
      gabbler.learn(mineshaff_specifics_2)
      gabbler.learn(mineshaff_specifics_3)
      
      10.times { puts gabbler.sentence }
      
      gabbler.unlearn
    end
        
    def self.close_mineshaff # Archive learned information, and lock mineshaff till reopening.
      puts "Ending simulation..."
    
      abort
    end
  end
end
