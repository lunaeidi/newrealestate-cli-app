#CLI Controller
#require_relative "./realestate.rb" ??
class Realestate::CLI
    def call
    puts "Hello! Welcome to the RealEstate App!"
    puts "Enter the name of the state for the Average Listing Price per county."
    input1= gets.strip #these two lines combined?
    state= input1.capitalize!

    # while input != "exit"
    # end
    puts "Would you like to see the listing prices for all counties, or for one county? Type 'all' or 'one'"
    input2= gets.strip
    if input2== "all"
      Realestate::RealEstate.all_counties(state) #are my methods class or instance methods?

    elsif input2== "one"
      input3= gets.strip #these two lines can be comibened ?
      county= input3.capitalize!
      Realestate::RealEstate.by_county(state,county)
      puts "Please enter another county or enter 'restart' to check a different state."
      input4= gets.strip
      if input4== 'restart'
        call
      else
        newcounty= input4.capitalize! #check if correct capitalization
        Realestate::RealEstate.by_county(state,newcouty)
      #else
      end
    end

  end
end
