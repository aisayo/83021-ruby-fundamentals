def init 
  greeting 
  menu_list
  menu_selection
  goodbye
end 

def greeting 
  puts "Welcome to the Donations Tracker app"
  puts "Please enter your name:"
  name = gets.strip 
  puts "awesome, #{name.capitalize}, what would you like to do?"
end 

def menu_list 
  puts "Please select from the following options: "
  puts " Enter '1' to create a new donation!"
  puts " Enter '2' to see a list of the organizations accepting donations"
  puts " To see the menu options again, please enter 'menu'"
  puts " Enter 'exit' if you changed your mind and wish to leave the app"
end 

def menu_selection 
  selection = gets.strip 

  while selection != 'exit'
    if selection == '1'
      create_donation
    elsif selection == '2'
      organization_list
    elsif selection == 'menu'
      menu_list
    else 
      puts "Looks like something went wrong, please try again: "
    end 
    selection = gets.strip 
  end
end 

def create_donation
  puts "Looks like you are feeling charitable today!" 
  puts "Please enter the name of the organization you would like to donate to:"
  organization = gets.strip
  puts "How much would you like to donate?"
  amount = gets.strip 
  donation = {
    organization: organization,
    amount: amount
  }
  confirmation(donation)
  donation
end

def confirmation(donation)
  puts "Thanks a ton for your donation! Here is your confirmation:"
  puts "Amount donated: #{donation[:amount]}"
  puts "Organization: #{donation[:organization]}"
end 

def organization_list 
  puts " - American Red Cross"
  puts " - American Kidney Fund"
  puts " - Heart Center of America"
  puts " - Cancer Research Institute"
  puts " - Hope for the Warriors"
  puts " - The Alzheimer’s Association"
end 

def goodbye
  puts "We hope to see you back here soon!"
end 

