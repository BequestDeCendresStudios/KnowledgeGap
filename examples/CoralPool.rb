require_relative "Maisettequery/Maisettequery.rb"
require_relative "Maisettequery/Maisettelog.rb"
require_relative "Maisettequery/Maisettevague.rb"

module CoralPool
  class IsolatedCoral
    def self.knowledge_gaps
      a = [ "my house",         "fruit",             "escelator entrance", "second floor item drop" ]
      b = [ "friends house",    "vegetables",        "escelator entrance", "second floor item drop" ]
      c = [ "sisters house",    "shoes",             "escelator entrance", "second floor item drop" ]
      d = [ "bullys house",     "meat",              "escelator entrance", "second floor item drop" ]
      e = [ "teachers house",   "books",             "escelator entrance", "second floor item drop" ]
      f = [ "firemans house",   "hoses",             "escelator entrance", "second floor item drop" ]
      g = [ "simpsons house",   "jokebooks",         "escelator entrance", "second floor item drop" ]
      h = [ "dragons house",    "iron statues",      "escelator entrance", "second floor item drop" ]
      i = [ "hamburgers house", "condiment shelves", "escelator entrance", "second floor item drop" ]

      analyze_sabofensu(is_house_deceptive?(a[0][0], deux_chemix_ascenseur(a[0][1], a[0][2], a[0][3])),
                        is_house_deceptive?(b[0][0], deux_chemix_ascenseur(b[0][1], b[0][2], b[0][3])),
                        is_house_deceptive?(c[0][0], deux_chemix_ascenseur(c[0][1], c[0][2], c[0][3])),
                        is_house_deceptive?(d[0][0], deux_chemix_ascenseur(d[0][1], d[0][2], d[0][3])),
                        is_house_deceptive?(e[0][0], deux_chemix_ascenseur(e[0][1], e[0][2], e[0][3])),
                        is_house_deceptive?(f[0][0], deux_chemix_ascenseur(f[0][1], f[0][2], f[0][3])),
                        is_house_deceptive?(g[0][0], deux_chemix_ascenseur(g[0][1], g[0][2], g[0][3])),
                        is_house_deceptive?(h[0][0], deux_chemix_ascenseur(h[0][1], h[0][2], h[0][3])),
                        is_house_deceptive?(i[0][0], deux_chemix_ascenseur(i[0][1], i[0][2], i[0][3])))
    end
    
    # Confirmed dreams
    def self.dream_studies
      a = [ "my house",                  "This is my house." ]
      b = [ "friends house",    "This is my friend's house." ]
      c = [ "sisters house",     "This is my sisters house." ]
      d = [ "bullys house",       "This is my bullys house." ]
      e = [ "teachers house",  "This is my teacher's house." ]
      f = [ "firemans house",   "This is a fireman's house." ]    

      etudie_de_yume(a[0][0], a[0][1],
                     b[0][0], b[0][1],
                     c[0][0], c[0][1])

      etudie_de_yume(d[0][0], d[0][1],
                     e[0][0], e[0][1],
                     f[0][0], f[0][1])
    end
    
    # Isolated "dream" studies
    def self.unknown_dreams
      analyze_sabofensu(etudie_de_yume("my_house",               "This is my house.",        "friends_house",        "This is my friends house.", "sisters_house",               "This is my sisters house."),
                        etudie_de_yume("my_school",             "This is my school.",       "friends_school",       "This is my friends school.", "sisters_school",             "This is my sisters school."),
                        etudie_de_yume("my_church",             "This is my church.",       "friends_church",       "This is my friends church.", "sisters_church",             "This is my sisters church."),
                        etudie_de_yume("my_grocery",           "This is my grocery.",      "friends_grocery",      "This is my friends grocery.", "sisters_grocery",           "This is my sisters grocery."),
                        etudie_de_yume("my_garage",            " This is my garage.",       "friends_garage",       "This is my friends garage.", "sisters_garage",             "This is my sisters garage."),
                        etudie_de_yume("my_neighborhood", "This is my neighborhood.", "friends_neighborhood", "This is my friends neighborhood.", "sisters_neighborhood", "This is my sisters neighborhood."))
    end
  end
end
