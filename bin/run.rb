require_relative '../config/environment'
# require "rake"

puts "Welcome to the Family Fun Finder!  \u{1F973}  Your 'Go To' app for family fun! \u{1F9DA}\u{200D}\u{2640}\u{FE0F}"

cli = Interface.new
parent_object = cli.welcome
    
while user_object == nil 
    user_object = cli.welcome 
end

cli.parent = parent_object

puts parent_object

binding.pry 

0 
