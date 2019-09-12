class Review < ActiveRecord::Base
     # attr_accessor :review, :emoticon, :parent_id, :place_id, :budget
     belongs_to :place
     belongs_to :parent
     

     def self.tty_prompt
          TTY::Prompt.new
     end


     def self.review_update
          review_updater = Review.all.find_by(parent: $parent.id)
          system "clear"
          puts "Please enter a NEW review."
          review_updater.update(review:gets.chomp)
          puts "Your review has been Updated!"
         
     end

     def self.review_delete
          review_deleter = Review.all.find_by(parent: $parent.id)
          system "clear"
          confirm = TTY::Prompt.new.select("Are you sure you want to delete your review?", ["Yes", "No"])
        if confirm == "Yes"
            review_deleter.destroy
            puts "\nThat Review is Gone for Good! :) \n"
        else
          main_menu
        end

     end

end

