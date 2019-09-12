Parent.destroy_all
Place.destroy_all
Review.destroy_all

joe = Parent.create(name: "Joe", preference: "outdoor_activities", budget: 0)
nancy = Parent.create(name: "Nancy", preference: "creative_activities", budget: 20)
sally = Parent.create(name: "Sally", preference: "literature_activities", budget: 0)
jeff = Parent.create(name: "Jeff", preference: "film_activities", budget: 0)
jeremy = Parent.create(name: "Jeremy", preference: "outdoor_activities", budget: 30)

park = Place.create(name: "park", type_of_activity: "outdoor_activities", cost: 0)
library = Place.create(name: "library", type_of_activity: "literature_activities", cost: 0)
art_space = Place.create(name: "art_space", type_of_activity: "creative_activities", cost: 20)
cinema = Place.create(name: "cinema", type_of_activity: "film_activities", cost: 10)
park2 = Place.create(name: "Faraway Park", type_of_activity: "outdoor_activities", cost: 0)

Review.create(parent: joe, place: park, budget: 20, review: "It was Awesome!", emoticon: ":0)")
Review.create(parent: sally, place: library, budget: 20, review: "It was ok.", emoticon: ":-|")
Review.create(parent: jeff, place: cinema, budget: 10, review: "It was Great.", emoticon: ":-)")
Review.create(parent: nancy, place: art_space, budget: 20, review: "We painted a masterpiece", emoticon: ":-O")


puts "it has been seeded"
