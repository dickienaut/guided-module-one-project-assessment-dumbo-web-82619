# parent_destroy.all
# place_destroy.all

joe = Parent.new(name: "Joe", preference: "outdoor_activities", budget: 0)
nancy = Parent.new(name: "Nancy", preference: "creative_activities", budget: 20)
sally = Parent.new(name: "Sally", preference: "literature_activities", budget: 0)
joe = Parent.new(name: "Joe", preference: "film_activities", budget: 0)

park = Place.new(name: "park", type_of_activity: "outdoor_activities", cost: 0)
library = Place.new(name: "library", type_of_activity: "literature_activities", cost: 0)
art_space = Place.new(name: "art_space", type_of_activity: "creative_activities", cost: 20)
cinema = Place.new(name: "cinema", type_of_activity: "film_activities", cost: 10)

puts "it has been seeded"
