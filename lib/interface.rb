class Interface
    attr_reader :activity
    attr_accessor :parent, :prompt, :place    
    
    
    def initialize()
        @prompt = TTY::Prompt.new 
        @parent = parent
       
    end

        def welcome 
            system "clear"
            puts " \u{1F9DA}___****** Welcome to the Family Fun Finder!!********___\u{1F9DA}" 
            # Welcome_art.pic_one
                choice = self.prompt.select("Are you a new Parent or returning Parent??") do |menu|
                    menu.choice "New Parent"
                    menu.choice "Returning Parent"
                end
                case choice
                when "New Parent"
                    Parent.new_parent   
                when "Returning Parent"
                    Parent.returning_parent
               
                end
               
            main_menu
        end

        def main_menu
            choice = TTY::Prompt.new.select("Welcome! What would you like to do?") do |menu|
                menu.choice "View Fun Activities"
                menu.choice "View My Review"
                menu.choice "Write a Review of a Fun Place"
                menu.choice "Update an Existing Review"
                menu.choice "Delete an Existing Review"
                menu.choice "Exit" 
            end    
        
            case choice
            when "View Fun Activities"
                Parent.view_fun_activities
            when "View My Review"
                Parent.view_my_review
            when "Write a Review of a Fun Place"
                Parent.new_review
            when "Update an Existing Review"
                Review.review_update
            when "Delete an Existing Review"
                Review.review_delete    
            when "Exit"
                puts "Dont forget to Have Fun!"
                exit
            end
        main_menu
        end
    
end   
