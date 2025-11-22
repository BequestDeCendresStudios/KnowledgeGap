TRIVIA = [
  [ :poupee_trois,
    "Moi ne avoir un avis de Est le poupee avoir un seance en cabine victorienne? Cette poupee es victorienne. Mais cette poupee es ne barbie. Sinon poupee es victorienne ou barbie.",
    0.7589894400000001*0.7589894400000001 ],

  [ :poupee_deux,
    "Moi ne avoir un avis de Est le poupee avoir un seance en cabine victorienne? Cette poupee es victorienne. Mais cette poupee es ne barbie. Sinon poupee es victorienne ou barbie.",
    0.5018678018914549 ],
], [
  [ :name_de_plume_une,
    "Moi ne avoir un avis de Checking if that Dolly's name might be fake: Albert. This name seems to be not legitimate.",
    0.5018678018914549*0.5018678018914549 ],

  [ :name_de_plume_deux,
    "Moi ne avoir un avis de Checking if that Dolly's name might be fake: Albert. This name seems to be not legitimate.",
    0.8712000000000001 ],
]

# Third dolls name might not be legitimately Albert.
2.times do
  get_statistics(TRIVIA[0][0][0], TRIVIA[0][0][1],
                 TRIVIA[0][1][0], TRIVIA[0][1][1],
                 TRIVIA[1][1][0], TRIVIA[1][1][1])
  
                 dynamic_reward_allocation
end

# Second dolls name seems to be legitimately Albert.
