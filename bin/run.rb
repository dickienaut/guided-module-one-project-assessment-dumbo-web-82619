require_relative '../config/environment'
# require "rake"

puts "Welcome to the Family Fun Finder!  \u{1F973}  Your 'Go To' app for family fun! \u{1F9DA}\u{200D}\u{2640}\u{FE0F}"

cli = Interface.new   #creates a new object instance of Interface class. 
parent_object = cli.welcome  #calls the welcome method on the object created
    
while parent_object == nil     #if value assigned to parent value in welcome is nil, returns to welcome
    parent_object = cli.welcome 
end

# cli.parent = parent_object
# binding.pry
#puts parent_object
# sleep 3
# cli.main_menu
# puts parent_object

# binding.pry 

0 
