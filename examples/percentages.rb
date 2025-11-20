trivia_sets = [
  [ :trivia_one,
    "That house 'Mein maisette', is really a construct of an elevator that takes packages, from 'le bati' to 'le escelator de gauche' and back to 'le bati'.",
    0.017290728 ],

  [ :trivia_tre,
    "That house 'Mein maisette', is really a construct of an elevator that takes packages, from 'le chaise' to 'le escelator de droite' and back to 'le chaise'.",
    0.050625 ],
]

unknown_information    = 100 * ( 1 - ( trivia_sets[0][2] + trivia_sets[1][2] ) )
known_information      = 100 * ( trivia_sets[0][2] + trivia_sets[1][2] )
unknowns_by_percentage = unknown_information / 100
knowns_by_percentage   = known_information / 100

puts "#{trivia_sets[0][1]} [ Of these #{trivia_sets[0][0]} counts for #{trivia_sets[0][2]} of information. ]"
puts " "
puts "#{trivia_sets[1][1]} [ Of these #{trivia_sets[1][0]} counts for #{trivia_sets[1][2]} of information. ]"

puts " "
puts "Unknowns: #{unknowns_by_percentage}."
puts "Everything else..."
