input_vector = [
  [ :trivia_one,
    "That house Mein maisette, is really a construct of an elevator that takes packages, from le chaise to escelator de droite and back to le chaise.",
    0.8712000000000001*0.8712000000000001 ],
    
  [ 0.8712000000000001*0.8712000000000001,
    :trivia_one,
    "That house Mein maisette, is really a construct of an elevator that takes packages, from le chaise to escelator de droite and back to le chaise." ],

  [ "That house Mein maisette, is really a construct of an elevator that takes packages, from le chaise to escelator de droite and back to le chaise.",
    0.8712000000000001*0.8712000000000001,
    :trivia_one ],
], [
  [ :trivia_two,
    "That house Mein maisette, is really a construct of an elevator that takes packages, from le bati to escelator de gauche and back to le bati.",
    0.871200000000000*0.8712000000000001*0.8712000000000001 ],

  [ 0.871200000000000*0.8712000000000001*0.8712000000000001,
    :trivia_two,
    "That house Mein maisette, is really a construct of an elevator that takes packages, from le bati to escelator de gauche and back to le bati." ],
    
  [ "That house Mein maisette, is really a construct of an elevator that takes packages, from le bati to escelator de gauche and back to le bati.",
    0.871200000000000*0.8712000000000001*0.8712000000000001,
    :trivia_two ],  
], [
  [ :trivia_tre,
    "That house Mein maisette, is really a construct of an elevator that takes packages, from le chaise to escelator de droite and back to le chaise.",
    0.8712000000000001*0.8712000000000001*0.8712000000000001 ],
    
  [ 0.8712000000000001*0.8712000000000001*0.8712000000000001,
    :trivia_tre,
    "That house Mein maisette, is really a construct of an elevator that takes packages, from le chaise to escelator de droite and back to le chaise." ],
    
  [ "That house Mein maisette, is really a construct of an elevator that takes packages, from le chaise to escelator de droite and back to le chaise.",
    0.8712000000000001*0.8712000000000001*0.8712000000000001,
    :trivia_tre ],
]

first_trivia  = input_vector[0][0][0], input_vector[0][0][1], input_vector[0][0][2]
second_trivia = input_vector[0][1][0], input_vector[0][1][1], input_vector[0][1][2]
third_triviva = input_vector[0][2][0], input_vector[0][2][1], input_vector[0][2][2]

tree_input1 =  first_trivia[2]
tree_input2 = second_trivia[2]
tree_input3 = third_triviva[2]

attributes = ["First Trivia"], ["Second Trivia"], ["Third Trivia"]

training = [
  [ 0.10890000000000001,    cette("mien cabine",      "entre vous") ],
  [ 0.43560000000000004, maisette("tien cabine",      "entre vous") ],
  [ 0.87120000000000010,    sinon("nien cabine", "entre", "sortie") ],
], [
  [ 0.10890000000000001,    cette("mien cabine",      "entre vous") ],
  [ 0.43560000000000004, maisette("tien cabine",      "entre vous") ],
  [ 0.87120000000000010,    sinon("nien cabine", "entre", "sortie") ],
], [
  [ 0.10890000000000001,    cette("mien cabine",      "entre vous") ],
  [ 0.43560000000000004, maisette("tien cabine",      "entre vous") ],
  [ 0.87120000000000010,    sinon("nien cabine", "entre", "sortie") ],
]

dec_tree_configurations =    DecisionTree::ID3Tree.new(attributes[0], training[0], 1, :continuous),
                             DecisionTree::ID3Tree.new(attributes[1], training[1], 1, :continuous),
                             DecisionTree::ID3Tree.new(attributes[2], training[2], 1, :continuous)

current_dectree1 = dec_tree_configurations[0]
current_dectree1.train

current_dectree2 = dec_tree_configurations[1]
current_dectree2.train

current_dectree3 = dec_tree_configurations[2]
current_dectree3.train

test1 = [tree_input1]
test2 = [tree_input2]
test3 = [tree_input3]

## Sesne I got rid of decision trees data marshalling, I have to reassign last tests.
last_first_decision  = test1[1]
last_second_decision = test2[1]
last_third_decision  = test3[1]

@decision1 = current_dectree1.predict(test1) # This being Alberts contribution
@decision2 = current_dectree2.predict(test2) # This being Andys contribution
@decision3 = current_dectree3.predict(test3) # This being Bethanys contribution

puts "#{@decision1} #{@decision2} #{@decision3}"
