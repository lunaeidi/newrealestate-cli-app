# current limitations- if you don't put "one" or "all", it will just end.
require 'pry'
class Realestate::CLIOld
    def greeting
      puts "Hello! Welcome to the RealEstate App!"
    end
    def call
    puts "Enter the name of the state for the Average Listing Price per county."
    state= gets.strip.capitalize
    if state.include?(" ")
      state= state.gsub(" ","_")
    end
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
      county= gets.strip.capitalize
      Realestate::RealEstate.by_county(state,county)
      puts "Please enter 'restart' to make another search, or enter 'exit'"
      input4= gets.strip
      if input4== 'restart'
        call
      elsif input4== 'exit'
      end
    end

  end
end
