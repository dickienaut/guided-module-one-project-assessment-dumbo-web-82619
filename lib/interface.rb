class Interface
    attr_reader :activity
    attr_accessor :parent, :prompt    
    
    def initialize()
        @prompt = TTY::Prompt.new 
    end

    def welcome 
        system "clear"
        puts " \u{1F973} Welcome to the Family Fun Finder!!\u{1F9DA}\u{200D}\u{2640}\u{FE0F}" 

        choice = self.prompt.select("Are you a new Parent or returning Parent??") do |menu|
            menu.choice "New Parent"
            menu.choice "Returning Parent"
        end
        case choice
        when "New Parent"
            name = self.prompt.ask("What is your name?")
            preference = self.prompt.ask("What is your activity preference for today (for example: outdoor_activities, physical_activities, creative_activities?")
            budget = self.prompt.ask("What is your budget for family fun today? (for example: 10,20,100)?")
            Parent.create(name: name, preference: preference, budget: budget)
           
        when "Returning Parent"
            name = self.prompt.ask("Welcome Back! What is your name?")
            puts parent.find_by(name: name).name
        end

        def main_menu
            system "clear"
            choice = self.prompt.select("Welcome! What would you like to do?") do |menu|
                menu.choice "View Fun Activites"
                menu.choice "Exit" 
            end
        case choice
        when "View Fun Activities"
            activities = self.parent.reviews.map do |review| 
              review.place
            end
            puts activities
            sleep 5
            self.main_menu

        when "Exit"
            puts "Dont forget to Have Fun!"
        end
    end

    end

end
