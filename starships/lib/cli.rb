# global variable that stores all the starships as they are created 
STARSHIPS_ARR = [] # constant variable
# method 
def init
  puts "Welcome to the Starships App" # prints text with a line break
  puts "Tell us your name: "
  # print "init" # prints text with no line break
  # print "second line"

  # need to grab the users input and save it 
  name = gets.strip # variables 
  # binding.pry # debugging tool
  puts "Awesome, #{name.capitalize}, What would you like to do?"
  # provide a menu 
  menu
  # handle our users menu selection
end 

def menu
  puts "Enter the number of your selection, or 'exit' to leave the app"
  # provide the menu options 
  menu_option
end 

def menu_option 
  puts " 1. Create a new starship!"
  puts " 2. View all starships"
  puts " 3. Change your mind? Type 'exit' to leave the app!"
  menu_selection
end 

def menu_selection
  selection = gets.strip
  # add control flow to an application 
while selection != "exit"
  if selection == "1"
    # have a method that lets our user create a new starship
    starship = create_starship
    STARSHIPS << starship # adding new starship the array using the shovel method
    # print details of new starship details
    starship_details(starship)
  elsif selection == "2"
    starship_list
  else 
    puts "I'm not sure what you mean. Try again:"
  end 
  menu_option
  selection = gets.strip
end 
end 

def create_starship
  puts "Name of starship, get creative!"
  name = gets.strip 
  puts "Whats the model?"
  model = gets.strip 

  # hash equivalent to a JS object
  starship = {
    name: name,
    model: model
  }
end 


def starship_details(starship)
  puts ""
  puts "Name: #{starship[:name]}"
  puts "Model: #{starship[:model]}"
  puts ""
end 

def starship_list 
  # iterating over STARSHIPS array
  # starship is a block variable that represents each element in the array
  STARSHIPS.each do |starship|
    starship_details(starship)
  end 
end 
