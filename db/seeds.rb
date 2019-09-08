# parent_destroy.all
# place_destroy.all

joe = Parents.new(name: "Joe", preference: "outdoor_activities", budget: 0)
nancy = Parents.new(name: "Nancy", preference: "creative_activities", budget: 20)
sally = Parents.new(name: "Sally", preference: "literature_activities", budget: 0)
joe = Parents.new(name: "Joe", preference: "film_activities", budget: 0)

park = Places.new(name: "park", type_of_activity: "outdoor_activities", cost: 0)
library = Places.new(name: "library", type_of_activity: "literature_activities", cost: 0)
art_space = Places.new(name: "art_space", type_of_activity: "creative_activities", cost: 20)
cinema = Places.new(name: "cinema", type_of_activity: "film_activities", cost: 10)

puts "it has been seeded"
