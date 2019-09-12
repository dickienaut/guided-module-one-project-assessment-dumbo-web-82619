class Parent < ActiveRecord::Base
    has_many :reviews
    has_many :places, through: :reviews

    def self.tty_prompt
        TTY::Prompt.new
    end

    def self.view_my_review
        find_review = Review.all.find_by(parent_id: $parent.id)
        system "clear"
        puts "#{find_review.review}"
    end

    def self.new_review
        parent = $parent
        place_id = self.tty_prompt.ask("Enter an ID # for the Place you are you reviewing?(6=park, 7=library, 8=art_space, 9=cinema)" ).to_i
        place = Place.find(place_id)
        system "clear"
        review = self.tty_prompt.ask("Input your review content here.")
        emoticon = self.tty_prompt.ask("Please add an emoticon describing your experience.")
        budget = self.tty_prompt.ask("What was the cost of your activity?").to_i
        review = Review.create!(parent: parent, place: place, budget: budget, review: review, emoticon: emoticon)
        system "clear"
    end

    def self.new_parent
        system "clear"
        name = self.tty_prompt.ask("What is your name?")  #asks user name and assigns to instance variable
        preference = self.tty_prompt.select("What is your activity preference for today?", ["outdoor_activities", "physical_activities", "creative_activities", "literature_activities", "film_activities"])
        budget = self.tty_prompt.ask("What is your budget for family fun today? (for example: 10,20,100)?")  #asks user budget, assignes to instance variable
        $parent = Parent.create(name: name, preference: preference, budget: budget)   #creates a new parent instance with given parameters
    end

    def self.returning_parent
      
        name = self.tty_prompt.ask("Welcome Back! What is your name?")
        $parent = Parent.find_by(name: name)  #finds name matching given user input in database
        #allow parent to update their profile and/or edit review
        system "clear"
        self.tty_prompt.select("Would you like to update your profile name?") do |menu|
                menu.choice "yes", -> {
                    puts "Please enter new name."
                    Parent.find_by(name: name).update(name: gets.chomp)
                    system "clear"
                    puts "Name has been UPDATED."
                    }
                menu.choice "Delete Existing User Profile", -> {
                    system "clear"
                    confirm = TTY::Prompt.new.select("Are you sure you want to delete your Profile?", ["Yes", "No"])
                  if confirm == "Yes"
                    system "clear"      
                    delete_chosen_parent = Parent.all.find_by(name: name)
                    delete_chosen_parent.destroy
                    system "clear"
                    puts "Your profile has been deleted successfully."
                    exit
                  end
                }
                menu.choice "no", -> { puts "Come Back and Find some Fun Later!" 
                }
                end
        
    end

    def self.view_fun_activities
        parent = $parent
        activities = Place.all.select do |place| 
              parent.preference == place.type_of_activity
        end
        puts "Your family is going to have A BLAST at the #{activities[0].name}!!"
        sleep 5
    end
    
end