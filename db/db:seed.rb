Parent_destroy_all
Place_destroy_all

Parent.new(name: "Joe", preference: "outdoor_activities", budget: 0)
Parent.new(name: "Nancy", preference: "creative_activities", budget: 20)
Parent.new(name: "Sally", preference: "literature_activities", budget: 0)
Parent.new(name: "Joe", preference: "film_activities", budget: 0)

Place.new(name: "park", type_of_activity: "outdoor_activities", cost: 0)
Place.new(name: "library", type_of_activity: "literature_activities", cost: 0)
Place.new(name: "art_space", type_of_activity: "creative_activities", cost: 20)
Place.new(name: "cinema", type_of_activity: "film_activities", cost: 10)

puts "it has been seeded"
