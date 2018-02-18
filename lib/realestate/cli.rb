#CLI Controller
#require_relative "./realestate.rb" ??
require 'pry'
class Realestate::CLI
    def call
    puts "Hello! Welcome to the RealEstate App!"
    puts "Enter the name of the state for the Average Listing Price per county."
    state= gets.strip.capitalize #needs to be capitalized ?
    # while input != "exit"
    # end
    puts "Would you like to see the listing prices for all counties, or for one county? Type 'all' or 'one'"
    input2= gets.strip
    if input2== "all"
      Realestate::RealEstate.all_counties(state) #are my methods class or instance methods?
      puts "Enter 'restart' to go back to main menu, or enter 'exit'"
      input5= gets.strip
      if input5== 'restart'
        call
      end
    elsif input2== "one"
      puts "Enter the county name:"
      county= gets.strip.capitalize #needs to be capitalized ?
      #county= input3.capitalize!
      Realestate::RealEstate.by_county(state,county)
      puts "Please enter another county, enter 'restart' to check a different state, or enter 'exit'"
      input4= gets.strip
      if input4== 'restart'
        call
      elsif input4== 'exit'
      else
        newcounty= input4 #check if correct capitalization?
        Realestate::RealEstate.by_county(state,newcouty)
      #else
      end
    end

  end
end
