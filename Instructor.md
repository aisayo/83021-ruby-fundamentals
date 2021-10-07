# Ruby Fundamentals

- The goal for this lecture is to lay down Ruby foundations

Discuss that the goal of the lecture will be to build a command line interface which is an application that is ran through the terminal.

Goals of the CLI will be to give users the ability to create and track donations, while also seeing a list of available organizations.

Go over folders and files and how the application's ability to run as a whole works.

Define init, and discuss how this is the entry way into the application but will also contain the order in which the methods are ran.

What are methods? - Small programs that execute some type of logic. - In ruby, methods begin with the keyword `def` and close with `end` - We are going to add all our methods in sequential order inside of the `init` method to ensure it all runs in order and for organization purposes. - Last line of a ruby method is the return value. Do not need to use `return` keyword. If `nil` is returned in terminal then method has no return value. Mostly happens if last line is a puts/print statement.

```
    def init
        "hello world"
    end
=> return value will be 'hello world'
```

```
    def init
        puts "hello world"
    end
=> this will return nil
```

Create a `greeting` method that will introduce user and ask for name. Go over, puts vs print. Variable initialization in Ruby and the gets method. 

```
def greeting 
  puts "Welcome to the Donations Tracker app"
  puts "Please enter your name:"
  name = gets.strip 
  puts "awesome, #{name.capitalize}, what would you like to do?"
end 
```

Next we are going to create 2 methods, 1 will print a list out for the the user to select from while the other will be responsible for handling the user selection. The reason why these are in two different methods is to keep our code organized and separated by responsibility while also maintining the opportunity to reuse particular components of the application. 

```
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
```

Go over difference between `while` and `if/else` statements here and why we use both. 

If a user selects to create a new donation:

```
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
```